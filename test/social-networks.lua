--[[
Creates a block of social networks links to promote the page or a specific link (for exemple below a video or a for a specific section).

--]]

local social_networks =''
-- if the markown front matter contains a "url" value, we retrieve it

Meta = function(metadata)
	local url=''
	if metadata.url then url = metadata.url end
	local t = pandoc.utils.stringify(metadata.title)
	local u = pandoc.utils.stringify(metadata.url)
	local link = pandoc.Link(t,u)
	local socialblock = make_social(link)
	-- metadata.socialblock = pandoc.RawInline('html',socialblock)
	metadata.socialblock = socialblock
	return metadata
end




Link = function(el)
	return make_social(el)
end



function make_social(el)
	-- local post = make_social(el)
	local content=pandoc.utils.stringify(el.content)
	local content_e = urlencode(content)
	local target = el.target
	local target_e = urlencode(target)
	-- local mysocial = '<span>finished</span>'
	local mysocial = [[
	
	<span>
	<a href="https://www.facebook.com/sharer/sharer.php?u=]]..target_e..[[">Facebook</a>
	
	
	<a href="http://twitter.com/intent/tweet?text=]]..content_e..[[&url=]]..target_e..[[">Twitter</a>
	
	<a href="http://www.linkedin.com/shareArticle?mini=true&url=]]..target_e..[[&title=]]..content_e..[[">LinkedIn</a>
	
	<a href="https://wa.me/?text=]]..content_e..[[%20]]..target_e..[[">Whatsapp</a>
	
	<a href="https://telegram.me/share/url?url=]]..target_e..[[&text=]]..content_e..[[">Telegram</a>
	
	<a href="mailto:?subject=Super%20link&body=]]..target_e..[[%0D%0A]]..content_e..[[">Mail</a>
	
	</span>
	]]
	
	local post = pandoc.RawInline('html',mysocial)
	print(el.content)
	return {el, post}
end



function urlencode (str)
   str = string.gsub (str, "([^0-9a-zA-Z!'()*._~-])", -- locale independent
      function (c) return string.format ("%%%02X", string.byte(c)) end)
   --str = string.gsub (str, " ", "+")
   return str
end





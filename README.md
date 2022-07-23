# Social-Networks pandoc Lua filter for markdown

Lua filter to create a list of social networks links from an url, using pandoc.

![sharing](/media/share.png) 


## Usage

pandoc input.md --lua-filter social-networks.lua -o output.html



## Example

markdown:

```
[this is a great page](https://example.com/mydoc.html)
```

Result:

```
<li><a class='dropdown-item' href='https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fexample.com%2Fmydoc.html'>
<i class='bi bi-facebook p-3'></i>Facebook</a>
</li>
<li><a class='dropdown-item' href='http://twitter.com/intent/tweet?text=this%20is%20a%20great%20page&url=https%3A%2F%2Fexample.com%2Fmydoc.html'>
<i class='bi bi-twitter p-3'></i>Twitter</a>
</li>
<li><a class='dropdown-item' href='http://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fexample.com%2Fmydoc.html&title=this%20is%20a%20great%20page'>
<i class='bi bi-linkedin p-3'></i>Linkedin</a>
</li>
<li><a class='dropdown-item' href='https://wa.me/?text=this%20is%20a%20great%20page%3A%20https%3A%2F%2Fexample.com%2Fmydoc.html'>
<i class='bi bi-whatsapp p-3'></i>Whatsapp</a>
</li>
<li><a class='dropdown-item' href='https://telegram.me/share/url?url=https%3A%2F%2Fexample.com%2Fmydoc.html&text=this%20is%20a%20great%20page'>
<i class='bi bi-telegram p-3'></i>Telegram</a>
</li>
<li><a class="dropdown-item" href="mailto:?subject=Super%20link&body=https%3A%2F%2Ffxpar.github.io%2FPandoc-Lua-Markdown-Bootstrap%2F%0D%0AMarkdown%20to%20Bootstrap"><i class="bi bi-envelope p-3"></i> Mail</a></li>

```

## Template usage

See an application in the [markdown to bootstrap template](https://github.com/fxpar/markdown-to-bootstrap-pandoc-lua-filter/blob/main/template/bs5.template.html)

```
<nav class="navbar sticky-top navbar-light bg-light">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
	
	<!-- Sharing links dropdown -->
	$if(socialblock)$
	<div class="btn-group" role="group">
		<button id="btnGroupDrop1" type="button" class="btn btn-Light dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
		  Share
		</button>
		<ul class="dropdown-menu dropdown-menu-end" aria-labelledby="btnGroupDrop1">
		
		$socialblock$
		 </ul>
	</div>
	
	</div>
	$endif$
</nav>

```

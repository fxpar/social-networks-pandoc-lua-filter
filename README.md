# Social-Networks pandoc Lua filter for markdown

Lua filter to create a list of social networks links from an url, using pandoc.

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


```

## Usage

pandoc input.md --lua-filter social-networks.lua -o output.html


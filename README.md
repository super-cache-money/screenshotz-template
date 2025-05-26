# screenshotz

This works very simply.

1. I press my own screenshot hotkey
2. It runs `take-screenshot.sh` that takes a screenshot, and pushes it to a github repo, which is hosted on cloudflare pages. 
3. It copies the link it'll land up on, to clipboard.

I built this because I wanted a free tool that takes screenshots on my mac and makes them available at a simple .png URL, forever, via cloudflare pages.

This way I can easily embed it wherever I want, which is not possible with dropbox or google drive - even if those URLs in .png, they sneak you off to their interface.

# To set it up
- fork this repo, and make it private, so people can't browse your screenshot folder (they can only see the ones you share with them via long, secure URL)
- set up a hotkey to run `take-screenshot.sh`. I use **CAPS LOCK + 4**, via BetterTouchTool. You can probably also use Shortcuts (the Apple thing).

There's a bit of a delay for the screenshot link to actually start working, unfortunately. I think it's like 20 sec or so. But the link gets copied instantly.
# wn

`wn` is a precursor to a more comprehensive tool I'll write at an undisclosed point in the future. For now, this will do for managing my homework.

It's conceptually simple, though the construction will be unfortunately unwieldy.

## Directory structure managed by wn

```
rootdir
├── category1
│   ├── workspace1.01
│   │   └── Makefile
│   └── workspace1.02
│       └── Makefile
└── category2
    ├── workspace2.01
    │   └── Makefile
    └── workspace2.02
        └── Makefile
```

## Example

```
wn --help

wn setup
# or (honestly better):
wn root set <path>

wn workspace select
wn category select

cd $(wn workspace)
```

## What about Git?

wn doesn't do version control as much as Git doesn't help you jump around directories. You can, and in the future I *will* use Git to complement my use of wn, but I still haven't decided what repo structure would be best. For example, a repo for every workspace, or for every category?

## Fish prompt

In `wn_prompt.fish` you'll find a Fish shell function I tenderly had ChatGPT write for me. It doesn't mesh well with naming conventions that use some sort of prefix, since it only shows the first 7 characters of the category name. Presentation matters like this one will be better addressed in the upcoming military-grade tool I'll come up with when I put other affairs of mine in order.

![Screenshot of me using the wn blurb in my Fish prompt](fish_shell_prompt_screenshot.png?raw=true)

## License

The ISC License. See `LICENSE` for more.

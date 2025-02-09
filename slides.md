---
author: Milad Zarei-Maleki
title: (N)Vim Workshop
subtitle: CESA Libre
date: Winter 1403-1404
# slide-level: 2
---

## What is Vim?

A highly configurable _(and addictive)_ text editor built to enable efficient text editing.

![Vim Logo](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Vimlogo.svg/1200px-Vimlogo.svg.png)

## No more...

- Constantly switching between mouse and keyboard
- Reaching for arrow keys
- Reaching for the delete key
- Reaching for the home/end keys
- And so on...

## Who made Vim?

Vim was created by Bram Moolenaar (RIP) in 1991.

![Bram Moolenaar](https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Bram_Moolenaar_in_2007.jpg/1200px-Bram_Moolenaar_in_2007.jpg)

## What is Neovim?

Neovim is a fork of Vim that aims to improve the extensibility and maintainability of Vim.

Neovim's lua compatibility enables users to write great plugins in lua.

_We will be using Neovim in this workshop._

![Neovim Logo](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Neovim-logo.svg/1200px-Neovim-logo.svg.png)

## What do you mean by configurable?

## From...

![This](https://news.tuxmachines.org/i/2022/10/vim-editor-09-2022-2.png)

## To...

![This](https://builtin.com/sites/www.builtin.com/files/styles/ckeditor_optimize/public/inline-images/1_neovim-configuration.jpeg)

## Keep in mind...

Getting used to vim is a process that takes time and practice.

**But it is worth it in the long run**

![The learning curve](https://media2.dev.to/dynamic/image/width=800%2Cheight=%2Cfit=scale-down%2Cgravity=auto%2Cformat=auto/https%3A%2F%2Fdev-to-uploads.s3.amazonaws.com%2Fuploads%2Farticles%2Fzlawo5ozdl132ooq1yjf.jpg)

## Installing Neovim

- Most Linux distributions have neovim in their repositories
  (it is recommended to install the latest version)
- There is a vscode extension for vim, emulating vim
- Recommended approach for macOS is to use Homebrew
- Windows? Switch to Linux or use WSL

Official installation instructions can be found [here](https://github.com/neovim/neovim/blob/master/INSTALL.md)

## Running neovim

Running it is as simple as running `nvim` in your terminal.

::: notes
Run `nvim` in your terminal
:::

## Let's write something

Oops, looks like it's not as simple as it is in vscode.

## HELP I WANT TO EXIT

The most common way to exit vim is by typing `:quit` or `:q` and pressing enter.

But this only works if you haven't made any changes, and you are in normal mode. (You can press `ESC` to go to normal mode. More on this later)

![HELP](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRJFWHjW7Xb1Wji8zmNitleimAP_461b6nNw&s)

## Saving changes

To save changes you can type `:write` or `:w` and press enter.

If you want to save and exit you can combine and type `:wq` and press enter.

To quit without saving you can type `:quit!` or `:q!` and press enter.

## Help anywhere anytime

You can always type `:help {some-command}` and press enter to get help on any topic.

## Opening a file

The simplest way to open a file is by including the file path after the `nvim` command. For example `nvim slides.md`.

You can open multiple files by including multiple file paths after the `nvim` command. For example `nvim slides.md notes.md`. But this will open the files in separate buffers.

## Buffers

A buffer is an in-memory space where you can write and edit some text. When you open a file in Vim, the data is bound to a buffer. When you open 3 files in Vim, you have 3 buffers.

## Buffer commands

- `:ls` or `:buffers` to list all buffers
- `:bnext` or `:bn` to go to the next buffer
- `:bprev` or `:bp` to go to the previous buffer
- `:bdelete` or `:bd` to delete a buffer
- `:buffer {number}` or `:b {number}` to go to a specific buffer
- `:buffer {file-name}` or `:b {file-name}` to go to a buffer by file name

## Windows

A window is a viewport on a buffer. You can have multiple windows open at the same time.

In simple terms, a window is what you see on your screen. It reflects a buffer.

## Window commands

- `:sp` or `:split` to split the window horizontally
- `:vsp` or `:vsplit` to split the window vertically
- `:q` to close the current window

Now that you have multiple windows open, you can change the current window's
buffer by the commands mentioned before.

## Alternative window keybinds

- `Ctrl + w then s` to split the window horizontally
- `Ctrl + w then v` to split the window vertically
- `Ctrl + w then c` to close the current window
- `ctrl + w then o` to close all windows except the current one

## Moving between windows

- `Ctrl + w then w` to move to the next window
- `Ctrl + w then h` to move to the window on the left
- `Ctrl + w then j` to move to the window below
- `Ctrl + w then k` to move to the window above
- `Ctrl + w then l` to move to the window on the right

Pay extra attention to the `h`, `j`, `k`, and `l` keys. They are the foundation of moving around in Vim.

## Closing all buffers

Typing `:quit` or `:q` will only close the current buffer. To close all buffers you can type `:qa` or `:qall`.

Feel free to combine it with `!` to force close all buffers. or with `w` to save changes before closing all buffers. e.g. `:wqa` or `:qa!`

## Tabs

Tabs are a way to organize your windows and buffers. They are not like "tabs" in other text editors. They are more like workspaces.

They are basically a collection of windows.

## Tab commands

- `:tabnew` or `:tabnew {file-name}` to open a new tab
- `:tabnext` or `:tabn` to go to the next tab
- `:tabprev` or `:tabp` to go to the previous tab
- `:tabclose` or `:tabc` to close the current tab
- and so on...

## The cool -p flag

You can open multiple files in tabs by using the `-p` flag. For example `nvim -p slides.md notes.md`.

## Use them wisely!

You have learned what buffers, windows and tabs are and how they work in Vim. Now that you understand them better, you can use them in your own workflow.

## Opening files

You can open files using the `:find` command. For example `:find slides.md`. The `:edit` command works the same way. The difference
is out of the scope of this workshop. (Hint: `:find` is more comprehensive)

## The builtin file explorer

By specifying a directory path after the `nvim` command or `:e` or `:find` command, you can open the builtin file explorer.
The builtin file explorer is a simple way to navigate through your files and directories. We might cover a cooler file explorer later.

## The Vim grammar

Don't worry, it's not that hard

## The Vim grammar

Some actions require you to know the **grammar**. The only grammar you need to know is:

```
verb + noun
```

i.e. "Learn (verb) neovim (noun)"

## Nouns (Motions)

Nouns are Vim motions. Motions are used to move around in Vim. Below is a list of some Vim motions:

```
h    Left
j    Down
k    Up
l    Right
w    Move forward to the beginning of the next word
}    Jump to the next paragraph
$    Go to the end of the line
```

## Verbs (Operators)

According to `:h operator`, Vim has 16 operators. However, in experience, learning these 3 operators is enough for 80% of the editing needs:

```
y    Yank text (copy)
d    Delete text and save to register
c    Delete text, save to register, and start insert mode
```

Use `p` (After cursor) or `P` (Before cursor) to paste your copied text

## The grammar in practice

Now that you know the grammar and the verbs and the nouns, let's put them into action.

See the following and try to guess what they do:

- `y$`: [yank everything fomr current location to the end of the line]{.fragment}
- `dw`: [delete from your current location to the beginning of the next word]{.fragment}
- `c}`: [change from your current location to the end of the current paragraph]{.fragment}

## Combine them with count!

Motions also accept count number as arguments. If you need to go up 5 lines, instead of pressing `k` 3 times, you can do `3k`. Count works with Vim grammar.

- To yank two characters to the left: `y2h`.
- To delete the next two words: `d2w`.
- To change the next two lines: `c2j`.

## Confused?

Don't worry, it's compeletely normal! Key is patience and repitition and of course, willpower :)

## Text comes structured

Our texts usually come with specific structures. For example:

```javascript
const hello = function () {
  console.log("Hello Vim");
  return true;
};
```

You may notice that we have some structures! the `{}` of the function definition, the `()` of the function call, the `""` of the string definition
and so on...

## Cooler nouns (text objects)

Imagine you are somewhere inside a pair of parentheses like `(hello Vim)`], and you need to delete the entire phrase inside the parentheses. How can you quickly do it? Is there a way to delete the "group" you are inside?

The answer are **text objects** they can be used with operators to specify a useful place to apply the operator on:

```
i + object    Inner text object
a + object    Outer text object
```

## Text objects example

```javascript
const hello = function () {
  console.log("Hello Vim");
  return true;
};
```

- To delete the entire "Hello Vim": `di(`.
- To delete the content of function (surrounded by `{}`): `di{`.
- To delete the "Hello" string: `diw`.

## HTML example

```html
<div>
  <h1>Header1</h1>
  <p>Paragraph1</p>
  <p>Paragraph2</p>
</div>
```

If your cursor is on "Header1" text:

- To delete "Header1": `dit`.
- To delete `<h1>Header1</h1>`: `dat`.

If your cursor is on "div":

- To delete `h1` and both `p` lines: `dit`.
- To delete everything: `dat`.
- To delete "div": `di<`.

## More text objects

```
w         A word
p         A paragraph
s         A sentence
( or )    A pair of ( )
{ or }    A pair of { }
[ or ]    A pair of [ ]
< or >    A pair of < >
t         XML tags
"         A pair of " "
'         A Pair of ' '
`         A pair of ` `
```

## Let's get moving

No more switching back-and-forth between your mouse and keyboard.

## Foundation of vim

The most basic motion unit is moving one character left, down, up and right:

```
h   Left
j   Down
k   Up
l   Right
```

Don't give in to the tempatation of using your arrow keys/mouse.
Over time, you will be addicted to the simplicity of this.

## Why h j k l?

The original creator of vi used the ADM-3A terminal

![ADM-3A](https://dave.cheney.net/wp-content/uploads/2017/08/Screen-Shot-2017-08-21-at-14.15.25-1024x420.png)

## Count your move

You can combine the navigation with numbers beforehand:

```
[count] + move
```

## Word navigation

```
w     Move forward to the beginning of the next word
W     Move forward to the beginning of the next WORD
e     Move forward one word to the end of the next word
E     Move forward one word to the end of the next WORD
b     Move backward to beginning of the previous word
B     Move backward to beginning of the previous WORD
ge    Move backward to end of the previous word
gE    Move backward to end of the previous WORD
```

The difference between WORD and word is that WORD includes special characters too. Both are separated
by whitespace

## Word navigation cont.

For example, suppose you have:

```
const hello = "world";
```

With your cursor at the start of the line, to go to the end of the line with `l`, it will take you 21 key presses. Using `w`, it will take 6. Using `W`, it will only take 4. Both word and WORD are good options to travel short distance.

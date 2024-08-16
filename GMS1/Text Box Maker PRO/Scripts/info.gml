/*INFO

TEXT BOX MAKER PRO

INTRODUCTION

Wellcome to use Text Box Maker PRO! This explains how to use this text box maker to add text boxes and dialogues to your game.
If you need more help, feel free to ask me.
You can ask help with email:
My email: pikku-a@flyinglegendsstudio.com
Or in the GameMaker forum thread:
The forum thread: https://forum.yoyogames.com/index.php?threads/text-box-maker-pro.37150/


RESOURCES

Everything with "example" in its name is not needed to use text box maker pro. However, they can include useful information about handling things.
The most important part are the 2 scripts, "show_textbox" and "show_options" and the object npc.
If you want to learn with an example how to use this, head straight to the object npc.


THE SCRIPTS

You only need to know how to use show_textbox. Show_options is used automatically if you add options.

show_textbox(Text,CharacterName,Colour,TextColour,OutlineColour,Alpha,Font,Sprite,Option1,Option2,Option3,SelectedTextColour)

Arguments explained:

TEXT: Text that the textbox will show.
CHARACTER NAME: Characters name. You can put also "noone". Then it won't show the name rectangle.
COLOUR: Colour of text box.
TEXT COLOUR: Colour of text.
OUTLINE COLOUR: Colour of the outline. You can put "noone" if you don't want outline.
ALPHA: Transparency of the text box. Normal is 1.
FONT: Text font.
SPRITE: You can add the speakers face here. If you want it to fit the text box, the sprite size should be 128X128 pixels. You can add "noone" if you don't want to use any sprite.
OPTION1, OPTION2 & OPTION3: If you want to use options, put the options in this arguments. Put noone if you don't want options. If you want only 2 options, put noone to OPTION3.
SELECTED TEXT COLOUR: If you use options, this is the colour of selected option. If you don't use options, put "noone".

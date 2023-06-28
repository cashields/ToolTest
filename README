In Godot 4.0.3, `@tool` scripts seem to be unable to access the children of their scene trees when loaded as children in another scene.

`SpriteWrapper` is a scene that allows you to edit the texture of a `Sprite2D` without directly interacting with said `Sprite2D`:

![SpriteWrapper behaves like a simplified Sprite2D](readme_imgs/what-i-want.png)

Functionality works as desired when the scene itself is being modified, but including it as a child node in a different scene breaks this functionality:

![SpriteWrapper, when included in SomeThing scene, can no longer access its Sprite2D child node](readme_imgs/what-i-have.png)

Both scripts have the `@tool` designation:

![Picture of the SomeThing and SpriteWrapper scripts, clearly showing @tool annotation](readme_imgs/yep-theyre-tools.png)

So I don't know why it isn't working.
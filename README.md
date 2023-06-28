In Godot 4.0.3, `@tool` scripts seem to be unable to access the children of their scene trees when loaded as children in another scene.

`SpriteWrapper` is a scene that allows you to edit the texture of a `Sprite2D` without directly interacting with said `Sprite2D`:

![SpriteWrapper behaves like a simplified Sprite2D](readme_imgs/what-i-want.png)

Functionality works as desired when the scene itself is being modified, but including it as a child node in a different scene breaks this functionality:

![SpriteWrapper, when included in SomeThing scene, can no longer access its Sprite2D child node](readme_imgs/what-i-have.png)

Both scripts have the `@tool` designation:

![Picture of the SomeThing and SpriteWrapper scripts, clearly showing @tool annotation](readme_imgs/yep-theyre-tools.png)

So I don't know why it isn't working.

---

## Solution

Thanks to this input from the Godot Discord server:

    Looking at your screenshots, I don't see Sprite2D in the scene tree, and there's no scene branch icon next to SpriteWrapper. Are you sure it's there?

The `SpriteWrapper` scene was added to `SomeThing` by right-clicking the root node of `SomeThing` and selecting "Add a Child":

![Demonstration of how right-clicking works](readme_imgs/what-i-was-doing.png)

To fix it, create the `SpriteWrapper` child node by *dragging and dropping* the scene from the file explorer into the tree:

![Demonstration of dragging and dropping](readme_imgs/what-i-should-have-done.png)
package mc.java.display.DisplayText

import mc.java.display.DisplayEntity
import cmd.java.data as data

"""
Class representing an text display entity.
"""
public class DisplayText extends DisplayEntity with minecraft:text_display for mcjava {
    def lazy this(){
    }
    def lazy this(rawjson text){
        setText(text)
    }

    """
    Set the text to be displayed
    """
    def lazy setText(rawjson $text){
        /data merge entity @s {"text":'$text'}
    }

    """
    Set Line Width
    """
    def lazy setLineWidth(int width){
        data.set({"line_width":width})
    }

    """
    Set the text opcacity
    """
    def lazy setOpacity(int opacity){
        data.set({"text_opacity":opacity})
    }

    """
    Set the background color
    """
    def lazy setBackgroundColor(int color){
        data.set({"background":color})
    }

    """
    Set default background
    """
    def lazy setDefaultBackground(bool value){
        data.set({"default_background":value})
    }

    """
    Set shadow
    """
    def lazy setShadow(bool value){
        data.set({"shadow":value})
    }

    """
    Set See Through
    """
    def lazy setSeeThrough(){
        data.set({"see_through":true})
    }

    """
    Set alignment to center
    """
    def lazy setCenter(){
        data.set({"alignment":"center"})
    }

    """
    Set alignment to left
    """
    def lazy setLeft(){
        data.set({"alignment":"left"})
    }

    """
    Set alignment to right
    """
    def lazy setRight(){
        data.set({"alignment":"right"})
    }

     """
    Set alignment to right
    """
    def lazy setWidth(float value){
        data.set({"width":value})
    }
}

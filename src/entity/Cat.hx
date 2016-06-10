package entity;

import luxe.Sprite;
import luxe.Vector;
import luxe.Color;

class Cat extends Sprite {

    public function new() {
        super({
            name : 'cat',
            size : new Vector(64,64),
            color : new Color().rgb(0x000000),
            pos : new Vector(Luxe.screen.w/2, 100)
        });
    } //new

} //Cat
package entity;

import luxe.Sprite;
import luxe.Vector;
import luxe.Color;
import component.Collider;

class Cat extends Sprite {

    var collider : Collider;

    public function new() {
        super({
            name : 'cat',
            size : new Vector(64,64),
            color : new Color().rgb(0x000000),
            pos : new Vector(Luxe.screen.w/2, 100)
        });

        collider = add(new Collider());

    } //new

    override function update(dt:Float) {

    } //update

} //Cat
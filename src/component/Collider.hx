package component;

import luxe.Component;

import luxe.Visual;
import luxe.Vector;
import luxe.collision.shapes.Shape;
import luxe.collision.shapes.Polygon;

class Collider extends Component {

    var collider : Polygon;
    var attached_entity : Visual;

    override function init() {

        attached_entity = cast entity;
        collider = Polygon.rectangle(attached_entity.pos.x, attached_entity.pos.y, attached_entity.size.x, attached_entity.size.y);
        Main.entity_colliders.push(collider);

    } //init

    override function update(dt:Float) {

        attached_entity.pos = collider.position;

    } //update
    
} //Collider
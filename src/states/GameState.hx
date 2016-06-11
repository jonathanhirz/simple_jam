package states;
import luxe.States;
import luxe.Sprite;
import luxe.Vector;
import luxe.collision.shapes.Polygon;
import entity.Cat;

class GameState extends State {

    var cat : Cat;

    public function new( _name:String ) {
        super({ name:_name });
    } //new

    override function init() {

        // wall background sprite
        var wall = new Sprite({
            texture : Luxe.resources.texture("assets/wall.png"),
            centered : false,
            depth : -1
        });

        // rectangle colliders for the floor/ceiling/walls
        // floor
        Main.wall_colliders.push(Polygon.rectangle(0, Luxe.screen.h - 40, Luxe.screen.w, 50, false));
        //ceiling
        Main.wall_colliders.push(Polygon.rectangle(0, -40, Luxe.screen.w, 50, false));
        //left wall
        Main.wall_colliders.push(Polygon.rectangle(-50, 0, 50, Luxe.screen.h, false));
        //right wall
        Main.wall_colliders.push(Polygon.rectangle(Luxe.screen.w, 0, 50, Luxe.screen.height, false));

    } //init

    override function onenter<T>( _value:T ) {

        // a cat
        cat = new Cat();

    } //onenter

    override function onleave<T>( _value:T ) {


    } //onleave

    override function update(dt:Float) {

        cat.pos.x += 10 * dt;

    } //update

} //GameState
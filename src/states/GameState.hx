package states;
import luxe.States;
import luxe.Sprite;
import luxe.Vector;
import luxe.collision.shapes.Shape;
import luxe.collision.shapes.Polygon;

class GameState extends State {

    var wall_colliders : Array<Shape> = [];

    public function new( _name:String ) {
        super({ name:_name });
    } //new

    override function init() {

        var wall = new Sprite({
            texture : Luxe.resources.texture("assets/wall.png"),
            centered : false
        });

        // floor
        wall_colliders.push(Polygon.rectangle(0, Luxe.screen.h - 40, Luxe.screen.w, 50, false));
        //ceiling
        wall_colliders.push(Polygon.rectangle(0, -40, Luxe.screen.w, 50, false));
        //left wall
        wall_colliders.push(Polygon.rectangle(-50, 0, 50, Luxe.screen.h, false));
        //right wall
        wall_colliders.push(Polygon.rectangle(Luxe.screen.w, 0, 50, Luxe.screen.height, false));

    } //init

    override function onenter<T>( _value:T ) {


    } //onenter

    override function onleave<T>( _value:T ) {


    } //onleave

    override function update(dt:Float) {

        if(Main.draw_colliders) {
            for(shape in wall_colliders) draw_collider_polygon(cast shape);
        }

    } //update

    function draw_collider_polygon(poly:Polygon) {

        var geom = Luxe.draw.poly({
            solid:false,
            close:true,
            depth:100,
            points:poly.vertices,
            immediate:true
        });

        geom.transform.pos.copy_from(poly.position);

    } //draw_collider_polygon

} //GameState
package states;
import luxe.States;
import luxe.Sprite;
import luxe.Vector;

class GameState extends State {

    public function new( _name:String ) {
        super({ name:_name });
    } //new

    override function init() {

        var wall = new Sprite({
            texture : Luxe.resources.texture("assets/wall.png"),
            centered : false
        });


    } //init

    override function onenter<T>( _value:T ) {


    } //onenter

    override function onleave<T>( _value:T ) {


    } //onleave

    override function update(dt:Float) {


    } //update

} //GameState
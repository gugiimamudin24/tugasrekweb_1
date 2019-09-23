package actions.classes {
	import flash.display.MovieClip;
	import flash.geom.Point;
	import flash.events.MouseEvent;
	
	public class dhod extends MovieClip {
protected var posisiAsal : Point;
		
	public function dhod(){
		posisiAsal = new Point(x, y);
		buttonMode = true;
		addEventListener (MouseEvent.MOUSE_DOWN, down);
		}
	
	protected function down (e:MouseEvent): void {
		parent.addChild(this);
		startDrag();
		addEventListener (MouseEvent.MOUSE_UP, up);
	}
	
	protected function up (e:MouseEvent): void {
		stage.removeEventListener(MouseEvent.MOUSE_UP, up);
		stopDrag();
		
		if (dropTarget) {
			if (dropTarget.parent.name == "isi7") {


				
				buttonMode = false;
				removeEventListener (MouseEvent.MOUSE_DOWN, down);
				
			}else{
				kemdhodliKeAsal();
			}
		}else{
			kemdhodliKeAsal();
		}
	}
	protected function kemdhodliKeAsal() : void {
		x = posisiAsal.x;
		y = posisiAsal.y;
	}
}
}
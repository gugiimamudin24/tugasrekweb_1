package actions.classes {
	import flash.display.MovieClip;
	import flash.geom.Point;
	import flash.events.MouseEvent;
	
	public class hamzah extends MovieClip {
protected var posisiAsal : Point;
		
	public function hamzah(){
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
			if (dropTarget.parent.name == "no") {


				
				buttonMode = false;
				removeEventListener (MouseEvent.MOUSE_DOWN, down);
				
			}else{
				kemhamzahliKeAsal();
			}
		}else{
			kemhamzahliKeAsal();
		}
	}
	protected function kemhamzahliKeAsal() : void {
		x = posisiAsal.x;
		y = posisiAsal.y;
	}
}
}
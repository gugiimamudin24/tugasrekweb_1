package actions.classes {
	import flash.display.MovieClip;
	import flash.geom.Point;
	import flash.events.MouseEvent;
	
	public class dal extends MovieClip {
protected var posisiAsal : Point;
		
	public function dal(){
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
			if (dropTarget.parent.name == "isi3") {


				
				buttonMode = false;
				removeEventListener (MouseEvent.MOUSE_DOWN, down);
				
			}else{
				kemdalliKeAsal();
			}
		}else{
			kemdalliKeAsal();
		}
	}
	protected function kemdalliKeAsal() : void {
		x = posisiAsal.x;
		y = posisiAsal.y;
	}
}
}
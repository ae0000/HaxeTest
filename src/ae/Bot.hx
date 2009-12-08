import flash.display.MovieClip;
import flash.display.DisplayObject;
import flash.events.Event;


class Bot {
	
	static var blockWidth:Int = 10;
	static var blockHeight:Int = 10;
	static var lineColour:Int = 0xB5B8B9;
	static var fillColour:Int = 0xCC0000;
	
	public var botRef:MovieClip;
	public var grid:Grid;
	
	
	public function new(){
		
	}
	
	/**
	 * Create a bot
	 */
    public function create(_grid:Grid){   
    
		grid = _grid;
    	var x:Int = 0;
    	var y:Int = 0;
    	
	  	var a:MovieClip = flash.Lib.current;// = new MovieClip();
	  	var b = new MovieClip();
	  	b.name = 'bot';
		b.graphics.beginFill(fillColour);
		b.graphics.moveTo(x,y);
		b.graphics.lineTo(x + blockWidth, y);
		b.graphics.lineTo(x + blockWidth, y + blockWidth);
		b.graphics.lineTo(x, y + blockWidth);
		b.graphics.endFill();
	
		//botRefDO = a.addChild(b);
		botRef = cast(a.addChild(b), MovieClip);
		return botRef;
    }
    
    
    public function startMarch(gridX, gridY){
    	// Start marching
    	var a:MovieClip = cast(botRef, MovieClip);
    	a.addEventListener(Event.ENTER_FRAME, march);
    }
    
    public function march(e:Event){
    	e.currentTarget.x ++;
    }
    
    public function stopMarch(){
    	// Stop marching
    }
 
    
}

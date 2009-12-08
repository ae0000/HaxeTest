class Grid {
	
	public static var BLOCK_WIDTH:Int = 10;
	public static var BLOCK_HEIGHT:Int = 10;
	public static var OFFSET_X:Int = 10;
	public static var OFFSET_Y:Int = 10;
	static var lineColour:Int = 0xB5B8B9;
	static var fillColour:Int = 0x33393A;
	static var blockedColour:Int = 0xFFFFFF;
	
	public var gridArray:Array<Array<Int>>;
	
	public function new(){
		
	}
	
	/**
	 * Create a grid
	 */
    public function create(w:Int,h:Int){   
    
    	
    	var i:Int = 0;
    	var j:Int = 0;
    	var x:Int = 0;
    	var y:Int = 0;
    	//var gridArray:Array<Array<Int>> = new Array();
    	
    	// Reset the grid array
    	gridArray = new Array();
    	
    	while(i < w){
    		x = OFFSET_X + (BLOCK_WIDTH * i);
    		j = 0;
    		gridArray[i] = new Array();
    		
    		while(j < h){
    		
			  	var mc:flash.display.MovieClip = flash.Lib.current;
			  	var rand:Float = Math.random() * 100;
			  	
			  	y = OFFSET_Y + (BLOCK_HEIGHT * j);
			  	
				mc.graphics.lineStyle(0.5,lineColour);
				
				// Check to see if this block is blocked off
				if (rand > 20){
					gridArray[i][j] = 1;
					mc.graphics.beginFill(fillColour);
				}else{
					gridArray[i][j] = 0;
					mc.graphics.beginFill(blockedColour);
				}
				
				mc.graphics.moveTo(x,y);
				mc.graphics.lineTo(x + BLOCK_WIDTH, y);
				mc.graphics.lineTo(x + BLOCK_WIDTH, y + BLOCK_WIDTH);
				mc.graphics.lineTo(x, y + BLOCK_WIDTH);
				mc.graphics.endFill();
				j++;
		    }
		    
		    i++;
		}
		
		//return gridArray;
    }
    
    
    public function check(x:Int,y:Int){
    	return (gridArray[x][y] == 1);
    }
    
    
}

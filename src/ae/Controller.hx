import flash.display.MovieClip;
import flash.display.DisplayObject;

class Controller {

	static var GRID_WIDTH:Int = 40;
	static var GRID_HEIGHT:Int = 20;
	
	public function new(){
		build();
		buttons();
	}
	
	public function build(){	
		// Create a grid
		var grid:Grid = new Grid();
		grid.create(GRID_WIDTH,GRID_HEIGHT);
		
		// Create the bot
		var bot:Bot = new Bot();
		var botRef:MovieClip = bot.create(grid);
		
		// Position the bot in the first available y pos
		var i:Int = 0;
		while(i < GRID_HEIGHT){
			if(grid.check(0,i)){
				botRef.x = Grid.OFFSET_X;
				botRef.y = Grid.OFFSET_Y + ( i * Grid.BLOCK_HEIGHT );
				i = GRID_HEIGHT + 10;
			}
			i++;
		}
		
		// Get the bot moving
		bot.startMarch(GRID_WIDTH - 1, cast((GRID_HEIGHT / 2),Int));
    }
    
    private function buttons(){
    	// Make some buttons here to refresh the grid etc.
    }
}

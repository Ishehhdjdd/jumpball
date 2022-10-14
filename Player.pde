class Player{
    
    float x;
    float y;
    float xspeed;
    float yspeed;
    public Player(int x , int y , 
        int xspeed , int yspeed) {
        this.x = x;
        this.y = y;
        this.xspeed = xspeed;
        this.yspeed = yspeed;
    }
    
    void control(boolean touchGround) {
        if (touchGround) {
            
            yspeed = 0; 
        } else{
            
            yspeed = yspeed + 1.5;
        }
        if (keyPressed&& touchGround) {
            if (key == 'a') {
                xspeed = xspeed - 2;
            }
            if (key == 'd') {
                xspeed = xspeed + 2;
            }
            if (key ==  'w') {
                yspeed = yspeed -25;
                
            }
            
        }
        
    }
    boolean move() {
        x = x + xspeed;
        y = y + yspeed;
        
        xspeed = xspeed * 0.8;
        yspeed = yspeed * 0.8;
        
        if (Math.abs(xspeed)<0.1) {
            xspeed = 0;
        }
        if (Math.abs(yspeed)<0.1) {
            yspeed = 0;
        }    
        if ( y > 1000){

            x= 60; 
            y= 350; 
            xspeed= 0 ; 
            yspeed = 0 ;
            return false ;
        }    
        return true;
    }
    
    
    void show() {
        circle(x, y, 40);
    }
    
}  
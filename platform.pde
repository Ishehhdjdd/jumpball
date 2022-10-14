class Platform{
    int x; 
    int y; 
    int size;
    Platform(int x , int y ,int size) {
        
        this.x = x;
        this.y = y;
        this.size = size; 
    } 
    
    void show() {
        
        
        rect(x, y, size, 20);
    }
    boolean inUpReagoin(Player p) {
        if (p.x<x  || p.x > x + size) {
            
            return false;
        }
        if (p.y < y - 20 || p.y > y - 8) {
            
            return false;
        }
        
        return true;
    }
    void move (int step,Platform pre){

        x =x + step;
        if ( x < - 1000){
x = (int) pre.x +pre.size+ 40 + (int)(Math.random()*100);


        }
    }
}
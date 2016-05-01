

public class Team {
  public String name;
  public String imgName;
  public PImage img;
  public float x;
  public float y;
  public int days; // How many days until game day
  
  Team(String name, String imgName, float x, float y, int days) {
    this.name = name;
    this.imgName = imgName;
    this.x = x;
    this.y = y;
    this.days = days;
  }
};

PImage INMap;

// Create teams
ArrayList<Team> arrayTeam = new ArrayList<Team>();
Team  mumbaiindians = new Team("mi", "mi.png", 82, 283, 0);
Team  sunrises = new Team("srh", "srh.png", 170, 353, 6);
Team rajr = new Team("rr","rr.png",70,210,10);
Team chennai = new Team("csk","csk.png",160,470,5);
Team kolkata = new Team("kkr","kkr.png", 280 ,290, 2);


// Current location of my team's image
float x, y;
int p,q,r,s,t,u,v,w = 0;
// Easying factor to easy my team's image into the target location. 
float easying = 0.1;

float step = -1.0f; 
 int i=1;
void setup() {
  arrayTeam.add(mumbaiindians);
  arrayTeam.add(sunrises);
  arrayTeam.add(rajr);
  arrayTeam.add(chennai);
  arrayTeam.add(kolkata);

  
  frameRate(30);
  print(arrayTeam.size());
  // This is the size of the India map image. 
  size(550, 630);
  INMap = loadImage("rsz_india_map.png");
  
  mumbaiindians.img = loadImage(mumbaiindians.imgName);
  sunrises.img = loadImage(sunrises.imgName);
  rajr.img = loadImage(rajr.imgName);
  chennai.img = loadImage(chennai.imgName);
  kolkata.img = loadImage(kolkata.imgName);

  
  print(arrayTeam.size());  

  // This is the starting location of my team's image.
  x = mumbaiindians.x; 
  y = mumbaiindians.y;
 
}

void draw() {
  // Must draw the images in the right sequence:
  // from back to front. 
  image(INMap, 0, 0);
  
  text("INDIAN PREMIER LEAGUE 2016 - 2017", 220, 30);
  fill(000,000,000);
  textSize(100);
  
  image(sunrises.img, 170, 353, 60, 60);
  fill(250,15,31);
  textSize(15);
  text("Team:Sunrisers Hyderabad", 225, 375);
  fill(250,15,31);
  textSize(15);
  text("Location:Hyderabad", 225, 390);
  fill(250,15,31);
  textSize(15);
  text("Date:Jan 5th, 2016", 225, 405);
  if(p==2){
    fill(250,15,31);
  textSize(15);
  text("MI 175/2:176/4 SRH", 225, 420);
  }
  
  image(rajr.img, 70, 210 , 60, 60);
  fill(250,15,31);
  textSize(15);
  text("Team:Rajasthan Royals", 125, 230);
  fill(250,15,31);
  textSize(15);
  text("Location:Rajasthan", 125, 250);
  fill(250,15,31);
  textSize(15);
  text("Date:Jan 9th, 2016", 125, 270);
  if(q==2){
    fill(250,15,31);
  textSize(15);
  text("MI 121/2:110/10 RR", 125, 290);
  }
  
  image(chennai.img, 160 ,470, 60, 60);
      fill(250,15,31);
  textSize(15);
  text("Team:Chennai Super Kings", 215, 490);
  fill(250,15,31);
  textSize(15);
  text("Location:Chennai", 215, 510);
  fill(250,15,31);
  textSize(15);
  text("Date:May 1st, 2016", 215, 530);
  if(r==2){
    fill(250,15,31);
  textSize(15);
  //text("mumbaiindians 1:3 chennai", 215, 550);
  }
  
  image(kolkata.img, 280 ,290, 60, 60);
      fill(250,15,31);
  textSize(15);
  text("Team:Kolkata Knight Riders", 335, 310);
  fill(250,15,31);
  textSize(15);
  text("Location:Kolkatta", 335, 330);
  fill(250,15,31);
  textSize(15);
  text("Date:May 7th, 2016", 335, 350);
  if(s==2){
    fill(250,15,31);
  textSize(15);
  //text("mumbaiindians 1:3 chennai", 335, 370);
  }
  

  print();
  
  float dx = arrayTeam.get(i).x - x;
  float dy = arrayTeam.get(i).y - y;


  x += dx * (easying / arrayTeam.get(i).days);
  y += dy * (easying / arrayTeam.get(i).days); 


  
  image(mumbaiindians.img, x, y, 60, 60);
   
    if ((abs(dx) < 5) && (abs(dy) < 5))  {
      if(i<=arrayTeam.size()-2){
        i = i +1;
        print("Print i value"+i+"\n");
      }
      
      if(i==2){p=2;}
      if(i==3){q=2;}
      if(i==4){r=2;}
      if(i==5){s=2;}
      if(i==6){t=2;}
      if(i==7){u=2;}
      if(i==8){v=2;}
      if(i==8 && (abs(dx) < 5) && (abs(dy) < 5)){
       
    fill(250,15,31);
    textSize(10);
    text("mumbaiindians 1:3 Denver Broncos", 335, 360);
  
      }
      
 
    }
   
}
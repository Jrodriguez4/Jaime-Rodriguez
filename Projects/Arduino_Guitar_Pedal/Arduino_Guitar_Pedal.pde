#include "dsp.h"

// create an array for the delay
byte array[2000]; 

//define variables
int j;
int fx;
int mode;
int value50;
int value300;
int value10000;
int delayed;

void setup() {
  setupIO();
  
  //set initial values
  j = 50;
  value50 = 50;
  value300 = 300;
  value10000 = 1000;
  delayed = 0;
}

void loop() {
  
    //check status of the effect potentiometer and rotary switch
    readKnobs();
  
    // *************
    // ***bitcrush**
    // *************
    if(mode == 6){
      value300 = 1 + ((float) fx / (float) 3);        
      if(delayed > value300) {  
        byte input = analogRead(left);
        input = (input >> 6 << 6);
        output(left, input);
        delayed = 0;
       } 
       delayed++;

    }
    
    
    // ***************
    // ***Overdrive***
    // ***************
    if(mode == 7){
      value50 = 1 + ((float) fx / (float) 20);    
      byte input = analogRead(left);
      input = (input * value50); 
      output(left, input);

    }


    //  *************************
    //  ***short crunchy delay***
    //  *************************

    if(mode == 9){
      for(int i = 0; i < 2000; i ++) { // set up a loop    
        //array[i] = array[i] + array[i - 1]; //removes noise and some delay
        output(left, array[i]);
        array[i] = analogRead(left);
      }
    }


    //  **********************
    //  ***clean helicopter***
    //  **********************
    if(mode == 10){
      value10000 = fx * 10;  
      if(delayed > value10000) { 
        for(int i = 0; i < 2000; i ++) { // set up a loop    
          array[i] = array[i] + array[i - 1]; //removes noise and delay
          output(left, array[i]);
          array[i] = analogRead(left);
        }
        delayed = 0;
      }
      delayed++;
    }
    
    //  ********************
    //  ***ring modulator***
    //  ********************
    if(mode == 11){
     value50 = 1 + ((float) fx / (float) 20);    
     byte input = analogRead(left);
     input = (input * j);
     output(left, input);
     
     j = j - 1;
     if (j <= 0) {
       j = value50;
     }

    }
    
    //  ************************
    //  ***YOUR AWESOME SOUND***
    //  ************************
    if(mode == 12){
          
      //************************************
      //insert your awesome effect code here
      //************************************
  
    }
    
}

void readKnobs(){
  //read the rotary switch
  //and determine which effect is selected
  //dividing by 75 ensures proper discrete values
  //for if statements above
  mode = analogRead(2);
  mode = mode / 75;
    
  //reads the effects pot to adjust
  //the intensity of the effects above  
  fx = analogRead(3);

}

import QtQuick 2.12
import QtQml 2.12
import QtQuick.Window 2.12
import QtMultimedia 5.12

Window {
    id: window
    visible: true
    visibility: "FullScreen"
    width: 640
    height: 480
    title: qsTr("Slipknot - Spit It Out")
    property var lyrics:
    [ "Did you never give a damn in the first place",
      "Maybe it's time you had the tables turned",
      "Cause in the interest of all involved",
      "I got the problem solved and the verdict is guilty",
      "Man nearly killed me, steppin' where you fear to tread",
      "Stop, drop and roll you were dead from the get-go!",
      "Big mouth fucker stupid cocksucker",
      "Are you scared of me now?",
      "Then you're dumber than I thought",
      "Always is and never was",
      "Foundation made of piss and vinegar",
      "Step to me, I'll smear ya think I fear ya? bullshit!",
      "Just another dumb punk chompin' at this shit",
      "Is there any way to break through the noise?",
      "Was it something that I said that got you bent?",
      "Gotta be that way if you want it",
      "Sanity, literal profanity, hit me!",
      "",
      "",
      "Spit it out",
      "All you wanna do is drag me down",
      "All I wanna do is stamp you out",
      "",
      "",
      "Spit it out",
      "All you wanna do is drag me down",
      "All I wanna do is stamp you out",
      "",
      "",
      "",
      "Maybe it's the way you gotta spread a lotta rumor fodder",
      "Keepin' all your little spies and leavin' when you realize",
      "Step up, fairy",
      "I guess it's time to bury your ass with the chrome straight to the dome",
      "You heard me right, bitch, I didn't stutter",
      "And if you know what's good just shut up and beg, brother",
      "Back stab don't you know who you're dissin'?",
      "Side swipe we know the ass that you're kissin'!",
      "Biggity-biggidy bitch boy, halfway hauser",
      "Don't hear shit 'cause it keeps gettin' louder",
      "Come up and get a face full o'tactic",
      "Lippin' off hard, goin' home in a basket",
      "You got no pull, no power, no nothin'",
      "Now you start shit? Well ain't that somethin'?",
      "Payoffs don't protect and you can hide if you want",
      "But I'll find you comin' up behind you!",
      "",
      "",
      "Spit it out",
      "All you wanna do is drag me down",
      "All I wanna do is stamp you out",
      "",
      "",
      "Spit it out",
      "All you wanna do is drag me down",
      "All I wanna do is stamp you out",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "Bout time I set this record straight",
      "Cause' all the needlenose punchin' is makin' me irate",
      "Sick o' my bitchin' fallin' on deaf ears",
      "Where you gonna be in the next five years?",
      "The crew and all the fools and all the politics",
      "Get your lips ready, gonna gag, gonna make you sick",
      "You got dick when they passed out the good stuff",
      "Bam are you sick of me?, good enough had enough",
      "",
      "Fuck me! I'm all out of enemies",
      "Fuck me! I'm all out of enemies",
      "Fuck me! I'm all out of enemies",
      "Fuck me! I'm all out of enemies",
      "Fuck me! I'm all out of enemies",
      "Fuck me! I'm all out of enemies",
      "Fuck me! I'm all out of enemies",
      "Fuck me! I'm all out of enemies",
      "",
      "",
      "Spit it out",
      "All you wanna do is drag me down",
      "All I wanna do is stamp you out",
      "",
      "",
      "Spit it out",
      "All you wanna do is drag me down",
      "All I wanna do is spit you out",
      "",
      "Spit",
      "",
      "Spit",
      "",
      "Spit",
      "",
      "Spit",
      "",
      "Spit",
      "It out",
      "",
      "",
      "",
      "",
      ""
    ]
    property var statesNames: ["first", "second", "third", "fourth", "fifth"]
    property int counter: 0
    property var speed: 1500
    
    Item {
        id: button
        focus: true
        Keys.onPressed: {
            if (event.key === Qt.Key_Escape)
                window.close();
        }
    }
    
    Audio {
        id: music
        source: "music/Spit.mp3"
        volume: 0.5
        autoPlay: true
    }
    
    
    PWND {
        id: pWND
        states: [
          State {
            name: statesNames[0]
            PropertyChanges { target: one; x: window.width/2 - one.width/2; y: -30 + window.height/6; opacity : 0}
            PropertyChanges { target: two; x: window.width/2 - two.width/2; y: -30 + 2 * window.height/6; opacity: 1  }
            PropertyChanges { target: three; x: window.width/2 - three.width/2; y: -30 + 3 * window.height/6; }
            PropertyChanges { target: four; x: window.width/2 - four.width/2; y: -30 + 4 * window.height/6; }
            PropertyChanges { target: five; x: window.width/2 - five.width/2; y: -30 + 5 * window.height/6; opacity: 0 }
            },
            
          State {
            name: statesNames[1]
            PropertyChanges { target: one; x: window.width/2 - one.width/2; y: -30 + 2 * window.height/6; opacity: 1 }
            PropertyChanges { target: two; x: window.width/2 - two.width/2; y: -30 + 3 * window.height/6; }
            PropertyChanges { target: three; x: window.width/2 - three.width/2; y: -30 + 4 * window.height/6; }
            PropertyChanges { target: four; x: window.width/2 - four.width/2; y: -30 + 5 * window.height/6; opacity: 0 }
            PropertyChanges { target: five; x: window.width/2 - five.width/2; y: -30 + window.height/6; opacity : 0}
            },
            
          State {
            name: statesNames[2]
            PropertyChanges { target: one; x: window.width/2 - one.width/2; y: -30 + 3 * window.height/6; }
            PropertyChanges { target: two; x: window.width/2 - two.width/2; y: -30 + 4 * window.height/6; }
            PropertyChanges { target: three; x: window.width/2 - three.width/2; y: -30 + 5 * window.height/6; opacity: 0 }
            PropertyChanges { target: four; x: window.width/2 - four.width/2; y: -30 + window.height/6; opacity : 0}
            PropertyChanges { target: five; x: window.width/2 - five.width/2; y: -30 + 2 * window.height/6; opacity: 1 }
            },
            
          State {
            name: statesNames[3]
            PropertyChanges { target: one; x: window.width/2 - one.width/2; y: -30 + 4 * window.height/6; }
            PropertyChanges { target: two; x: window.width/2 - two.width/2; y: -30 + 5 * window.height/6; opacity : 0 }
            PropertyChanges { target: three; x: window.width/2 - three.width/2; y: -30 + window.height/6; opacity : 0}
            PropertyChanges { target: four; x: window.width/2 - four.width/2; y: -30 + 2 * window.height/6; opacity: 1 }
            PropertyChanges { target: five; x: window.width/2 - five.width/2; y: -30 + 3 * window.height/6; }
            },
          
          State {
            name: statesNames[4]
            PropertyChanges { target: one; x: window.width/2 - one.width/2; y: -30 + 5 * window.height/6; opacity : 0}
            PropertyChanges { target: two; x: window.width/2 - two.width/2; y: -30 + window.height/6; opacity : 0}
            PropertyChanges { target: three; x: window.width/2 - three.width/2; y: -30 + 2 * window.height/6; opacity: 1 }
            PropertyChanges { target: four; x: window.width/2 - four.width/2; y: -30 + 3 * window.height/6; }
            PropertyChanges { target: five; x: window.width/2 - five.width/2; y: -30 + 4 * window.height/6; }
            }
        ]
        
        transitions: [
          Transition {
            from: statesNames[0]
            to: statesNames[1]
            NumberAnimation {
              easing.amplitude: 1
              easing.type: Easing.OutInSine
              properties: "x,y,opacity"
              duration: speed
              }
            },
            
          Transition {
            from: statesNames[1]
            to: statesNames[2]
            NumberAnimation {
              easing.amplitude: 1
              easing.type: Easing.OutInSine
              properties: "x,y,opacity"
              duration: speed
              }
            },
            
          Transition {
            from: statesNames[2]
            to: statesNames[3]
            NumberAnimation {
              easing.amplitude: 1
              easing.type: Easing.OutInSine
              properties: "x,y,opacity"
              duration: speed
              }
            },
            
          Transition {
            from: statesNames[3]
            to: statesNames[4]
            NumberAnimation {
              easing.amplitude: 1
              easing.type: Easing.OutInSine
              properties: "x,y,opacity"
              duration: speed
              }
            },
            
            Transition {
              from: statesNames[4]
              to: statesNames[0]
              NumberAnimation {
                easing.amplitude: 1
                easing.type: Easing.OutInSine
                properties: "x,y,opacity"
                duration: speed
                }
              } 
        ]
        
        Text {
            id: one
            color: "#00ff55"
            text: ""
            x: window.width/2 - width/2
            y: -30 + window.height/6
            font.family: "Arial"
            textFormat: Text.AutoText
            horizontalAlignment: Text.AlignHCenter
            visible: true
            font.pixelSize: 38
        }
        
        Text {
            id: two
            color: "#00ff55"
            text: ""
            x: window.width/2 - width/2
            y: -30 + 2*window.height/6
            font.family: "Arial"
            textFormat: Text.AutoText
            horizontalAlignment: Text.AlignHCenter
            visible: true
            font.pixelSize: 38
        }
        
        Text {
            id: three
            color: "#00ff55"
            text: ""
            x: window.width/2 - width/2
            y: -30 + 3*window.height/6
            font.family: "Arial"
            textFormat: Text.AutoText
            horizontalAlignment: Text.AlignHCenter
            visible: true
            font.pixelSize: 38
        }
        
        Text {
            id: four
            color: "#00ff55"
            text: ""
            x: window.width/2 - width/2
            y: -30 + 4*window.height/6
            font.family: "Arial"
            textFormat: Text.AutoText
            horizontalAlignment: Text.AlignHCenter
            visible: true
            font.pixelSize: 38
        }
        
        Text {
            id: five
            color: "#00ff55"
            text: ""
            x: window.width/2 - width/2
            y: -30 + 5*window.height/6
            font.family: "Arial"
            textFormat: Text.AutoText
            horizontalAlignment: Text.AlignHCenter
            visible: true
            font.pixelSize: 38
        } 

        Timer {
            id: zen
            interval: speed;
            running: true;
            repeat: true
        
            onTriggered: {
              if (counter % 5 == 0 ) {
                one.text = lyrics[counter]
                pWND.state = statesNames[0]
                counter = counter + 1
              }
              else if (counter % 5 == 1) {
                five.text = lyrics[counter]
                pWND.state = statesNames[1]
                counter = counter + 1
              }
              else if (counter % 5 == 2) {
                four.text = lyrics[counter]
                pWND.state = statesNames[2]
                counter = counter + 1
              }
              else if (counter % 5 == 3) {
                three.text = lyrics[counter]                  
                pWND.state = statesNames[3]
                counter = counter + 1
              }
              else if (counter % 5 == 4) {
                two.text = lyrics[counter]                
                pWND.state = statesNames[4]
                counter = counter + 1
              }
          }
        }
    }
        
}

/*##^##
Designer {
    D{i:1;anchors_height:200;anchors_width:200;anchors_x:176;anchors_y:120}
}
##^##*/

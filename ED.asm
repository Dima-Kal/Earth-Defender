;----------------------------------
;Asm Project By dima               |
;                                  |
;                                  |
;----------------------------------



.286
model small
stack 256

;================================================================================================
DATASEG

logo   db "         _______     ___      .______     .___________. __    __              ",10,13
       db "         |   ____|   /   \     |   _  \    |           ||  |  |  |             ",10,13
       db "         |  |__     /  ^  \    |  |_)  |   `---|  |----`|  |__|  |             ",10,13
       db "         |   __|   /  /_\  \   |      /        |  |     |   __   |             ",10,13
       db "         |  |____ /  _____  \  |  |\  \----.   |  |     |  |  |  |             ",10,13
       db "         |_______/__/     \__\ | _| `._____|   |__|     |__|  |__|             ",10,13
       db " _______   _______  _______  _______ .__   __.  _______   _______ .______     ",10,13
       db "|       \ |   ____||   ____||   ____||  \ |  | |       \ |   ____||   _  \     ",10,13
       db "|  .--.  ||  |__   |  |__   |  |__   |   \|  | |  .--.  ||  |__   |  |_)  |    ",10,13
       db "|  |  |  ||   __|  |   __|  |   __|  |  . `  | |  |  |  ||   __|  |      /     ",10,13
       db "|  '--'  ||  |____ |  |     |  |____ |  |\   | |  '--'  ||  |____ |  |\  \----.",10,13
       db "|_______/ |_______||__|     |_______||__| \__| |_______/ |_______|| _| `._____|",10,13
       db "                                                                               ",10,13
       db "                                  1.Start                                      ",10,13
       db "                                                                               ",10,13
       db "                                  2.Help                                       ",10,13
       db "                                                                               ",10,13
       db "                                  3.Options                                    ",10,13
       db "                                                                               ",10,13
       db "                                  4.About                                      ",10,13
       db "                                                                               ",10,13
       db "                                  5.Exit                                      $"


help   db "                                                                          ",10,13
       db "                                                                          ",10,13
       db "                    Eearth Defender Single Player game.                   ",10,13
       db "          Some asteroids started to move on the way to earth.             ",10,13
       db "      Your Objectives are to protect the earth from the asteroids         ",10,13
       db "                                                                          ",10,13
       db "                                                                          ",10,13
       db "                Earth's saftey lays under your hands!                     ",10,13
       db "                                                                          ",10,13
       db "                             Good Luck!                                   ",10,13
       db "                                                                          ",10,13
       db "                              Controls:                                   ",10,13
       db "                                                                          ",10,13
       db "                          Left- Left arrow key                            ",10,13
       db "                         Right- Right Arrow key                           ",10,13
       db "                             Shoot- Space                                 $"

about  db "                                                                          ",10,13
       db "                                                                          ",10,13
       db "               This game was created by Dima Kalinichenko                 ",10,13
       db "                   in 2009 as a project for school                        ",10,13
       db "                                                                          ",10,13
       db "                                                                          ",10,13
       db "                                                                          ",10,13
       db "                                                                          ",10,13
       db "                                                                          ",10,13
       db "                                                                          ",10,13
       db "                                                                          ",10,13
       db "                                                                          ",10,13
       db "                                                                          ",10,13
       db "                      Hope you'll enjoy the game!                         ",10,13
       db "                                                                          ",10,13
       db "                                                                          $"

slcpls db "            1. Single Player               2. 2 Players                   $"


GameOver   db "                                                                          ",10,13
           db "                                                                          ",10,13
           db "                                                                          ",10,13
           db "                              Game Over!                                  ",10,13
           db "                                                                          ",10,13
           db "                                                                          ",10,13
           db "             The earth is destroyed and its all your fault!               ",10,13
           db "                                                                          ",10,13
           db "                                                                          ",10,13
           db "                                                                          $",10,13

GameWin    db "                                                                          ",10,13
           db "                                                                          ",10,13
           db "                                                                          ",10,13
           db "                              You did it!                                 ",10,13
           db "                                                                          ",10,13
           db "                                                                          ",10,13
           db "             Thanks to you the earth is safe now, Congratulations!        ",10,13
           db "                                                                          ",10,13
           db "                                                                          ",10,13
           db "                                                                          $",10,13

Options    db "                                                                          ",10,13
           db "            1.Player 1 Color                                              ",10,13
           db "                                                                          ",10,13                   
           db "                                                                          ",10,13                 
           db "            2.Player 2 Color                                              ",10,13
           db "                                                                          ",10,13
           db "                                                                          ",10,13
           db "            3.Sound                                                       ",10,13    
           db "                                                                          ",10,13          
           db "                                                                          ",10,13
           db "            4.Game Difficulty                                             ",10,13                 
           db "                                                                          ",10,13
           db "                                                                          ",10,13
           db "                                                                          $",10,13

easy db "Easy$"
medium db "Medium$"
hard db "Hard$"
on db "On$"
off db "Off$"


red db "Red$"
blue db "Blue$"
green db "Green$"
white db "White$"
purple db "Purple$"
yellow db "Yellow$"
skyblue db "Sky blue$"

           
 
lives_message db "Lives$"
score_message db "Score$"    

wrong_option_selection_msg db "You have selected an option that does not exist$"                                                                            

spaceship  db   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
           db   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
           db   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 
           db   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
           db   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
           db   0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0
           db   0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0
           db   0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0
           db   0,0,0,0,0,0,0,1,0,1,1,0,1,0,0,0,0,0,0,0
           db   0,0,0,0,0,0,0,1,0,1,1,0,1,0,0,0,0,0,0,0
           db   0,0,0,0,0,0,0,1,0,1,1,0,1,0,0,0,0,0,0,0
           db   0,0,0,0,0,0,1,0,1,1,1,1,0,1,0,0,0,0,0,0
           db   0,0,0,0,0,1,0,1,1,0,0,1,1,0,1,0,0,0,0,0
           db   0,0,0,0,1,0,1,0,1,1,1,1,0,1,0,1,0,0,0,0
           db   0,0,0,0,1,0,1,1,0,1,1,0,1,1,0,1,0,0,0,0
           db   0,0,0,0,0,1,0,0,6,0,0,6,0,0,1,0,0,0,0,0
           db   0,0,0,0,0,0,0,0,0,6,6,0,0,0,0,0,0,0,0,0
           db   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0


Asteroid db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
         db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
         db 0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0
         db 0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0
         db 0,0,0,0,0,0,1,0,1,1,0,1,0,0,0,0,0
         db 0,0,0,0,0,0,1,0,1,0,0,1,0,0,0,0,0
         db 0,0,0,0,0,1,0,0,0,1,0,1,1,1,0,0,0
         db 0,0,0,0,1,0,1,1,0,0,0,0,0,1,0,0,0
         db 0,0,0,1,0,0,1,1,0,0,1,1,0,0,1,0,0
         db 0,0,1,0,1,1,1,0,0,1,1,1,0,0,1,0,0
         db 0,0,1,0,0,1,0,0,0,1,1,0,1,0,1,0,0
         db 0,0,1,0,0,0,1,0,1,0,1,1,1,0,1,0,0
         db 0,0,0,1,0,1,1,0,0,0,0,1,0,1,0,0,0
         db 0,0,0,1,0,1,1,0,1,1,1,0,1,0,0,0,0
         db 0,0,0,0,1,0,0,1,1,0,1,1,0,0,0,0,0
         db 0,0,0,0,0,1,0,0,1,0,1,0,0,0,0,0,0
         db 0,0,0,0,0,0,1,1,0,1,0,0,0,0,0,0,0
         db 0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0

                                                                                    
bullet db 0,3,3,0 
       db 0,3,3,0
       db 0,3,3,0
       db 0,3,3,0
       db 0,3,3,0
       db 0,3,3,0
       db 0,3,3,0
       db 0,3,3,0
       db 0,3,3,0
       db 0,3,3,0
       db 0,3,3,0
       db 0,3,3,0
       db 0,0,0,0
       db 0,0,0,0
       db 0,0,0,0
       db 0,0,0,0
       db 0,0,0,0
       db 0,0,0,0
       db 0,0,0,0
       db 0,0,0,0
       db 0,0,0,0
 

bulletremove db 0,0,0,0 
             db 0,0,0,0
             db 0,0,0,0
             db 0,0,0,0
             db 0,0,0,0
             db 0,0,0,0
             db 0,0,0,0
             db 0,0,0,0
             db 0,0,0,0
             db 0,0,0,0
             db 0,0,0,0
             db 0,0,0,0
             db 0,0,0,0
             db 0,0,0,0
             db 0,0,0,0
             db 0,0,0,0
             db 0,0,0,0
             db 0,0,0,0
             db 0,0,0,0
             db 0,0,0,0
             db 0,0,0,0
       


  
;=================== Spaceship player 1 Parameters =============
spaceshipXsize   equ 20
spaceshipYsize   equ 22
spaceshipXYsize  equ 1214H
spaceship1X dw 200
spaceship1Y dw 165
;=================== Spaceship player 2 Parameters =============
spaceship2X dw 50
spaceship2Y dw 165
;=================== Asteroid Parameters ==============
AsteroidXSize equ 17
AsteroidYSize equ 18
AsteroidXYsize equ  1211H
AsteroidX dw ?
AsteroidY dw ?
;=================== Bullet player 1 Parameters ================  
Bull1X dw ?
Bull1Y dw ?
bulletXsize equ 4
bulletXYsize equ 1504h
;=================== Bullet player 2 Parameters ================  
Bull2X dw ?
Bull2Y dw ?
;======================================================

;==================== Game Parameters =================
score db 0
lives db 53
crsrx db ?
crsry db ?
speed db ?
shootstatusp1 db 0 ;default no
shootstatusp2 db 0 ;default no
almds db 0  ;Already Made Shoot Sound
p1color db 9  ;Default Blue
p2color db 10 ;Default Green
sound db 1  ;Default On
difficultyopt db 1   ;Default Easy
difficulty dw 012AAh ;Default Easy
sndpstatus db 0 ;default no

;================================================================================================

CODESEG

start:
        mov ax,@data
        mov ds,ax
   
  

menu:

        mov ah,0Ch
        int 21h            ;clear buffer    
    
        mov ax, 013h               ; Init Graph mode for full screen
        int 010h
        mov ax, 0A000h
        mov es, ax  

        mov ax,03h                 ; Init Text Mode
        int 10h
      
        call clearscreen


        mov ah,02h   
        mov bh,0h                   
        mov dh,01h
        mov dl,01h
        int 10h        
                               ;Draws Menu Screen                        
        mov ah,09h
        mov dx,offset logo
        int 21h

        

        mov ah,0
        int 16h
   
        cmp ah,2
        je game_option
        cmp ah,3
        je jmphelp
        cmp ah,4
        je jmpoptions
        cmp ah,5
        je  jmpabout
        cmp ah,6
        je  jmpexit
        cmp ah,1
        je  jmpexit

        jmp wrong_selection


jmphelp:
        jmp help_option

jmpoptions:
        jmp option

jmpabout:
        jmp about_option

jmpexit:
        jmp exit

;===========================================================================

game_option:

 
        call clearscreen

        mov ah,02h   
        mov bh,0h                   
        mov dh,11d
        mov dl,01h
        int 10h  

        mov ah,09h
        mov dx,offset slcpls
        int 21h

checkkey:  

        mov ah,0
        int 16h
  
        cmp ah,1
        je menu
        cmp ah,2
        je continuegame
        cmp ah,3
        jne checkkey

        mov sndpstatus,1


continuegame:
        mov ax, 013h               ; Init Graph
        int 010h
        mov ax, 0A000h
        mov es, ax  




;======================================================================== 
;Game Screen Initialize
;========================================================================    
  ;========================================================================
  ;Reset Game Variabals:
 
        mov score,0
        mov lives,53 ;ascii-5
        cmp sndpstatus,1
        je nxt3
        mov spaceship1X,240
        mov spaceship2X,50

nxt3:
        mov spaceship1X,160
        mov AsteroidY,10
        mov shootstatusp1,0
        mov almds,0

printstatusbar:
 ;==================================================================================
 ; Printing the lives status
  
   
  
        mov dh,0
        mov dl,35
        mov ah,02h
        int 10h                      ;Set cursor position
 
        mov ah,09h
        mov dx,offset Lives_message
        int 21h                      ;Print lives bar
    
        mov crsry,01h
        mov crsrx,37   

        mov dh,crsry
        mov dl,crsrx
        mov ah,02h
        int 10h                      ;Set cursor position

        mov dl,lives
        mov ah,02h
        int 21h                      ;Print number of lives


 
 ;==================================================================================
 ; Printing the score status



        mov dh,0
        mov dl,0
        mov ah,02h
        int 10h                       ;Set cursor position
 
        mov ah,09h
        mov dx,offset Score_message
        int 21h                       ;Print score bar

        mov crsry,01h
        mov crsrx,02h

        mov dh,crsry
        mov dl,crsrx
        mov ah,02h
        int 10h                       ;Set cursor position
  
        cmp score,100
        jb skipasarot 
  
        mov bh,0
        mov bl,100
        mov ah,0
        mov al,[score]
        div bl
        mov cl,al
        xchg dl,cl
        add dl,48
        mov ah,02h
        int 21h
        jmp Game_Win                 ;Print 100 score

skipasarot:

        cmp score,10
        jb skipahadot


        mov bh,0
        mov bl,10
        mov ah,0
        mov al,[score]
        div bl

        cmp al,10
        jae get_remainder

        mov cl,al
        xchg dl,cl
        add dl,48
        mov ah,02h
        int 21h
        jmp skipahadot
 
get_remainder:
 
        div bl  
        xchg dl,ah
        add dl,48
        mov ah,02h
        int 21h 

skipahadot:  

        mov bh,0
        mov bl,10
        mov ah,0
        mov al,[score]
        div bl
        mul bl
        mov dl,[score]
        sub dl,al
        add dl,48
        mov ah,02h
        int 21h
 
   


        mov ah,02h
        mov dh,00h
        mov dl,00h
        int 10h
  
;=======================================================================================

refreshStatus:

        mov ah,2Ch
        int 21h           ;Recive Mili-seconds from PC clock
 
        mov dh,0 
        add dl,80

        cmp dx,10
        jb adjustx1
        cmp dx,290
        ja adjustx2

        jmp cntinue
 
adjustx1:
        add dx,20
        jmp cntinue
adjustx2:
        sub dx,20
        jmp cntinue              ;adjust the limits of the asteroids recived X

cntinue:  
        mov AsteroidX,dx


        mov cx,0F2AAh
        call delay

        jmp maincycle

asdjmp:
        jmp asteroiddraw

;====================================================================


reciveparamp1:

	mov si, spaceship1X   ;Recive Spaceship X position
        add si,8             ;Addjust bullet position
  	mov di, spaceship1Y   ;Recive Spaceship Y position
        sub di,11            ;Addjust bullet position
        mov Bull1X,si
        mov Bull1Y,di
        xor si,si
        xor di,di
        mov almds,0

reciveparamp2:

	mov si, spaceship2X   ;Recive Spaceship X position
        add si,8             ;Addjust bullet position
  	mov di, spaceship2Y   ;Recive Spaceship Y position
        sub di,11            ;Addjust bullet position
        mov Bull2X,si
        mov Bull2Y,di
        xor si,si
        xor di,di
        mov almds,0


maincycle:
 


;====================================================================       
        cmp shootstatusp1,1
        jne asdjmp
          
        cmp almds,1
        je noshootbeep
        cmp sound,1
        jne noshootbeep
        call shootbeep
        mov almds,1

noshootbeep:        

        cmp Bull1Y,16
	ja checkhit

        jmp ReachLimit1
        


checkhit:
        mov ax,AsteroidX
        mov bx,AsteroidY
        add bx,12
        mov cx,AsteroidXsize
        mov dx,AsteroidYSize
        mov si,Bull1X
        add si,2

        cmp si,ax
        jnae end1          ;left side
        add ax,cx
        cmp si,ax
        jnbe end1          ;right side
        cmp Bull1Y,bx
        jnbe end1          ;down side 
        add bx,dx 
        cmp Bull1Y,bx
        jae end1           ;top side
        jmp Hit

end1:
        sub Bull1Y,4
  	call DrawBulletp1

ReachLimit1:

        mov shootstatusp1,0
        call removebulletp1
        mov ah,0Ch
        int 21h            ;clear buffer
	jmp maincycle

;====================================================================  

        cmp shootstatusp2,1
        je next4
        jmp asdjmp
 
next4:         
        cmp almds,1
        je noshootbeep2
        cmp sound,1
        jne noshootbeep2
        call shootbeep
        mov almds,1

noshootbeep2:        

        cmp Bull2Y,16
	jb ReachLimit2 ;check limit
        


checkhit2:
        mov ax,AsteroidX
        mov bx,AsteroidY
        add bx,12
        mov cx,AsteroidXsize
        mov dx,AsteroidYSize
        mov si,Bull2X
        add si,2

        cmp si,ax
        jnae end2          ;left side
        add ax,cx
        cmp si,ax
        jnbe end2          ;right side
        cmp Bull2Y,bx
        jnbe end2          ;down side 
        add bx,dx 
        cmp Bull2Y,bx
        jnae hit           ;top side

end2:
        sub Bull2Y,4
  	call DrawBulletp2

        jmp asteroiddraw ;continue drawing asteroid


ReachLimit2:

        mov shootstatusp2,0
        call removebulletp2
        mov ah,0Ch
        int 21h            ;clear buffer
	jmp maincycle
Hit:
        cmp sound,1
        jne nohitbeep
        call hitbeep

nohitbeep:

        mov shootstatusp1,0
        call removebulletp1
        call RemoveAsteroid
        mov AsteroidY,15
        add score,1
        mov ah,0Ch
        int 21h            ;clear buffer
        jmp printstatusbar       

;==============================================

asteroiddraw:

        call drawAsteroid
        mov cx,difficulty
        call delay

        cmp AsteroidY,180
        ja  removeandlowhp
      
checkhitwithspaceship1:

        mov ax,spaceship1X
        mov bx,spaceship1Y
        sub bx,15
        mov cx,spaceshipXsize
        mov dx,spaceshipYSize
        mov si,AsteroidX
        add si,5

        cmp si,ax
        jnae checkhitwithspaceship2             ;left side
        add ax,cx
        cmp si,ax
        jnbe checkhitwithspaceship2             ;right side
        cmp AsteroidY,bx
        jnae checkhitwithspaceship2             ;down side
        add bx,dx
        cmp AsteroidY,bx                        ;top side
        jnae removeandlowhp

checkhitwithspaceship2:

        mov ax,spaceship2X
        mov bx,spaceship2Y
        sub bx,15
        mov cx,spaceshipXsize
        mov dx,spaceshipYSize
        mov si,AsteroidX
        add si,5

        cmp si,ax
        jnae end3             ;left side
        add ax,cx
        cmp si,ax
        jnbe end3             ;right side
        cmp AsteroidY,bx
        jnae end3             ;down side
        add bx,dx
        cmp AsteroidY,bx      ;top side
        jnae removeandlowhp

end3:

        call removeasteroid 

        inc AsteroidY ;everything ok continue going down

        cmp sndpstatus,1
        jne cnt2
        
        call DrawSpaceship2
cnt2:
        call DrawSpaceship1   

        jmp ReadKey
  
;==========================================  
removeandlowhp:
        
        cmp sound,1
        jne noimpbeep    
        call impactbeep
noimpbeep:
        call removespaceship1
        call removespaceship2
        call RemoveAsteroid
        mov AsteroidY,15
        cmp lives,48      ;ascii 0
        je gameoverjmp
        dec lives
        jmp printstatusbar
gameoverjmp:
        jmp Game_Over
;=========================================

ReadKey:
      
        mov ah,1h       ;Continue Until some key appears in buffer
        int 016h          
        jnz keyready    ;Oh is there a key? ok jump to action
        jmp maincycle   ;There isnt? continue doing what you do

;=========================================
 
keyready:       
        mov ah,00h
        int 016h                   ;Process Key

  	cmp ah, 75                 ; Left
  	jne Skip1

Left_Limit_Checkp1:

        cmp spaceship1X,5d
        jb maincyclejmp

        call removespaceship1
  	sub spaceship1X,4d
        jmp maincycle

Skip1:

  	cmp ah, 77                 ; Right
  	jne Skip2
        

Right_Limit_Checkp1:
 
        cmp spaceship1X,300d
       
        ja maincyclejmp

        call removespaceship1
  	add spaceship1X,4d
        jmp maincycle
 
Skip2:
        cmp shootstatusp1,1
        je exit2
  	cmp ah,57              ;Space
        je shootp1

;=========================================

  	cmp ah, 30                 ; Left-a
  	jne Skip3

Left_Limit_Checkp2:

        cmp spaceship2X,5d
        jb maincyclejmp

        call removespaceship2
  	sub spaceship2X,4d
        jmp maincycle

Skip3:

  	cmp ah, 32                 ; Right-d
  	jne Skip4
        

Right_Limit_Checkp2:
 
        cmp spaceship2X,300d
       
        ja maincyclejmp

        call removespaceship2
  	add spaceship2X,4d
        jmp maincycle
 
Skip4:
        cmp shootstatusp2,1
        je exit2
  	cmp ah,15              ;tab
        je shootp2

exit2:  cmp ah,1              ;Esc
        je menu_jumps

maincyclejmp:
        jmp maincycle


;***************************************************
menu_jumps:

        jmp menu
help1:
	jmp help_option
about1:
	jmp about_option
exit1:
	jmp exit
;***************************************************

  	

;======================================================================== 
shootp1:
call drawasteroid
mov shootstatusp1,1
jmp reciveparamp1

shootp2:
call drawasteroid
mov shootstatusp2,1
jmp reciveparamp2

        

;====================================================================
;Finish Game
;====================================================================
Game_Over:

        mov ah,0Ch
        int 21h            ;clear buffer
     
        call clearscreengraph 

         
        mov ax,03h                 ; Init Text Mode
        int 10h

        mov dh,5
        mov dl,45
        mov ah,02h
        int 10h
          
 
        mov ah,09h
        mov dx,offset GameOver
        int 21h

        mov ah,0
        int 16h

        jmp menu
Game_Win:

        mov ah,0Ch
        int 21h            ;clear buffer

        call clearscreengraph    

        mov ax,03h                 ; Init Text Mode
        int 10h

        mov dh,5
        mov dl,45
        mov ah,02h
        int 10h
          
 
        mov ah,09h
        mov dx,offset GameWin
        int 21h

        mov ah,0
        int 16h
 
        jmp menu

;====================================================================

    

help_option:

        call clearscreen
  
        mov ah,02h 
        mov bh,0h                                        
        mov dh,03d
        mov dl,38d
        int 10h

        mov ah,09h
        mov dx,offset help
        int 21h
                                          
        mov ah,00h
        int 16h 

        jmp menu 

;====================================================================
 
option:

        call clearscreen
  
        mov ah,02h 
        mov bh,0h                                        
        mov dh,03d
        mov dl,38d
        int 10h                 ;Set Cursor Position

        mov ah,09h
        mov dx,offset options
        int 21h 

;====================================================================
coloroptionp1:

        mov ah,02h 
        mov bh,0h                                        
        mov dh,05d
        mov dl,48d
        int 10h                 ;Set Cursor Position

        cmp p1color,10
        je nextp1color10
        cmp p1color,11
        je nextp1color11
        cmp p1color,12
        je nextp1color12 
        cmp p1color,13
        je nextp1color13
        cmp p1color,14
        je nextp1color14
        cmp p1color,15
        je nextp1color15

        mov ah,09h
        mov dx,offset blue
        int 21h
        jmp coloroptionp2

nextp1color10:

        mov ah,09h
        mov dx,offset green
        int 21h
        jmp coloroptionp2

nextp1color11:

        mov ah,09h
        mov dx,offset skyblue
        int 21h
        jmp coloroptionp2

nextp1color12:

        mov ah,09h
        mov dx,offset red
        int 21h
        jmp coloroptionp2

nextp1color13:

        mov ah,09h
        mov dx,offset purple
        int 21h
        jmp coloroptionp2

nextp1color14:

        mov ah,09h
        mov dx,offset yellow
        int 21h
        jmp coloroptionp2

nextp1color15:

        mov ah,09h
        mov dx,offset white
        int 21h
        jmp coloroptionp2

;====================================================================

coloroptionp2:

        mov ah,02h 
        mov bh,0h                                        
        mov dh,08d
        mov dl,48d
        int 10h                 ;Set Cursor Position

        cmp p2color,10
        je nextp2color10
        cmp p2color,11
        je nextp2color11
        cmp p2color,12
        je nextp2color12 
        cmp p2color,13
        je nextp2color13
        cmp p2color,14
        je nextp2color14
        cmp p2color,15
        je nextp2color15

        mov ah,09h
        mov dx,offset blue
        int 21h
        jmp soundoption

nextp2color10:

        mov ah,09h
        mov dx,offset green
        int 21h
        jmp soundoption

nextp2color11:

        mov ah,09h
        mov dx,offset skyblue
        int 21h
        jmp soundoption

nextp2color12:

        mov ah,09h
        mov dx,offset red
        int 21h
        jmp soundoption

nextp2color13:

        mov ah,09h
        mov dx,offset purple
        int 21h
        jmp soundoption

nextp2color14:

        mov ah,09h
        mov dx,offset yellow
        int 21h
        jmp soundoption

nextp2color15:

        mov ah,09h
        mov dx,offset white
        int 21h
        jmp soundoption

;====================================================================
soundoption:  
              
        mov ah,02h 
        mov bh,0h                                        
        mov dh,11d
        mov dl,48d
        int 10h                 ;Set Cursor Position

        cmp sound,1
        jne off1

        mov ah,09h
        mov dx,offset on
        int 21h
        jmp difficultyoption
off1:
        mov ah,09h
        mov dx,offset off
        int 21h

;====================================================================
difficultyoption:

        mov ah,02h 
        mov bh,0h                                        
        mov dh,14d
        mov dl,48d
        int 10h                 ;Set Cursor Position

        cmp difficultyopt,2
        je nextdiff2
        cmp difficultyopt,3
        je nextdiff3

        mov ah,09h
        mov dx,offset easy
        int 21h
        jmp key

nextdiff2:
        mov ah,09h
        mov dx,offset medium
        int 21h
        jmp key
nextdiff3:
        mov ah,09h
        mov dx,offset hard
        int 21h
        jmp key
key:                         
        mov ah,00h
        int 16h                 ;Wait for key
 
        cmp ah,2
        je changecolorp1
        cmp ah,3
        je changecolorp2
        cmp ah,4
        je changesound
        cmp ah,5
        je changedifficulty
        cmp ah,1
        je jmpmenu
        
        jmp key

jmpmenu:
        jmp menu


changecolorp1:

        cmp p1color,15
        ja backtoblue
        inc p1color

        mov al,p1color
        mov ah,p2color
        cmp ah,al
        jne contt1
        inc p1color

contt1:
        jmp option

backtoblue:

        mov p1color,9
        jmp option

changecolorp2:

        cmp p2color,15
        ja backtogreen

        inc p2color

        mov al,p1color
        mov ah,p2color
        cmp ah,al
        jne contt
        inc p2color
contt:
        jmp option

backtogreen:

         mov p2color,9
 
        jmp option

changesound:

        mov al,sound
        not al
        add al,2
        mov sound,al

        jmp option

changedifficulty:

        cmp difficultyopt,3
        je backtoeasy
        inc difficultyopt
        sub difficulty,400h

        jmp option

backtoeasy:
        mov difficultyopt,1
        mov difficulty,012AAh

        jmp option

 
;==============================================================

about_option:


        call clearscreen
  
        mov ah,02h 
        mov bh,0h                                        
        mov dh,03d
        mov dl,38d
        int 10h

        mov ah,09h
        mov dx,offset about
        int 21h
                                          
        mov ah,00h
        int 16h 


        jmp menu


wrong_selection:

        call clearscreen
         
        cmp sound,1
        jne noerrorbeep
        call errorbeep  
noerrorbeep:
        mov ah,02h   
        mov bh,0h                   
        mov dh,01h
        mov dl,01h
        int 10h

        mov ah,09h
        mov dx,offset wrong_option_selection_msg
        int 21h
   
        mov ah,00h
        int 16h
 
        jmp menu 
   





;========================================================================
;Procedure Collection  
;========================================================================
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



;========================================================================
;Clear Screen Text Mode
;========================================================================
clearscreen:   
        mov CX, 0
        mov DX, 7924  ;dh=79 dl=24
        mov al, 0
        mov bh, 7h
        mov ah, 6h
        int 10h
      
        mov ah,02h                      
        mov dh,00d
        mov dl,00d
        int 10h       ;return cursor to beggining

        ret

;========================================================================
;Clear Screen Graph Mode
;========================================================================
clearscreengraph:
        mov ax, 0a000h
        mov es, ax
        xor di, di
        mov ax, 0
        mov cx, 320*200

        rep stosb

        ret

;========================================================================
;Put Pixel
;========================================================================
PutPixel:

  	mov di, 0
  	mov dx, bx
  	shl dx, 8
  	shl bx, 6
  	add di, ax
  	add di, bx
  	add di, dx
  	mov al, cl
  	stosb

  	ret

;=======================================================================
;Delay
;=======================================================================
delay:
        mov ax,0fffh
        dec cx
forr:
        dec ax
        cmp ax,0
        jne forr
        cmp cx,0
        jne delay

        ret
;=======================================================================
;Draw Asteroid
;=======================================================================
drawAsteroid: 



  	mov dx, AsteroidXYsize

  	mov ax, AsteroidX 
  	mov bx, AsteroidY
  	lea si, Asteroid
                 ;mov si,offset pic
cycle2:
   
        mov cl, [si]
        cmp cl,1
        jne cont
        mov cl,0fh

  	pusha

  	call PutPixel

  	popa
cont:
  	inc si
  	inc ax
  	dec dl
  	jnz cycle2                  ; X loop

  	mov dl, AsteroidXSize
  	sub ax, AsteroidXSize
  	inc bx
  	dec dh
  	jnz cycle2                  ; Y loop
  	
        ret
;=======================================================================
;Draw a blank picture over the asteroid
;=======================================================================
RemoveAsteroid:

  	mov dx, AsteroidXYsize

  	mov ax, AsteroidX 
  	mov bx, AsteroidY
  	lea si, Asteroid
                 ;mov si,offset pic
cycle4:
  	mov cl,[si]
        cmp cl,1
        jne nexttt
        mov cl,0
  	pusha

  	call PutPixel

  	popa
nexttt:
  	inc si
  	inc ax
  	dec dl
  	jnz cycle4                  ; X loop

  	mov dl, AsteroidXSize
  	sub ax, AsteroidXSize
  	inc bx
  	dec dh
  	jnz cycle4                  ; Y loop
  	
        ret

;=======================================================================
;Draw the bullet of player 1
;=======================================================================
DrawBulletp1:
  	

  
        mov dx, bulletXYsize
        mov ax,Bull1X
        mov bx,Bull1Y
  	lea si, bullet
                 ;mov si,offset pic
cycle1:
  	mov cl, [si]
  	pusha

  	call PutPixel

  	popa

  	inc si
  	inc ax
  	dec dl
  	jnz cycle1                  ; X loop

  	mov dl, bulletXsize
  	sub ax, bulletXsize
  	inc bx
  	dec dh
  	jnz cycle1                  ; Y loop
 
        ret

;=======================================================================
;Draw the bullet of player 2
;=======================================================================
DrawBulletp2:
  	

  
        mov dx, bulletXYsize
        mov ax,Bull2X
        mov bx,Bull2Y
  	lea si, bullet
                 ;mov si,offset pic
cycle8:
  	mov cl, [si]
  	pusha

  	call PutPixel

  	popa

  	inc si
  	inc ax
  	dec dl
  	jnz cycle8                  ; X loop

  	mov dl, bulletXsize
  	sub ax, bulletXsize
  	inc bx
  	dec dh
  	jnz cycle8                  ; Y loop
 
        ret

;=======================================================================
;Draw a blank picture over the bullet of player 1
;=======================================================================
removebulletp1:
  	
        
  
        mov dx, bulletXYsize
        mov ax,Bull1X
        mov bx,Bull1Y
  	lea si, bulletremove
                 ;mov si,offset pic
cycle3:
  	mov cl, [si]
  	pusha

  	call PutPixel

  	popa


  	inc si
  	inc ax
  	dec dl
  	jnz cycle3                  ; X loop

  	mov dl, bulletXsize
  	sub ax, bulletXsize
  	inc bx
  	dec dh
  	jnz cycle3                  ; Y loop

        ret


;=======================================================================
;Draw a blank picture over the bullet of player 2
;=======================================================================
removebulletp2:
  	
        
  
        mov dx, bulletXYsize
        mov ax,Bull2X
        mov bx,Bull2Y
  	lea si, bulletremove
                 ;mov si,offset pic
cycle9:
  	mov cl, [si]
  	pusha

  	call PutPixel

  	popa


  	inc si
  	inc ax
  	dec dl
  	jnz cycle9                  ; X loop

  	mov dl, bulletXsize
  	sub ax, bulletXsize
  	inc bx
  	dec dh
  	jnz cycle9                  ; Y loop

        ret

;=======================================================================
;Draw the spaceship of player 1
;=======================================================================
DrawSpaceship1:
        
       
  	mov dx, spaceshipXYsize

        mov ax, spaceship1X
  	mov bx, spaceship1Y
  	lea si, spaceship
                 ;mov si,offset pic
cycle:
  	mov cl, [si]
        cmp cl,1
        ja contin1
        cmp cl,1
        jb contin
        mov cl,p1color
contin1:

  	pusha

  	call PutPixel

  	popa
contin:
  	inc si
  	inc ax
  	dec dl
  	jnz cycle                  ; X loop

  	mov dl, spaceshipXsize
  	sub ax, spaceshipXsize
  	inc bx
  	dec dh
  	jnz cycle                  ; Y loop

        ret

;=======================================================================
;Draw the spaceship of player 2
;=======================================================================
DrawSpaceship2:
        
       
  	mov dx, spaceshipXYsize

        mov ax, spaceship2X
  	mov bx, spaceship2Y
  	lea si, spaceship
                 ;mov si,offset pic
cycle6:
  	mov cl, [si]
        cmp cl,1
        ja contin3
        cmp cl,1
        jb contin2
        mov cl,p2color
contin3:

  	pusha

  	call PutPixel

  	popa
contin2:
  	inc si
  	inc ax
  	dec dl
  	jnz cycle6                  ; X loop

  	mov dl, spaceshipXsize
  	sub ax, spaceshipXsize
  	inc bx
  	dec dh
  	jnz cycle6                 ; Y loop

        ret

;=======================================================================
;Draw a blank picture over the spaceship of player 1
;=======================================================================
removespaceship1:
  	mov dx, spaceshipXYsize

  	mov ax, spaceship1X 
  	mov bx, spaceship1Y
  	lea si, spaceship
                 ;mov si,offset pic
cycle5:
  	mov cl, [si]
        cmp cl,1
        jb next1
        mov cl,0
  	pusha

  	call PutPixel

  	popa

next1:
  	inc si
  	inc ax
  	dec dl
  	jnz cycle5                  ; X loop

  	mov dl, spaceshipXSize
  	sub ax, spaceshipXSize
  	inc bx
  	dec dh
  	jnz cycle5                  ; Y loop
  	
        ret

;=======================================================================
;Draw a blank picture over the spaceship of player 2
;=======================================================================
removespaceship2:
  	mov dx, spaceshipXYsize

  	mov ax, spaceship2X 
  	mov bx, spaceship2Y
  	lea si, spaceship
                 ;mov si,offset pic
cycle7:
  	mov cl, [si]
        cmp cl,1
        jb next11
        mov cl,0
  	pusha

  	call PutPixel

  	popa

next11:
  	inc si
  	inc ax
  	dec dl
  	jnz cycle7                  ; X loop

  	mov dl, spaceshipXSize
  	sub ax, spaceshipXSize
  	inc bx
  	dec dh
  	jnz cycle7                  ; Y loop
  	
        ret

;=======================================================================
;Sounds
;======================================================================
errorbeep proc near

        mov al,10110110b
        out 43h,al

        mov al,02h
        out 42h,al
        mov al,11h
        out 42h,al
        in al,61h

        or al,00000011b
        out 61h,al

        mov cx,0AAAAh
        call delay
      
        in al,61h
        and al,11111100b
        out 61h,al
        ret

errorbeep endp
;======================================================================
hitbeep proc near

        mov al,10110110b
        out 43h,al

        mov al,11h
        out 42h,al
        mov al,09h
        out 42h,al
        in al,61h

        or al,00000011b
        out 61h,al

        mov cx,08AAAh
        call delay
      
        in al,61h
        and al,11111100b
        out 61h,al
        ret

hitbeep endp
;======================================================================
impactbeep proc near


        mov al,10110110b
        out 43h,al

        mov al,02h
        out 42h,al
        mov al,0Fh
        out 42h,al
        in al,61h

        or al,00000011b
        out 61h,al

        mov cx,08AAAh
        call delay
      
        in al,61h
        and al,11111100b
        out 61h,al
        ret

impactbeep endp

;======================================================================
shootbeep proc near

        mov al,10110110b
        out 43h,al

        mov al,11h
        out 42h,al
        mov al,05h
        out 42h,al
        in al,61h

        or al,00000011b
        out 61h,al

        mov cx,08AAAh
        call delay
      
        in al,61h
        and al,11111100b
        out 61h,al
        ret

shootbeep endp


;=====================================================================


exit:
        mov ax,04c00h
        int 21h

end start    



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
           db "            1.Spacehip Color                                              ",10,13
           db "                                                                          ",10,13
           db "            2.Sound                                                       ",10,13          
           db "                                                                          ",10,13
           db "            3.Game Difficulty                                             ",10,13                 
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

AsteroidRemove db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
               db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
               db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
               db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
               db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
               db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
               db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
               db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
               db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
               db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
               db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
               db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
               db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
               db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
               db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
               db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
               db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
               db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

                                                                                    
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
       


  
;=================== Spaceship Parameters =============
spaceshipXsize   equ 20
spaceshipYsize   equ 22
spaceshipXYsize  equ 1214H
spaceshipX dw 160
spaceshipY dw 165
;=================== Asteroid Parameters ==============
AsteroidXSize equ 17
AsteroidYSize equ 18
AsteroidXYsize equ  1211H
AsteroidX dw ?
AsteroidY dw ?
;=================== Bullet Parameters ================  
BullX dw ?
BullY dw ?
bulletXsize equ 4
bulletXYsize equ 1504h
;======================================================

;==================== Game Parameters =================
score db 0
lives db 53
crsrx db ?
crsry db ?
speed db ?
shootstatus db 0 ;default no
almds db 0  ;Already Made Shoot Sound
color db 9  ;Default Blue
sound db 1  ;Default On
difficultyopt db 1   ;Default Easy
difficulty dw 012AAh ;Default Easy

;================================================================================================

CODESEG

start:
        mov ax,@data
        mov ds,ax
   
  

menu:
    
    
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
        mov spaceshipX,160
        mov AsteroidY,10
        mov shootstatus,0
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


reciveparam:

	mov si, spaceshipX   ;Recive Spaceship X position
        add si,8             ;Addjust bullet position
  	mov di, spaceshipY   ;Recive Spaceship Y position
        sub di,11            ;Addjust bullet position
        mov BullX,si
        mov BullY,di
        xor si,si
        xor di,di
        mov almds,0


maincycle:
        
        cmp shootstatus,1
        jne asdjmp
          
        cmp almds,1
        je noshootbeep
        cmp sound,1
        jne noshootbeep
        call shootbeep
        mov almds,1

noshootbeep:
        
        cmp BullY,16
	jb ReachLimit ;check limit
        


checkhit:
        mov ax,AsteroidX
        mov bx,AsteroidY
        add bx,12
        mov cx,AsteroidXsize
        mov dx,AsteroidYSize
        mov si,BullX
        add si,2

        cmp si,ax
        jnae end1          ;left side
        add ax,cx
        cmp si,ax
        jnbe end1          ;right side
        cmp BullY,bx
        jnbe end1          ;down side 
        add bx,dx 
        cmp BullY,bx
        jnae hit           ;top side

end1:
        sub bullY,4
  	call DrawBullet

        jmp asteroiddraw ;continue drawing asteroid


ReachLimit:

        mov shootstatus,0
        call removebullet
        mov ah,0Ch
        int 21h            ;clear buffer
	jmp maincycle
Hit:
        cmp sound,1
        jne nohitbeep
        call hitbeep

nohitbeep:

        mov shootstatus,0
        call removebullet
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
      
checkhitwithspaceship:

        mov ax,spaceshipX
        mov bx,spaceshipY
        sub bx,15
        mov cx,spaceshipXsize
        mov dx,spaceshipYSize
        mov si,AsteroidX
        add si,5

        cmp si,ax
        jnae end2             ;left side
        add ax,cx
        cmp si,ax
        jnbe end2             ;right side
        cmp AsteroidY,bx
        jnae end2             ;down side
        add bx,dx
        cmp AsteroidY,bx      ;top side
        jnae removeandlowhp





 
end2: 
        add AsteroidY,1 ;everything ok continue going down
       
        call DrawSpaceship      

        jmp ReadKey
  
;==========================================  
removeandlowhp:
        
        cmp sound,1
        jne noimpbeep    
        call impactbeep
noimpbeep:
        call removespaceship
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

Left_Limit_Check:

        cmp spaceshipX,5d
        jb maincyclejmp

  	sub spaceshipX,4d
        jmp maincycle

Skip1:

  	cmp ah, 77                 ; Right
  	jne Skip2
        

Right_Limit_Check:
 
        cmp spaceshipX,300d
        ja maincyclejmp

  	add spaceshipX,4d
        jmp maincycle
 
Skip2:
        cmp shootstatus,1
        je exit2
  	cmp ah,57              ;Space
        je shoot

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
shoot:
mov shootstatus,1
jmp reciveparam

        

;====================================================================
;Finish Game
;====================================================================
Game_Over:
     
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

coloroption:

        mov ah,02h 
        mov bh,0h                                        
        mov dh,05d
        mov dl,48d
        int 10h                 ;Set Cursor Position

        cmp color,10
        je nextcolor10
        cmp color,11
        je nextcolor11
        cmp color,12
        je nextcolor12 
        cmp color,13
        je nextcolor13
        cmp color,14
        je nextcolor14
        cmp color,15
        je nextcolor15

        mov ah,09h
        mov dx,offset blue
        int 21h
        jmp soundoption

nextcolor10:

        mov ah,09h
        mov dx,offset green
        int 21h
        jmp soundoption

nextcolor11:

        mov ah,09h
        mov dx,offset skyblue
        int 21h
        jmp soundoption

nextcolor12:

        mov ah,09h
        mov dx,offset red
        int 21h
        jmp soundoption

nextcolor13:

        mov ah,09h
        mov dx,offset purple
        int 21h
        jmp soundoption

nextcolor14:

        mov ah,09h
        mov dx,offset yellow
        int 21h
        jmp soundoption

nextcolor15:

        mov ah,09h
        mov dx,offset white
        int 21h
        jmp soundoption

soundoption:  
              
        mov ah,02h 
        mov bh,0h                                        
        mov dh,07d
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

difficultyoption:

        mov ah,02h 
        mov bh,0h                                        
        mov dh,09d
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
        je changecolor
        cmp ah,3
        je changesound
        cmp ah,4
        je changedifficulty
        cmp ah,1
        je jmpmenu
        
        jmp key

jmpmenu:
        jmp menu


changecolor:

        cmp color,15
        je backtoblue
        inc color
        jmp option

backtoblue:
        mov color,9
 
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
        mov DX, 7924
        mov al, 0
        mov bh, 7h
        mov ah, 6h
        int 10h
      
        mov ah,02h                      
        mov dh,00d
        mov dl,00d
        int 10h

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
cont:
  	pusha

  	call PutPixel

  	popa

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
  	lea si, AsteroidRemove
                 ;mov si,offset pic
cycle4:
  	mov cl, [si]
  	pusha

  	call PutPixel

  	popa

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
;Draw the bullet
;=======================================================================
DrawBullet:
  	

  
        mov dx, bulletXYsize
        mov ax,BullX
        mov bx,BullY
  	lea si, bullet
                 ;mov si,offset pic
cycle1:
  	mov cl, [si]
  	pusha

  	call PutPixel

  	popa


continue:

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
;Draw a blank picture over the bullet
;=======================================================================
removebullet:
  	
        
  
        mov dx, bulletXYsize
        mov ax,BullX
        mov bx,BullY
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
;Draw the spaceship
;=======================================================================
DrawSpaceship:
  	mov dx, spaceshipXYsize

        mov ax, spaceshipX
  	mov bx, spaceshipY
  	lea si, spaceship
                 ;mov si,offset pic
cycle:
  	mov cl, [si]
        cmp cl,1
        jne contin
        mov cl,color
contin:
  	pusha

  	call PutPixel

  	popa

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
;Draw a blank picture over the spaceship
;=======================================================================
removespaceship:
  	mov dx, AsteroidXYsize

  	mov ax, spaceshipX 
  	mov bx, spaceshipY
  	lea si, AsteroidRemove         ;same size as spaceship
                 ;mov si,offset pic
cycle5:
  	mov cl, [si]
  	pusha

  	call PutPixel

  	popa

  	inc si
  	inc ax
  	dec dl
  	jnz cycle5                  ; X loop

  	mov dl, AsteroidXSize
  	sub ax, AsteroidXSize
  	inc bx
  	dec dh
  	jnz cycle5                  ; Y loop
  	
        ret

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



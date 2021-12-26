.model small
.stack 64
.data 
mes1 db 'Please enter your name:','$'
points db 'Initial points:','$'
mes2 db  'Please press enter to continue','$'
chatting db 'To start chatting Press F1','$'
game     db 'To start the game Press F2','$'
endprogram db 'To end the program press ESC','$'
ErrorJumpKey db 'Please enter a correct chice:','$'
Contain_Digit_Mess db 'Name can not contain Digits:','$'
contain_Special_Mess db 'Name can not contain Special characters:','$'
separate  db  80 dup('-'),'$'
newline db ,10,13,'$'
pts1    db 6,?,6 dup('$')
name1 db 16,?,16 dup('$')
pts2    db 6,?,6 dup('$')
pts_total   db ?
name2 db 16,?,16 dup('$') 
;winners messages 
player_wins_disp db ' is WINNER !','$'
player_points_disp db ' Points','$'
 
;loosers messages 
player_looses_disp db ' is Looser ;(','$'

;message to return to main menu
enterKey_to_return_main_menu db  'Enter key to return to main menu','$'


.code
main      proc far 
          mov ax , @data
          mov ds,ax
                         
                         
     call clear
StartOfCode:          
mov ah,9           ; display message for entering name
mov dx,offset mes1
int 21h 

mov ah,9            ; for new line
mov dx,offset newline
int 21h  

                    ; for entering name of user
mov ah,0Ah
mov dx,offset name1
int 21h 

mov ch,[name1+1] ; the actual size of the name 
mov si , offset [name1+2] ; the 1st letter of the name

  call Checks_For_Name_1       ;Checks that name1 does not contain any digits or special characters

     ;call dispname                    
     ;call newline1                   
     ;call enterusername
jmp continue 


; to display a message if name contain a number
ContainANumber:
mov ah,9            ; for new line
mov dx,offset newline
int 21h

mov ah,9            
mov dx,offset Contain_Digit_Mess
int 21h

mov ah,9            ; for new line
mov dx,offset newline
int 21h

jmp StartOfCode

;to diplay a message if name contain a special character

containAspecial:
mov ah,9            ; for new line
mov dx,offset newline
int 21h
       
mov ah,9            
mov dx,offset Contain_Special_Mess
int 21h

mov ah,9            ; for new line
mov dx,offset newline
int 21h

jmp StartOfCode       

 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; K.Elsheikh ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
continue:     
     
     call newline1 
     call newline1 
     call disp_intial_points  
     call newline1 
     call enter_initial_points                
     call newline1                    
     call newline1  
     call disp_enter
     call checkenter_key 
     ;k y
     call clear  
     call move_cursor_to0000h
startOfCode2:
     call dispname                    
     call newline1 
                         ; for entering name of user 2
     mov ah,0Ah
     mov dx,offset name2
     int 21h     
     
     call Checks_For_Name_2  ;checks that name2 does not contain any didits or special characters
     
     jmp continue2 


; to display a message if name contain a number
ContainANumber2:
mov ah,9            ; for new line
mov dx,offset newline
int 21h

mov ah,9            
mov dx,offset Contain_Digit_Mess
int 21h

mov ah,9            ; for new line
mov dx,offset newline
int 21h

jmp StartOfCode2

;to diplay a message if name contain a special character

containAspecial2:
mov ah,9            ; for new line
mov dx,offset newline
int 21h
       
mov ah,9            
mov dx,offset Contain_Special_Mess
int 21h

mov ah,9            ; for new line
mov dx,offset newline
int 21h

jmp StartOfCode2       

 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; K.Elsheikh ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 


continue2:
     
     call newline1
     call newline1
     call disp_intial_points
     call newline1      
     
     mov ah,0Ah         ; for entering initial points
     mov dx,offset pts2
     int 21h     
     
     call newline1
     call newline1
     call disp_enter
     call checkenter_key              
                  
     
     
     ;k y
     je main_menu 
     
 main_menu:
 
     call clear
     call  print_firstx
     call display_main_menu_functionalities
     
Get_key:

mov ah,0   ;Get key pressed 
int 16h
mov bl,09h
cmp al,bl
mov bl,0 
mov al,0 

jz Chatting_Mode

mov bl,2eh;ky changed 3ch to 2eh compatible withe emu
cmp ah,bl  

jz game_mode

mov bl,1bh
cmp ah,bl 

jz end_program

        
call print_sameX_incY


mov ah,9           ; display error message
mov dx,offset ErrorJumpKey
int 21h
mov ax,0 


jmp Get_key
      
                      
 Chatting_Mode:
 
     call clear
      hlt
     
 game_mode:
     
     call clear 
     call gamemodesetup     ;ky
     ;call print_sameX_incY
     ;call dispname                    
     ;call newline1 
     ;call print_sameX_incY                  
     ;call enterusername 
        
 end_program:
  
     hlt                 
                         
              ;////////////////// 
              
              
              
     checkenter_key proc               
                   
mov ah,0      ;check if enter key is pressed
int 16h
mov bl,1ch
cmp ah,bl
 


  
      ret
     
     checkenter_key endp  
                   
               ;//////////////////
                   
       disp_enter proc        
                   
                   
mov ah,9           ; display message'Press enter key to continue'
mov dx,offset mes2
int 21h   

      ret
     
      disp_enter endp
 
              ;//////////////////
                 
      enter_initial_points proc           
                 
mov ah,0Ah         ; for entering initial points
mov dx,offset pts1
int 21h
         
      ret
     
      enter_initial_points endp
    
                 
              ;//////////////////
                    
    disp_intial_points proc    
                 
 mov ah,9           ; display message for entering initial points
mov dx,offset points
int 21h 
                
             
    ret
     
    disp_intial_points endp
    
             ;//////////////////
             
     enterusername proc 
                                ; for entering name of user
mov ah,0Ah
mov dx,offset name1
int 21h 
          
             
     ret
     
     enterusername endp      
     
     
            ;//////////////////
                   
    newline1 proc        
mov ah,9            ; for new line
mov dx,offset newline
int 21h  
            
            
     ret
     
     newline1 endp  
    
    
           ;//////////////////   
           
    dispname proc   
             
 mov ah,9           ; display message for entering name
mov dx,offset mes1
int 21h 
         ret
     
   dispname endp
       
           ;//////////////////  
           
           
   clear proc 
    
mov ax,0600h  ;clear screen
mov bh,07
mov cx,0
mov dx,184fh
int 10h 

    ret
     
    clear endp 
   
   
    ;////////////////// 
    
    
 print_firstx proc   
mov bx,0h  ;kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
mov ah,2     ;move cursor
mov dx,0718h     ;the midlle of the screen kkkkkkkkkkkkkkkkkkkkkkkkk  0718h
mov di,dx ;to protect the last starting location kkkkkkkkkkkkkkkkkkkkkkkkkkk******************************** step 1   -->step 2 call PROC print_sameX_incY
int 10h        
     
       ret
     
    print_firstx endp  
 
 
    ;//////////////////
                                 
print_Middle_graphic_screen  proc   
    mov bx,0h  ;kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
    mov ah,2     ;move cursor
    mov dx,0505h     ;the midlle of the screen kkkkkkkkkkkkkkkkkkkkkkkkk  0718h
    mov di,dx ;to protect the last starting location kkkkkkkkkkkkkkkkkkkkkkkkkkk******************************** step 1   -->step 2 call PROC print_sameX_incY
    int 10h        
     
       ret
     
    print_Middle_graphic_screen endp 
                                
 
      ;//////////////////      ****k y   
      
      
  move_cursor_to0000h proc    
        mov bx,0h  ;kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
        mov ah,2     ;move cursor to begining of screen
        mov dx,0000h
        int 10h        
        ret 
        move_cursor_to0000h endp
        
      ;//////////////////      *****k y
   display_main_menu_functionalities  proc
    
    
                 
mov ah,9            
mov dx,offset chatting
int 21h  
       

call print_sameX_incY                  ;kkkkkkkkkkkkkkkkkkkkkkkkkkkk


mov ah,9            
mov dx,offset game
int 21h     

call print_sameX_incY                  ;kkkkkkkkkkkkkkkkkkkkkkkkkkkk


mov ah,9            
mov dx,offset endprogram
int 21h   
                    
                    
                 ret
     
   display_main_menu_functionalities endp  
   
   
    ;//////////////////
   
   
   print_sameX_incY PROC 
    
    
    mov bx,0h     ;kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
    mov ah,2      ;move cursor  
    mov dx,di     ;to GET  the PROTECTED last starting location kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk**************************
    add dh,1h     ;the midlle of the screen kkkkkkkkkkkkkkkkkkkkkkkkk   *****************************************
    mov di,dx     ;to protect the last starting location kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk***************************************** 
    int 10h
    
    
    RET
    print_sameX_incY ENDP  
        
        
        gamemodesetup proc
          
      mov ah, 0      ;graphics mode       28 h x 19 h
      mov al, 13h
      int 10h        
      
      mov al,pts1+2
      mov ah,pts2+2
      cmp ah,al         
      
      jnz pts2_or_pts1 
      mov pts_total,al ;2 points are equal
      jmp finished_total_points  
      
      pts2_or_pts1: jc pts2_smaller
                    jnc   pts1_smaller    
                    
                    pts2_smaller: mov pts_total,ah          ;  points 2 smaller
                                  mov [pts1+2],ah
                                  jmp finished_total_points    
                                  
                    pts1_smaller: mov pts_total,al          ;  points 1 smaller
                                  mov [pts2+2],al
                    
      finished_total_points:
      call gameflow
      
                        
      mov ah,2     ;move cursor to the middle of the screen  
      mov bx,0h  ;kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
      mov dx,3026h
      int 10h                  
            
      mov ah,0eh    ;int to print char in graphical mode
      mov al,'2'  
      mov bl, 0eh   
      int 10h
      
    
    ret
     
     gamemodesetup endp 
        
      ;//////////////////
      gameflow proc   
            
        ;loop until one player points =0 then game ended
        whileNoWinner: mov al,pts1+2
                       mov ah,pts2+2
                       cmp al,0h         ;check player 1 points =0 then P1 looser, P2 winner
                       jnz checkPlayer1_points
                       call player2_winner
                       jmp finish_game        
                       
                       checkPlayer1_points: cmp ah,0h                  ;check player 2 points =0 then P2 looser, P1 winner
                                            jnz continue_game_no_winner
                                            call player1_winner
                                            jmp finish_game  
                                            
                                            
                       continue_game_no_winner:
                       ;game logic                     
        
                       ; trial to finish game
                       mov al,pts1+2
                       dec al
                       mov pts1+2,al
        jmp    whileNoWinner
        
        finish_game:
        call clear
        jmp main_menu 
        
        ret
        gameflow endp   
      
         ;////////////////// 
         
         player2_winner proc  
            
            call clear
            call print_Middle_graphic_screen ;move cursor middle of screen 
            
            
            mov ah,9           ; display winner: player 2 name 
            mov dx,offset name2+2
            int 21h
            mov ax,0 
            
            mov ah,9           ; display winner message
            mov dx,offset player_wins_disp+2
            int 21h
            mov ax,0     
                   
            call  print_sameX_incY 
            call  print_sameX_incY
            
            mov ah,9           ; display winner: player 2 name 
            mov dx,offset name2+2
            int 21h
            mov ax,0
            
             mov ah,9           ; display winner: player 2  points remaining
            mov dx,offset pts2+2
            int 21h
            mov ax,0            
            
            mov ah,9           ; display word 'points' 
            mov dx,offset player_points_disp+2
            int 21h
            mov ax,0 
            
            call  print_sameX_incY      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
            call  print_sameX_incY 
            call  print_sameX_incY
            
            mov ah,9           ; display looser: player 1 name 
            mov dx,offset name1+2
            int 21h
            mov ax,0 
            
            mov ah,9           ; display looser message
            mov dx,offset player_looses_disp+2
            int 21h
            mov ax,0     
                   
            call  print_sameX_incY 
            call  print_sameX_incY  
            
            mov ah,9           ; display looserr: player 1 name 
            mov dx,offset name1+2
            int 21h
            mov ax,0
            
             mov ah,9           ; display looser: player 1  points == 0
            mov dx,'0'
            int 21h
            mov ax,0  
            
            mov ah,9           ; display word 'points' 
            mov dx,offset player_points_disp+2
            int 21h
            mov ax,0            
            
            call  print_sameX_incY      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
            call  print_sameX_incY
            call  print_sameX_incY  
            
              
            
            mov ah,9           ; display enterKey_to_return_main_menu
            mov dx,offset enterKey_to_return_main_menu+2
            int 21h
            mov ax,0       
            
            
            
            mov ah,0   ;Get key pressed 
            int 16h
            mov bl,09h
            cmp al,bl
            mov bl,0 
            mov al,0 
                         
                         
             
            
            ret
            player2_winner endp
         
         ;//////////////////    
         
         player1_winner proc
            
            call clear
            call print_Middle_graphic_screen ;move cursor middle of screen 
            
            
            mov ah,9           ; display winner: player 1 name 
            mov dx,offset name1+2
            int 21h
            mov ax,0 
            
            mov ah,9           ; display winner message
            mov dx,offset player_wins_disp+2
            int 21h
            mov ax,0     
                   
            call  print_sameX_incY 
            call  print_sameX_incY
            
            mov ah,9           ; display winner: player 1 name 
            mov dx,offset name1+2
            int 21h
            mov ax,0
            
             mov ah,9           ; display winner: player 1  points remaining
            mov dx,offset pts1+2
            int 21h
            mov ax,0            
            
            mov ah,9           ; display word 'points' 
            mov dx,offset player_points_disp+2
            int 21h
            mov ax,0 
            
            call  print_sameX_incY      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
            call  print_sameX_incY
            call  print_sameX_incY
            
            mov ah,9           ; display looser: player 2 name 
            mov dx,offset name2+2
            int 21h
            mov ax,0 
            
            mov ah,9           ; display looser message
            mov dx,offset player_looses_disp+2
            int 21h
            mov ax,0     
                   
            call  print_sameX_incY 
            call  print_sameX_incY  
            
            mov ah,9           ; display looserr: player 2 name 
            mov dx,offset name2+2
            int 21h
            mov ax,0
            
             mov ah,9           ; display looser: player 2  points == 0
            mov dx,'0'
            int 21h
            mov ax,0  
            
            mov ah,9           ; display word 'points' 
            mov dx,offset player_points_disp+2
            int 21h
            mov ax,0            
            
            call  print_sameX_incY      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
            call  print_sameX_incY  
            call  print_sameX_incY
             
            
            mov ah,9           ; display enterKey_to_return_main_menu
            mov dx,offset enterKey_to_return_main_menu+2
            int 21h
            mov ax,0       
            
           
            
            mov ah,0   ;Get key pressed 
            int 16h
            mov bl,09h
            cmp al,bl
            mov bl,0 
            mov al,0 
            
            ret
            player1_winner endp 
         
         
   Checks_For_Name_1  Proc 
    
    ; to check if name contain a number or not  
loop1:
mov bl,30h
mov cl ,0Ah 
cmp bl,[si] 
jz ContainANumber 
loop2:
inc bl
cmp bl,[si]
Jz ContainANumber
dec cl
Jnz loop2
inc si
dec ch
Jnz loop1

;to check if name contain a special character
mov ch,[name1+1]
mov si , offset [name1+2]

loop3:
mov bl,21h ; the special character=!
mov cl,0Eh ; the number of special characters from ! to /
cmp bl,[si]
jz containAspecial
loop4:
inc bl
cmp bl,[si]
jz containAspecial
dec cl
jnz loop4
inc si
dec ch
jnz loop3 

mov ch,[name1+1]
mov si , offset [name1+2]

loop5:
mov bl,3Ah  ;special character = :
mov cl,06h  ;the number of special characters from : to @
cmp bl,[si]
jz containAspecial
loop6:
inc bl
cmp bl,[si]
jz containAspecial
dec cl
jnz loop6
inc si
dec ch
jnz loop5

mov ch,[name1+1]
mov si , offset [name1+2]

loop7:
mov bl,5Bh ;special character=[
mov cl,05h ;number of special characters from [ to ' 
cmp bl,[si]
jz containAspecial
loop8:
inc bl
cmp bl,[si]
jz containAspecial
dec cl
jnz loop8
inc si
dec ch
jnz loop7 

mov ch,[name1+1]
mov si , offset [name1+2]


loop9:
mov bl,7Bh ;special character={
mov cl,03h ;number of special characters from { to ~ 
cmp bl,[si]
jz containAspecial
loop10:
inc bl
cmp bl,[si]
jz containAspecial
dec cl
jnz loop10
inc si
dec ch
jnz loop9 
    
    Ret
    Checks_For_Name_1  endp
   
Checks_For_Name_2  proc
    
    mov ch,[name2+1] ; the actual size of the name 
mov si , offset [name2+2] ; the 1st letter of the name

; to check if name contain a number or not  
loop12:
mov bl,30h
mov cl ,0Ah 
cmp bl,[si] 
jz ContainANumber2 
loop22:
inc bl
cmp bl,[si]
Jz ContainANumber2
dec cl
Jnz loop22
inc si
dec ch
Jnz loop12

;to check if name contain a special character
mov ch,[name2+1]
mov si , offset [name2+2]

loop32:
mov bl,21h ; the special character=!
mov cl,0Eh ; the number of special characters from ! to /
cmp bl,[si]
jz containAspecial2
jnz loop42
loop42:
inc bl
cmp bl,[si]
jz containAspecial2
dec cl
jnz loop42
inc si
dec ch
jnz loop32 

mov ch,[name2+1]
mov si , offset [name2+2]

loop52:
mov bl,3Ah  ;special character = :
mov cl,06h  ;the number of special characters from : to @
cmp bl,[si]
jz containAspecial2
loop62:
inc bl
cmp bl,[si]
jz containAspecial2
dec cl
jnz loop62
inc si
dec ch
jnz loop52

mov ch,[name2+1]
mov si , offset [name2+2]

loop7_2:
mov bl,5Bh ;special character=[
mov cl,05h ;number of special characters from [ to ' 
cmp bl,[si]
jz containAspecial2
loop8_2:
inc bl
cmp bl,[si]
jz containAspecial2
dec cl
jnz loop8_2
inc si
dec ch
jnz loop7_2 

mov ch,[name2+1]
mov si , offset [name2+2]


loop92:
mov bl,7Bh ;special character={
mov cl,03h ;number of special characters from { to ~ 
cmp bl,[si]
jz containAspecial2
loop102:
inc bl
cmp bl,[si]
jz containAspecial2
dec cl
jnz loop102
inc si
dec ch
jnz loop92
    
    
    
    
    
    
    ret
    
    
    Checks_For_Name_2  endp           
      

     end main 
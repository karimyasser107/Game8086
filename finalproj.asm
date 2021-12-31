.model small
.386
.stack 64
.DATA
mes1 db 'Please enter your name:','$'
points db 'Initial points:','$'
mes2 db  'Please press enter to continue','$'
chatting db 'To start chatting Press F1','$'
game     db 'To start the game Press F2','$'
endprogram db 'To end the program press ESC','$'
ErrorJumpKey db 'Please enter a correct choice:','$'
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
f1                     db  61
f2                     db  60   
;message for level menu
Level1     db  'For Level 1 Press f1','$'
Level2     db  'For Level 2 press f2','$'


semicolumn db ':','$'
;vars for processor 1 (NECESSARY for input and output ONLY)
reg_Ax_1 db 5,?,5 dup('0'),'$'
reg_Bx_1 db 5,?,5  dup('0'),'$'
reg_Cx_1 db 5,?,5  dup('0'),'$'
reg_Dx_1 db 5,?,5  dup('0'),'$'
reg_SI_1 db 5,?,5  dup('0'),'$'
reg_DI_1 db 5,?,5  dup('0'),'$'
reg_SP_1 db 5,?,5  dup('0'),'$'
reg_BP_1 db 5,?,5  dup('0'),'$'
;vars for processor 2 (NECESSARY for input and output ONLY)
reg_Ax_2 db 5,?,5  dup('0'),'$'
reg_Bx_2 db 5,?,5  dup('0'),'$'
reg_Cx_2 db 5,?,5  dup('0'),'$'
reg_Dx_2 db 5,?,5  dup('0'),'$'
reg_SI_2 db 5,?,5  dup('0'),'$'
reg_DI_2 db 5,?,5  dup('0'),'$'
reg_SP_2 db 5,?,5  dup('0'),'$'
reg_BP_2 db 5,?,5  dup('0'),'$'
;real vars for processor 1 
real_reg_Ax_1 dw 0000h
real_reg_Bx_1 dw 0000h
real_reg_Cx_1 dw 0000h
real_reg_Dx_1 dw 0000h
real_reg_SI_1 dw 0000h
real_reg_DI_1 dw 0000h
real_reg_SP_1 dw 0000h
real_reg_BP_1 dw 0000h
;real vars for processor 2
real_reg_Ax_2 dw 0000h
real_reg_Bx_2 dw 0000h
real_reg_Cx_2 dw 0000h
real_reg_DX_2 dw 0000h
real_reg_SI_2 dw 0000h
real_reg_DI_2 dw 0000h
real_reg_SP_2 dw 0000h
real_reg_BP_2 dw 0000h

;Vars for memory 1
memory_0_1 db 3,?,3 dup('0'),'$'
memory_1_1 db 3,?,3 dup('0'),'$'
memory_2_1 db 3,?,3 dup('0'),'$'
memory_3_1 db 3,?,3 dup('0'),'$'
memory_4_1 db 3,?,3 dup('0'),'$'
memory_5_1 db 3,?,3 dup('0'),'$'
memory_6_1 db 3,?,3 dup('0'),'$'
memory_7_1 db 3,?,3 dup('0'),'$'
memory_8_1 db 3,?,3 dup('0'),'$'
memory_9_1 db 3,?,3 dup('0'),'$'
memory_A_1 db 3,?,3 dup('0'),'$'

;real memory
real_memory_0_1 db 00h 
real_memory_1_1 db 00h
real_memory_2_1 db 00h
real_memory_3_1 db 00h
real_memory_4_1 db 00h
real_memory_5_1 db 00h
real_memory_6_1 db 00h
real_memory_7_1 db 00h
real_memory_8_1 db 00h
real_memory_9_1 db 00h
real_memory_A_1 db 00h
;Vars for memory 2
memory_0_2 db 3,?,3 dup('0'),'$'
memory_1_2 db 3,?,3 dup('0'),'$'
memory_2_2 db 3,?,3 dup('0'),'$'
memory_3_2 db 3,?,3 dup('0'),'$'
memory_4_2 db 3,?,3 dup('0'),'$'
memory_5_2 db 3,?,3 dup('0'),'$'
memory_6_2 db 3,?,3 dup('0'),'$'
memory_7_2 db 3,?,3 dup('0'),'$'
memory_8_2 db 3,?,3 dup('0'),'$'
memory_9_2 db 3,?,3 dup('0'),'$'
memory_A_2 db 3,?,3 dup('0'),'$'

;real memory
real_memory_0_2 db 00h
real_memory_1_2 db 00h
real_memory_2_2 db 00h
real_memory_3_2 db 00h
real_memory_4_2 db 00h
real_memory_5_2 db 00h
real_memory_6_2 db 00h
real_memory_7_2 db 00h
real_memory_8_2 db 00h
real_memory_9_2 db 00h
real_memory_A_2 db 00h

;array of locations for memory to print it (10 names for 10 locations)
memory_locations_names db '0','$','1','$','2','$','3','$','4','$','5','$','6','$','7','$','8','$','9','$','A','$'
;array of locations for memory to print it (10 names for 10 locations)
registers_names db 'A','X','$','B','X','$','C','X','$','D','X','$','S','I','$','D','I','$','S','P','$','B','P','$'
;value to put in register and win the game
value_in_REG_to_win dw 105eh

;ky try check github
;;;;;;varibles for commands
Mess_command db 'Please enter your command:','$'
wrong_Command db 'This command is disallowed!!','$'
Mess_Operand   db  'Enter your operand:','$'
error_register   db  'Invalid register name:','$'
Mess_operand_1  db  'Enter 1st operand:','$'
Mess_operand_2   db  'Enter 2nd operand:','$'
size_mismatch   db  'Size_Mismatch:','$'
value_OR_register db  'value(v)orregister(r)?','$'
Mess_value        db  'Enter your value:','$'

command  db 5,?,5 dup('$')
operand_1 db 5,?,5 dup('$')
operand_2 db 5,?,5 dup('$')
vORr      db 2,?,2 dup('$')
value     db 5,?,5 dup('$')
value2    db 3,?,3 dup('$')
;carry flags
Carry_Flag_1 db 1h
carry_Flag_2 db 1h 


.code 
main      proc far 
          mov ax , @data
          mov ds,ax
                         
                         
     call clear
StartOfCode:          
mov ah,9           ; display message for entering name
LEA dx, mes1
int 21h 

mov ah,9            ; for new line
LEA dx, newline
int 21h  

                    ; for entering name of user
mov ah,0Ah
LEA dx, name1
int 21h 

mov ch,[name1+1] ; the actual size of the name 
LEA si,[name1+2] ; the 1st letter of the name

  call Checks_For_Name_1       ;Checks that name1 does not contain any digits or special characters

     ;call dispname                    
     ;call newline1                   
     ;call enterusername
jmp continue1 


; to display a message if name contain a number
ContainANumber:
mov ah,9            ; for new line
LEA dx, newline
int 21h

mov ah,9            
LEA dx, Contain_Digit_Mess
int 21h

mov ah,9            ; for new line
LEA dx, newline
int 21h

jmp StartOfCode

;to diplay a message if name contain a special character

containAspecial:
mov ah,9            ; for new line
LEA dx, newline
int 21h
       
mov ah,9            
LEA dx, Contain_Special_Mess
int 21h

mov ah,9            ; for new line
LEA dx, newline
int 21h

jmp StartOfCode       

 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; K.Elsheikh ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
continue1:     
     
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
     LEA dx, name2
     int 21h     
     
     call Checks_For_Name_2  ;checks that name2 does not contain any didits or special characters
     
     jmp continue2 


; to display a message if name contain a number
ContainANumber2:
mov ah,9            ; for new line
LEA dx, newline
int 21h

mov ah,9            
LEA dx, Contain_Digit_Mess
int 21h

mov ah,9            ; for new line
LEA dx, newline
int 21h

jmp StartOfCode2

;to diplay a message if name contain a special character

containAspecial2:
mov ah,9            ; for new line
LEA dx, newline
int 21h
       
mov ah,9            
LEA dx, Contain_Special_Mess
int 21h

mov ah,9            ; for new line
LEA dx, newline
int 21h

jmp StartOfCode2       

 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; K.Elsheikh ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 


continue2:
     
     call newline1
     call newline1
     call disp_intial_points
     call newline1      
     
     mov ah,0Ah         ; for entering initial points
     LEA dx, pts2
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

mov            ah,0
 int            16h


cmp            ah,f1  
 jz Chatting_Mode
	                           
 jnz            CHECK_F2

  CHECK_F2:                  
cmp            ah,f2  
jmp game_mode
jnz            CHECK_ESC
							   
CHECK_ESC: 

mov bl,01h
cmp ah,bl
jz end_program


        
call print_sameX_incY


mov ah,9           ; display error message
LEA dx, ErrorJumpKey
int 21h
mov ax,0 


jmp Get_key
      
                      
 Chatting_Mode:
 
     call clear
      hlt
     
 game_mode:
     
    call clear     
     call choose_level     ;ky
     ;call print_sameX_incY
     ;call dispname                    
     ;call newline1 
     ;call print_sameX_incY                  
     ;call enterusername 
        
 end_program:
  
     hlt   
     ENDP              
                         
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
LEA dx, mes2
int 21h   

      ret
     
      disp_enter endp
 
              ;//////////////////
                 
      enter_initial_points proc           
                 
mov ah,0Ah         ; for entering initial points
LEA dx, pts1
int 21h
         
      ret
     
      enter_initial_points endp
    
                 
              ;//////////////////
                    
    disp_intial_points proc    
                 
 mov ah,9           ; display message for entering initial points
LEA dx, points
int 21h 
                
             
    ret
     
    disp_intial_points endp
    
             ;//////////////////
             
     enterusername proc 
                                ; for entering name of user
mov ah,0Ah
LEA dx, name1
int 21h 
          
             
     ret
     
     enterusername endp      
     
     
            ;//////////////////
                   
    newline1 proc        
mov ah,9            ; for new line
LEA dx, newline
int 21h  
            
            
     ret
     
     newline1 endp  
    
    
           ;//////////////////   
           
    dispname proc   
             
 mov ah,9           ; display message for entering name
LEA dx, mes1
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
    mov dx,0019h     ;the midlle of the screen kkkkkkkkkkkkkkkkkkkkkkkkk  0718h
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
LEA dx, chatting
int 21h  
       

call print_sameX_incY                  ;kkkkkkkkkkkkkkkkkkkkkkkkkkkk


mov ah,9            
LEA dx, game
int 21h     

call print_sameX_incY                  ;kkkkkkkkkkkkkkkkkkkkkkkkkkkk


mov ah,9            
LEA dx, endprogram
int 21h   
                    
                    
                 ret
     
   display_main_menu_functionalities endp  
   
   
   ;////////////////// sondos      
    
        display_level_menu_functionalities  proc
    
    
                 
mov ah,9            
mov dx,offset level1
int 21h  
       

call print_sameX_incY                  


mov ah,9            
mov dx,offset level2
int 21h     

call print_sameX_incY                  


mov ah,9            
mov dx,offset endprogram
int 21h   
                    
                    
                 ret
     
   display_level_menu_functionalities endp  
   ;////////////////////////////////////////////////////////////////////////  sondos
   
 choose_level  proc    
    
    level_menu:
 
     call clear
     call  print_firstx
     call display_level_menu_functionalities
     
Get_key_2:

 mov            ah,0
 int            16h


cmp            ah,f1  
 jmp level_1
	                           
 jnz            CHECK_F2_2


CHECK_F2_2:                  
cmp            ah,f2  
jz level_2
jnz            CHECK_ESC_2
							   
CHECK_ESC_2: 

mov bl,01h
cmp ah,bl
jz end_program   

level_1:
call gamemodesetup  
level_2:
hlt

            ret
     
   choose_level endp 
    ;///////////////////////////////////////////////////
   
   
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
          
      mov ah, 0      ;graphics mode        size    320d x 200d   pixels
      mov al, 13h
      int 10h        
      
      mov cx,160d ;########################################################################### print vertical sep line
      mov dx,0
      mov al,05h
      mov ah,0ch
      back_to_draw_line:int 10h
                        inc dx
                        cmp dx,176d
                        jnz back_to_draw_line
                        

      mov cx,133d ;########################################################################### print vertical sep line for memoryyy_1_129/12/2021 changed numbers**
      mov dx,0
      mov al,0eh
      mov ah,0ch
      back_to_draw_line_memory_1_1:int 10h
                        inc dx
                        cmp dx,176d
                        jnz back_to_draw_line_memory_1_1
     ; mov cx,305d ;########################################################################### print vertical sep line for memoryyyy_2   29/12/2021 commented***
     ; mov dx,0
     ; mov al,0eh
     ; mov ah,0ch
     ; back_to_draw_line_memory_2:int 10h
     ;                   inc dx
     ;                   cmp dx,176d
     ;                   jnz back_to_draw_line_memory_2
      mov cx,293d ;########################################################################### print vertical sep line for memoryyyy_2_2 29/12/2021 changed***
      mov dx,0
      mov al,0eh
      mov ah,0ch
      back_to_draw_line_memory_2_2:int 10h
                        inc dx
                        cmp dx,176d
                        jnz back_to_draw_line_memory_2_2                     
                        
      mov cx,0d ;################################################################################ print horizontal sep line
      mov dx,176d
      mov al,05h
      mov ah,0ch
      back_to_draw_inline_chat_lines:int 10h
                        inc cx
                        cmp cx,320d
                        jnz back_to_draw_inline_chat_lines  
                       

      mov bl,10d  ;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& no. of line in the memory_129/12/2021 changed***
      mov dx,16d ;separation between 2 memory lines
      loop_print_horiz_lines_memory_1:
      

      mov cx,133d ;&&&&&&&&&&&&&&&&print horizontal sep line memory&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& 29/12/2021 changed***
      
      mov al,0eh
      mov ah,0ch
      back_to_draw_line_memory_horiz_1:int 10h
                        inc cx
                        cmp cx,160d
                        jnz back_to_draw_line_memory_horiz_1
        
        add dx,16d
        dec bl
        jnz loop_print_horiz_lines_memory_1      

        mov bl,10d  ;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& no. of line in the memory_2 29/12/2021 changed***
      mov dx,16d ;separation between 2 memory lines
      loop_print_horiz_lines_memory_2:
      

      mov cx,293d ;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&print horizontal sep line memory29/12/2021 changed***
      
      mov al,0eh ;color white
      mov ah,0ch
      back_to_draw_line_memory_horiz_2:int 10h
                        inc cx
                        cmp cx,320d
                        jnz back_to_draw_line_memory_horiz_2 
        
        add dx,16d
        dec bl
        jnz loop_print_horiz_lines_memory_2    

        ;//print registers &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
        
     call print_registers_boxes 
     call print_registers_names  
     call print_memory_names
     
     call update_players_registers_values;to be removed and put it in gameflow
     call print_register_values ;to be removed and put it in gameflow
     call update_players_memory_values ;;to be removed and put it in gameflow
     call print_memory_values ;;to be removed and put it in gameflow
      
    
      
      
       ;#####################################################print names
      mov ah,2h ;name 1 print 
      mov bx,0h  
      mov dx,3020h
      int 10h
      mov ah,9
      Lea dx, [name1+2]
      int 21h

      mov ah,9               ;disp :
      lea dx, semicolumn
      int 21h

      mov ah,2h ;name2 print
      mov bx,0h  
      mov dx,3120h
      int 10h
      mov ah,9
      Lea dx, [name2+2]
      int 21h

      mov ah,9               ;disp :
      lea dx, semicolumn
      int 21h
      
      ;check points to choose the smaller points for both players
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
                       call update_players_memory_values
                       call update_players_registers_values
                       call print_register_values
                       call print_memory_values


                       ;user enters here the command he wants
		       call function_taking_commands
                                            ; dummy to try to recieve data from user in graphic mode
    ;mov bx,0h  ;kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
    ;mov ah,2     ;move cursor
    ;mov dx,1100h     ;the midlle of the screen 0718h
    ;mov di,dx ;to protect the last starting location 
    ;int 10h             

    ;disp message to ask user what he has to enter
    ;mov ah,9                            ; display message for entering name dummy
;LEA dx, disp_mes_enter_command
;int 21h 

 ;    mov ah,0Ah
  ;   LEA dx, enter_command
   ;  int 21h     
     
                        ;to print on screen
                        call update_players_memory_values
                       call update_players_registers_values
                       call print_register_values
                       call print_memory_values
                       ;check if the points of a player is zero or a player entered required value in the register
                       mov al,pts1+2
                       mov ah,pts2+2
                       cmp al,0h         ;check player 1 points =0 then P1 looser, P2 winner
                       jnz checkPlayer1_points_after_player_1
                       call player2_winner
                       jmp finish_game        
                       
                       checkPlayer1_points_after_player_1: cmp ah,0h                  ;check player 2 points =0 then P2 looser, P1 winner
                                            jnz continue_game_no_winner_after_player_1
                                            call player1_winner
                                            jmp finish_game 
                     continue_game_no_winner_after_player_1: 

                     call check_if_value_105eh_in_ANY_reg_after_player_1_reg_2
                     jnz continue_game_no_winner_after_check_reg_2_required_value
                      jz player2_winner
                      jmp finish_game
                       ;game logic                     
                     continue_game_no_winner_after_check_reg_2_required_value:

                     ;player 2 enters the comand he wats

                     ;to print on screen
                        call update_players_memory_values
                       call update_players_registers_values
                       call print_register_values
                       call print_memory_values
                                            ;check if the points of a player is zero or a player entered required value in the register
                       mov al,pts1+2
                       mov ah,pts2+2
                       cmp al,0h         ;check player 1 points =0 then P1 looser, P2 winner
                       jnz checkPlayer1_points_after_player_2
                       call player2_winner
                       jmp finish_game        
                       
                       checkPlayer1_points_after_player_2: cmp ah,0h                  ;check player 2 points =0 then P2 looser, P1 winner
                                            jnz continue_game_no_winner_after_player_2
                                            call player1_winner
                                            jmp finish_game 
                     continue_game_no_winner_after_player_2: 
                     call check_if_value_105eh_in_ANY_reg_after_player_2_reg_1
                      jnz continue_game_no_winner_after_check_reg_1_required_value
                      jz player1_winner
                      jmp finish_game
                       ;game logic                     
                     continue_game_no_winner_after_check_reg_1_required_value:

        
                       ; trial to finish game
                       ;mov al,pts1+2
                       ;dec al
                      ; mov pts1+2,al
        jmp    whileNoWinner
        
        finish_game:
        call clear
        jmp main_menu 
        
        ret
        gameflow endp   
	 ;////////////////// 
      check_if_value_105eh_in_ANY_reg_after_player_1_reg_2 proc
;mov ax,105eh
mov real_reg_Ax_2,ax
       mov ax,ds
       mov es,ax
       mov si,offset real_reg_Ax_2
       mov di,offset value_in_REG_to_win
       mov cx,4h
       cmpsw 
       jz player1_winner
;continue all reg_2

ret
check_if_value_105eh_in_ANY_reg_after_player_1_reg_2 endp

         ;////////////////// 
check_if_value_105eh_in_ANY_reg_after_player_2_reg_1 proc
       mov ax,ds

       mov es,ax
       mov si,offset real_reg_Ax_1
       mov di,offset value_in_REG_to_win
       mov cx,4h
       cmpsw 
      
;continue all reg_1

ret
check_if_value_105eh_in_ANY_reg_after_player_2_reg_1 endp

         ;////////////////// 
         
         player2_winner proc  
            
            call clear
            call print_Middle_graphic_screen ;move cursor middle of screen 
            
            
            mov ah,9           ; display winner: player 2 name 
            LEA dx, name2+2
            int 21h
            mov ax,0 
            
            mov ah,9           ; display winner message
            LEA dx, player_wins_disp+2
            int 21h
            mov ax,0     
                   
            call  print_sameX_incY 
            call  print_sameX_incY
            
            mov ah,9           ; display winner: player 2 name 
            LEA dx, name2+2
            int 21h
            mov ax,0
            
             mov ah,9           ; display winner: player 2  points remaining
            LEA dx, pts2+2
            int 21h
            mov ax,0            
            
            mov ah,9           ; display word 'points' 
            LEA dx, player_points_disp+2
            int 21h
            mov ax,0 
            
            call  print_sameX_incY      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
            call  print_sameX_incY 
            call  print_sameX_incY
            
            mov ah,9           ; display looser: player 1 name 
            LEA dx, name1+2
            int 21h
            mov ax,0 
            
            mov ah,9           ; display looser message
            LEA dx, player_looses_disp+2
            int 21h
            mov ax,0     
                   
            call  print_sameX_incY 
            call  print_sameX_incY  
            
            mov ah,9           ; display looserr: player 1 name 
            LEA dx, name1+2
            int 21h
            mov ax,0
            
             mov ah,9           ; display looser: player 1  points == 0
            mov dx,'0'
            int 21h
            mov ax,0  
            
            mov ah,9           ; display word 'points' 
            LEA dx, player_points_disp+2
            int 21h
            mov ax,0            
            
            call  print_sameX_incY      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
            call  print_sameX_incY
            call  print_sameX_incY  
            
              
            
            mov ah,9           ; display enterKey_to_return_main_menu
            LEA dx, enterKey_to_return_main_menu+2
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
            LEA dx, name1+2
            int 21h
            mov ax,0 
            
            mov ah,9           ; display winner message
            LEA dx, player_wins_disp+2
            int 21h
            mov ax,0     
                   
            call  print_sameX_incY 
            call  print_sameX_incY
            
            mov ah,9           ; display winner: player 1 name 
            LEA dx, name1+2
            int 21h
            mov ax,0
            
             mov ah,9           ; display winner: player 1  points remaining
            LEA dx, pts1+2
            int 21h
            mov ax,0            
            
            mov ah,9           ; display word 'points' 
            LEA dx, player_points_disp+2
            int 21h
            mov ax,0 
            
            call  print_sameX_incY      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
            call  print_sameX_incY
            call  print_sameX_incY
            
            mov ah,9           ; display looser: player 2 name 
            LEA dx, name2+2
            int 21h
            mov ax,0 
            
            mov ah,9           ; display looser message
            LEA dx, player_looses_disp+2
            int 21h
            mov ax,0     
                   
            call  print_sameX_incY 
            call  print_sameX_incY  
            
            mov ah,9           ; display looserr: player 2 name 
            LEA dx, name2+2
            int 21h
            mov ax,0
            
             mov ah,9           ; display looser: player 2  points == 0
            mov dx,'0'
            int 21h
            mov ax,0  
            
            mov ah,9           ; display word 'points' 
            LEA dx, player_points_disp+2
            int 21h
            mov ax,0            
            
            call  print_sameX_incY      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
            call  print_sameX_incY  
            call  print_sameX_incY
             
            
            mov ah,9           ; display enterKey_to_return_main_menu
            LEA dx, enterKey_to_return_main_menu+2
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
LEA si ,  [name1+2]

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
LEA si ,  [name1+2]

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
LEA si ,  [name1+2]

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
LEA si ,  [name1+2]


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
LEA si ,  [name2+2] ; the 1st letter of the name

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
LEA si ,  [name2+2]

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
LEA si ,  [name2+2]

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
LEA si ,  [name2+2]

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
LEA si ,  [name2+2]


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
;///////////////////////////////////////////////////////&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& ky

    print_registers_boxes proc
    ;///reg of player 1 
    ;reg ax 1
    mov ax,0c05h ; color purple (05)
    mov cx,17d ;initial position (for reg Ax)
        mov dx,12d 
    cote1_reg_Ax_1:int 10h
          inc cx
          cmp cx,60d
          jnz cote1_reg_Ax_1
    
    cote2_reg_Ax_1: int 10h
           inc dx
           cmp dx,28d
           jnz cote2_reg_Ax_1
    cote3_reg_Ax_1: int 10h        
           dec cx
           cmp cx,17d 
           jnz cote3_reg_Ax_1
    cote4_reg_Ax_1: int 10h
           dec dx
           cmp dx, 12d 
           jnz cote4_reg_Ax_1   

;reg bx 1
     mov ax,0c05h ; color purple (05)
    mov cx,17d ;initial position (for reg Ax)
        mov dx,32d 
    cote1_reg_bx_1:int 10h
          inc cx
          cmp cx,60d
          jnz cote1_reg_bx_1
    
    cote2_reg_bx_1: int 10h
           inc dx
           cmp dx,48d
           jnz cote2_reg_bx_1
    cote3_reg_bx_1: int 10h        
           dec cx
           cmp cx,17d 
           jnz cote3_reg_bx_1
    cote4_reg_bx_1: int 10h
           dec dx
           cmp dx, 32d 
           jnz cote4_reg_bx_1     

;reg cx 1
    mov ax,0c05h ; color purple (05)
    mov cx,17d ;initial position (for reg Ax)
        mov dx,52d 
    cote1_reg_cx_1:int 10h
          inc cx
          cmp cx,60d
          jnz  cote1_reg_cx_1
    
    cote2_reg_cx_1: int 10h
           inc dx
           cmp dx,68d
           jnz cote2_reg_cx_1
    cote3_reg_cx_1: int 10h        
           dec cx
           cmp cx,17d 
           jnz cote3_reg_cx_1
    cote4_reg_cx_1: int 10h
           dec dx
           cmp dx, 52d 
           jnz cote4_reg_cx_1 

;reg dx 1
           mov ax,0c05h ; color purple (05)
    mov cx,17d ;initial position (for reg Ax)
        mov dx,72d 
    cote1_reg_dx_1:int 10h
          inc cx
          cmp cx,60d
          jnz cote1_reg_dx_1
    
    cote2_reg_dx_1: int 10h
           inc dx
           cmp dx,88d
           jnz cote2_reg_dx_1
    cote3_reg_dx_1: int 10h        
           dec cx
           cmp cx,17d 
           jnz cote3_reg_dx_1
    cote4_reg_dx_1: int 10h
           dec dx
           cmp dx, 72d 
           jnz cote4_reg_dx_1  

           
;reg SI 1
    mov ax,0c05h ; color purple (05)                                           29/12/2021 changed***
    mov cx,66d ;initial position (for reg Ax) box size: 45 w and 14 l
        mov dx,12d 
    cote1_reg_SI_1:int 10h
          inc cx
          cmp cx,107d
          jnz cote1_reg_SI_1
    
    cote2_reg_SI_1: int 10h
           inc dx
           cmp dx,28d
           jnz cote2_reg_SI_1
    cote3_reg_SI_1: int 10h        
           dec cx
           cmp cx,66d 
           jnz cote3_reg_SI_1
    cote4_reg_SI_1: int 10h
           dec dx
           cmp dx, 12d 
           jnz cote4_reg_SI_1   

;reg DI 1
     mov ax,0c05h ; color purple (05)                  29/12/2021 changed***
    mov cx,66d ;initial position (for reg Ax)
        mov dx,32d 
    cote1_reg_DI_1:int 10h
          inc cx
          cmp cx,107d
          jnz cote1_reg_DI_1
    
    cote2_reg_DI_1: int 10h
           inc dx
           cmp dx,48d
           jnz cote2_reg_DI_1
    cote3_reg_DI_1: int 10h        
           dec cx
           cmp cx,66d 
           jnz cote3_reg_DI_1
    cote4_reg_DI_1: int 10h
           dec dx
           cmp dx, 32d 
           jnz cote4_reg_DI_1     

;reg SP 1
    mov ax,0c05h ; color purple (05)                           29/12/2021 changed***
    mov cx,66d ;initial position (for reg Ax)
        mov dx,52d 
    cote1_reg_SP_1:int 10h
          inc cx
          cmp cx,107d
          jnz  cote1_reg_SP_1
    
    cote2_reg_SP_1: int 10h
           inc dx
           cmp dx,68d
           jnz cote2_reg_SP_1
    cote3_reg_SP_1: int 10h        
           dec cx
           cmp cx,66d 
           jnz cote3_reg_SP_1
    cote4_reg_SP_1: int 10h
           dec dx
           cmp dx, 52d 
           jnz cote4_reg_SP_1 

;reg BP 1
           mov ax,0c05h ; color purple (05)                       29/12/2021 changed***
    mov cx,66d ;initial position (for reg Ax)
        mov dx,72d 
    cote1_reg_BP_1:int 10h
          inc cx
          cmp cx,107d
          jnz cote1_reg_BP_1
    
    cote2_reg_BP_1: int 10h
           inc dx
           cmp dx,88d
           jnz cote2_reg_BP_1
    cote3_reg_BP_1: int 10h        
           dec cx
           cmp cx,66d 
           jnz cote3_reg_BP_1
    cote4_reg_BP_1: int 10h
           dec dx
           cmp dx, 72d 
           jnz cote4_reg_BP_1


    ;///reg of player 2 ///////////////
;reg Ax 2
    mov ax,0c05h ; color purple (05)                                         29/12/2021 changed***
    mov cx,185d ;initial position (for reg Ax) box size: 45 w and 14 l
        mov dx,12d 
    cote1_reg_Ax_2:int 10h
          inc cx
          cmp cx,225d
          jnz cote1_reg_Ax_2
    
    cote2_reg_Ax_2: int 10h
           inc dx
           cmp dx,28d
           jnz cote2_reg_Ax_2
    cote3_reg_Ax_2: int 10h        
           dec cx
           cmp cx,185d 
           jnz cote3_reg_Ax_2
    cote4_reg_Ax_2: int 10h
           dec dx
           cmp dx, 12d 
           jnz cote4_reg_Ax_2   

;reg bx 2
     mov ax,0c05h ; color purple (05)                        29/12/2021 changed***
    mov cx,185d ;initial position (for reg Ax)
        mov dx,32d 
    cote1_reg_bx_2:int 10h
          inc cx
          cmp cx,225d
          jnz cote1_reg_bx_2
    
    cote2_reg_bx_2: int 10h
           inc dx
           cmp dx,48d
           jnz cote2_reg_bx_2
    cote3_reg_bx_2: int 10h        
           dec cx
           cmp cx,185d 
           jnz cote3_reg_bx_2
    cote4_reg_bx_2: int 10h
           dec dx
           cmp dx, 32d 
           jnz cote4_reg_bx_2     

;reg cx 2
    mov ax,0c05h ; color purple (05)                        29/12/2021 changed***
    mov cx,185d ;initial position (for reg Ax)                  
        mov dx,52d 
    cote1_reg_cx_2:int 10h
          inc cx
          cmp cx,225d
          jnz  cote1_reg_cx_2
    
    cote2_reg_cx_2: int 10h
           inc dx
           cmp dx,68d
           jnz cote2_reg_cx_2
    cote3_reg_cx_2: int 10h        
           dec cx
           cmp cx,185d 
           jnz cote3_reg_cx_2
    cote4_reg_cx_2: int 10h
           dec dx
           cmp dx, 52d 
           jnz cote4_reg_cx_2 

;reg dx 2
           mov ax,0c05h ; color purple (05)                     29/12/2021 changed***
    mov cx,185d ;initial position (for reg Ax)
        mov dx,72d 
    cote1_reg_dx_2:int 10h
          inc cx
          cmp cx,225d
          jnz cote1_reg_dx_2
    
    cote2_reg_dx_2: int 10h
           inc dx
           cmp dx,88d
           jnz cote2_reg_dx_2
    cote3_reg_dx_2: int 10h        
           dec cx
           cmp cx,185d 
           jnz cote3_reg_dx_2
    cote4_reg_dx_2: int 10h
           dec dx
           cmp dx, 72d 
           jnz cote4_reg_dx_2 
;reg SI 2
    mov ax,0c05h ; color purple (05)                                       29/12/2021 changed***
    mov cx,230d ;initial position (for reg Ax) box size: 45 w and 14 l
        mov dx,12d 
    cote1_reg_SI_2:int 10h
          inc cx
          cmp cx,270d
          jnz cote1_reg_SI_2
    
    cote2_reg_SI_2: int 10h
           inc dx
           cmp dx,28d
           jnz cote2_reg_SI_2
    cote3_reg_SI_2: int 10h        
           dec cx
           cmp cx,230d 
           jnz cote3_reg_SI_2
    cote4_reg_SI_2: int 10h
           dec dx
           cmp dx, 12d 
           jnz cote4_reg_SI_2   

;reg DI 2                                              29/12/2021 changed***
     mov ax,0c05h ; color purple (05)
    mov cx,230d ;initial position (for reg Ax)
        mov dx,32d 
    cote1_reg_DI_2:int 10h
          inc cx
          cmp cx,270d
          jnz cote1_reg_DI_2
    
    cote2_reg_DI_2: int 10h
           inc dx
           cmp dx,48d
           jnz cote2_reg_DI_2
    cote3_reg_DI_2: int 10h        
           dec cx
           cmp cx,230d 
           jnz cote3_reg_DI_2
    cote4_reg_DI_2: int 10h
           dec dx
           cmp dx, 32d 
           jnz cote4_reg_DI_2     

;reg SP 2
    mov ax,0c05h ; color purple (05)                 29/12/2021 changed***
    mov cx,230d ;initial position (for reg Ax)
        mov dx,52d 
    cote1_reg_SP_2:int 10h
          inc cx
          cmp cx,270d
          jnz  cote1_reg_SP_2
    
    cote2_reg_SP_2: int 10h
           inc dx
           cmp dx,68d
           jnz cote2_reg_SP_2
    cote3_reg_SP_2: int 10h        
           dec cx
           cmp cx,230d 
           jnz cote3_reg_SP_2
    cote4_reg_SP_2: int 10h
           dec dx
           cmp dx, 52d 
           jnz cote4_reg_SP_2 

;reg BP 2
           mov ax,0c05h ; color purple (05)            29/12/2021 changed***
    mov cx,230d ;initial position (for reg Ax)
        mov dx,72d 
    cote1_reg_BP_2:int 10h
          inc cx
          cmp cx,270d
          jnz cote1_reg_BP_2
    
    cote2_reg_BP_2: int 10h
           inc dx
           cmp dx,88d
           jnz cote2_reg_BP_2
    cote3_reg_BP_2: int 10h        
           dec cx
           cmp cx,230d 
           jnz cote3_reg_BP_2
    cote4_reg_BP_2: int 10h
           dec dx
           cmp dx, 72d 
           jnz cote4_reg_BP_2
           ret
    print_registers_boxes endp  
;///////////////////////////////////////ky
print_registers_names proc
;print names of regs. of both players 1 and 2
;register plyaer 1
       mov ah,2h ;
              mov bx,0h  
              mov dx,0200h
              mov di,dx
              int 10h
       ;print Register AX
       mov ah, 9
       lea dx,registers_names
       int 21h
       
       call print_sameX_incY
       call print_sameX_incY
       call print_sameX_incY
       ;print register BX
       mov ah, 9
       lea dx,registers_names+3
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       ;print register CX
       mov ah, 9
       lea dx,registers_names+6
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       call print_sameX_incY
       
       ;print register DX
       mov ah, 9
       lea dx,registers_names+9
       int 21h

;print si...player 1
       mov ah,2h ;
              mov bx,0h  
              mov dx,34c6h
              mov di,dx
              int 10h
       ;print Register si
       mov ah, 9
       lea dx,registers_names+12
       int 21h
       
       call print_sameX_incY
       call print_sameX_incY
       call print_sameX_incY
       ;print register di
       mov ah, 9
       lea dx,registers_names+15
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       call print_sameX_incY
       ;print register sp
       mov ah, 9
       lea dx,registers_names+18
       int 21h
       
       call print_sameX_incY
       call print_sameX_incY
       
       ;print register bp
       mov ah, 9
       lea dx,registers_names+21
       int 21h
;register plyaer 2
       mov ah,2h ;
              mov bx,0h  
              mov dx,0215h
              mov di,dx
              int 10h
       ;print Register AX
       mov ah, 9
       lea dx,registers_names
       int 21h
       
       call print_sameX_incY
       call print_sameX_incY
       call print_sameX_incY
       ;print register BX
       mov ah, 9
       lea dx,registers_names+3
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       ;print register CX
       mov ah, 9
       lea dx,registers_names+6
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       call print_sameX_incY
       ;print register DX
       mov ah, 9
       lea dx,registers_names+9
       int 21h
;print si...player 2
       mov ah,2h ;
              mov bx,0h  
              mov dx,0222h;34dah
              mov di,dx
              int 10h
       ;print Register SI
       mov ah, 9
       lea dx,registers_names+12
       int 21h
       
       call print_sameX_incY
       call print_sameX_incY
       call print_sameX_incY
       ;print register DI
       mov ah, 9
       lea dx,registers_names+15
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       ;print register SP
       mov ah, 9
       lea dx,registers_names+18
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       call print_sameX_incY
       
       ;print register BP
       mov ah, 9
       lea dx,registers_names+21
       int 21h
ret
print_registers_names endp

;///////////////////////////////////////ky
print_memory_names proc
;print names of memory of both players 1 and 2 ////done 29/12/2021 ky

;memory plyaer 1
       mov ah,2h ;
              mov bx,0h  
              mov dx,0113h
              mov di,dx
              int 10h
       ;print location (location name 0)
       mov ah, 9
       lea dx,memory_locations_names
       int 21h
       
       call print_sameX_incY
       call print_sameX_incY

       ;print location (location name 1)
       mov ah, 9
       lea dx,memory_locations_names+2
       int 21h

        call print_sameX_incY
       call print_sameX_incY

       ;print location (location name 2)
       mov ah, 9
       lea dx,memory_locations_names+4
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       ;print location (location name 3)
       mov ah, 9
       lea dx,memory_locations_names+6
       int 21h
       call print_sameX_incY
       call print_sameX_incY

       ;print location (location name 4)
       mov ah, 9
       lea dx,memory_locations_names+8
       int 21h

        call print_sameX_incY
       call print_sameX_incY
       
       ;print location (location name 5)
       mov ah, 9
       lea dx,memory_locations_names+10
       int 21h       
       call print_sameX_incY
       call print_sameX_incY
       ;print location (location name 6)
       mov ah, 9
       lea dx,memory_locations_names+12
       int 21h

       call print_sameX_incY
       call print_sameX_incY

       ;print location (location name 7)
       mov ah, 9
       lea dx,memory_locations_names+14
       int 21h

        call print_sameX_incY
       call print_sameX_incY
       
       ;print location (location name 8)
       mov ah, 9
       lea dx,memory_locations_names+16
       int 21h       
       call print_sameX_incY
       call print_sameX_incY
       ;print location (location name 9)
       mov ah, 9
       lea dx,memory_locations_names+18
       int 21h

       call print_sameX_incY
       call print_sameX_incY

       ;print location (location name A)
       mov ah, 9
       lea dx,memory_locations_names+20
       int 21h
;memory player 2  
       mov ah,2h ;
              mov bx,0h  
              mov dx,0127h
              mov di,dx
              int 10h
            
       ;print location (location name 0)
       mov ah, 9
       lea dx,memory_locations_names
       int 21h

       call print_sameX_incY
       call print_sameX_incY

       ;print location (location name 1)
       mov ah, 9
       lea dx,memory_locations_names+2
       int 21h

        call print_sameX_incY
       call print_sameX_incY

       ;print location (location name 2)
       mov ah, 9
       lea dx,memory_locations_names+4
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       ;print location (location name 3)
       mov ah, 9
       lea dx,memory_locations_names+6
       int 21h

       call print_sameX_incY
       call print_sameX_incY

       ;print location (location name 4)
       mov ah, 9
       lea dx,memory_locations_names+8
       int 21h

        call print_sameX_incY
       call print_sameX_incY
       
       ;print location (location name 5)
       mov ah, 9
       lea dx,memory_locations_names+10
       int 21h      
       call print_sameX_incY
       call print_sameX_incY 
       ;print location (location name 6)
       mov ah, 9
       lea dx,memory_locations_names+12
       int 21h

       call print_sameX_incY
       call print_sameX_incY

       ;print location (location name 7)
       mov ah, 9
       lea dx,memory_locations_names+14
       int 21h

        call print_sameX_incY
       call print_sameX_incY
       
       ;print location (location name 8)
       mov ah, 9
       lea dx,memory_locations_names+16
       int 21h     
       call print_sameX_incY
       call print_sameX_incY  
       ;print location (location name 9)
       mov ah, 9
       lea dx,memory_locations_names+18
       int 21h
  
       call print_sameX_incY
       call print_sameX_incY

       ;print location (location name A)
       mov ah, 9
       lea dx,memory_locations_names+20
       int 21h
      ret
       print_memory_names endp


 
;///////////////////////////////////////ky
 update_players_registers_values proc
;update values of registers of both players 1 and 2
;TO DO K.Y
       ;to print just first 4 digits replace the fifth by 0DH equivalent to 'Enter' key ascii
       mov al,0Dh 
       mov reg_Ax_1+6,al
       mov reg_Bx_1+6,al
       mov reg_Cx_1+6,al
       mov reg_Dx_1+6,al
       mov reg_Ax_2+6,al
       mov reg_Bx_2+6,al
       mov reg_Cx_2+6,al
       mov reg_Dx_2+6,al
       mov reg_SI_1+6,al
       mov reg_DI_1+6,al
       mov reg_SP_1+6,al
       mov reg_BP_1+6,al
       mov reg_SI_2+6,al
       mov reg_DI_2+6,al
       mov reg_SP_2+6,al
       mov reg_BP_2+6,al

 ;***** k.y**************************************make macro if u want later k.y
;checkthe entries of real_reg_Ax_1 are digits or letters
check_reg_Ax_1_hexa_is_digit_or_letter_1: mov cx,real_reg_Ax_1 
                               mov ah,00h
                               mov al,ch ;higher part of reg Ax_1  --> 12h
                               mov dl,10h
                               div dl ;ans is in al and remainder in ah ---> al=1 ah=2
                               mov bl, 0d ;lower range of numbers
                               cmp al,bl
                               jge check_upper_bound_value_reg_Ax_1_1
                               jmp reg_Ax_1_hexa_is_letter_1

                               check_upper_bound_value_reg_Ax_1_1:    mov bl,9d
                                                               cmp al,bl
                                                               jbe reg_Ax_1_hexa_is_digit_1
                                                               jmp reg_Ax_1_hexa_is_letter_1
                               reg_Ax_1_hexa_is_digit_1:add al,30h            ;to transform it into ascii
                                                 mov reg_Ax_1+2,al     ; al=31h --> =1d ; put directly into reg_Ax_1
                                                 jmp check_reg_Ax_1_hexa_is_digit_or_letter_2
                               reg_Ax_1_hexa_is_letter_1:sub al,9d
                                                 add al,60h
                                                 mov reg_Ax_1+2,al 
                                                 jmp check_reg_Ax_1_hexa_is_digit_or_letter_2
check_reg_Ax_1_hexa_is_digit_or_letter_2: 
                               ;compare if is between range of digits or no
                               mov bl, 0d ;lower range of numbers
                               cmp ah,bl
                               jge check_upper_bound_value_reg_Ax_1_2
                               jmp reg_Ax_1_hexa_is_letter_2

                               check_upper_bound_value_reg_Ax_1_2:    mov bl,9d
                                                               cmp ah,bl
                                                               jbe reg_Ax_1_hexa_is_digit_2
                                                               jmp reg_Ax_1_hexa_is_letter_2
                               reg_Ax_1_hexa_is_digit_2:add ah,30h            ;to transform it into ascii
                                                 mov reg_Ax_1+3,ah     ; ah=32h --> =2d ; put directly into reg_Ax_1
                                                 jmp check_reg_Ax_1_hexa_is_digit_or_letter_3
                               reg_Ax_1_hexa_is_letter_2:sub ah,9d
                                                 add ah,60h
                                                 mov reg_Ax_1+3,ah 
                                                 jmp check_reg_Ax_1_hexa_is_digit_or_letter_3
check_reg_Ax_1_hexa_is_digit_or_letter_3:;cl contain the lower part of reg ax_1
                               mov ah,00h
                               mov al,cl ;lower part of reg Ax_1  --> f5h
                               mov dl,10h
                               div dl ;ans is in al and remainder in ah ---> al=f ah=5
                               mov bl, 0d ;lower range of numbers
                               cmp al,bl
                               jge check_upper_bound_value_reg_Ax_1_3
                               jmp reg_Ax_1_hexa_is_letter_3

                               check_upper_bound_value_reg_Ax_1_3:    mov bl,9d
                                                               cmp al,bl
                                                               jbe reg_Ax_1_hexa_is_digit_3
                                                               jmp reg_Ax_1_hexa_is_letter_3
                               reg_Ax_1_hexa_is_digit_3:add al,30h            ;to transform it into ascii
                                                 mov reg_Ax_1+4,al     ; al=31h --> =1d ; put directly into reg_Ax_1
                                                 jmp check_reg_Ax_1_hexa_is_digit_or_letter_4
                               reg_Ax_1_hexa_is_letter_3:sub al,9d
                                                 add al,60h
                                                 mov reg_Ax_1+4,al 
                                                 jmp check_reg_Ax_1_hexa_is_digit_or_letter_4
check_reg_Ax_1_hexa_is_digit_or_letter_4: 
                               ;compare if is between range of digits or no
                               mov bl, 0d ;lower range of numbers
                               cmp ah,bl
                               jge check_upper_bound_value_reg_Ax_1_4
                               jmp reg_Ax_1_hexa_is_letter_4

                               check_upper_bound_value_reg_Ax_1_4:    mov bl,9d
                                                               cmp ah,bl
                                                               jbe reg_Ax_1_hexa_is_digit_4
                                                               jmp reg_Ax_1_hexa_is_letter_4
                               reg_Ax_1_hexa_is_digit_4:add ah,30h            ;to transform it into ascii
                                                 mov reg_Ax_1+5,ah     ; al=31h --> =1d ; put directly into reg_Ax_1
                                                 jmp finished_reg_Ax_1_hexa_is_digit_or_letter
                               reg_Ax_1_hexa_is_letter_4:sub ah,9d
                                                 add ah,60h
                                                 mov reg_Ax_1+5,ah 
                                                 jmp finished_reg_Ax_1_hexa_is_digit_or_letter
                               finished_reg_Ax_1_hexa_is_digit_or_letter:   
 ;checkthe entries of real_reg_Ax_2 are digits or letters
check_reg_Ax_2_hexa_is_digit_or_letter_1: mov cx,real_reg_Ax_2 
                               mov ah,00h
                               mov al,ch ;higher part of reg Ax_1  --> 12h
                               mov dl,10h
                               div dl ;ans is in al and remainder in ah ---> al=1 ah=2
                               mov bl, 0d ;lower range of numbers
                               cmp al,bl
                               jge check_upper_bound_value_reg_Ax_2_1
                               jmp reg_Ax_2_hexa_is_letter_1

                               check_upper_bound_value_reg_Ax_2_1:    mov bl,9d
                                                               cmp al,bl
                                                               jbe reg_Ax_2_hexa_is_digit_1
                                                               jmp reg_Ax_2_hexa_is_letter_1
                               reg_Ax_2_hexa_is_digit_1:add al,30h            ;to transform it into ascii
                                                 mov reg_Ax_2+2,al     ; al=31h --> =1d ; put directly into reg_Ax_1
                                                 jmp check_reg_Ax_2_hexa_is_digit_or_letter_2
                               reg_Ax_2_hexa_is_letter_1:sub al,9d
                                                 add al,60h
                                                 mov reg_Ax_2+2,al 
                                                 jmp check_reg_Ax_2_hexa_is_digit_or_letter_2
check_reg_Ax_2_hexa_is_digit_or_letter_2: 
                               ;compare if is between range of digits or no
                               mov bl, 0d ;lower range of numbers
                               cmp ah,bl
                               jge check_upper_bound_value_reg_Ax_2_2
                               jmp reg_Ax_2_hexa_is_letter_2

                               check_upper_bound_value_reg_Ax_2_2:    mov bl,9d
                                                               cmp ah,bl
                                                               jbe reg_Ax_2_hexa_is_digit_2
                                                               jmp reg_Ax_2_hexa_is_letter_2
                               reg_Ax_2_hexa_is_digit_2:add ah,30h            ;to transform it into ascii
                                                 mov reg_Ax_2+3,ah     ; ah=32h --> =2d ; put directly into reg_Ax_1
                                                 jmp check_reg_Ax_2_hexa_is_digit_or_letter_3
                               reg_Ax_2_hexa_is_letter_2:sub ah,9d
                                                 add ah,60h
                                                 mov reg_Ax_2+3,ah 
                                                 jmp check_reg_Ax_2_hexa_is_digit_or_letter_3
check_reg_Ax_2_hexa_is_digit_or_letter_3:;cl contain the lower part of reg ax_1
                               mov ah,00h
                               mov al,cl ;lower part of reg Ax_1  --> f5h
                               mov dl,10h
                               div dl ;ans is in al and remainder in ah ---> al=f ah=5
                               mov bl, 0d ;lower range of numbers
                               cmp al,bl
                               jge check_upper_bound_value_reg_Ax_2_3
                               jmp reg_Ax_2_hexa_is_letter_3

                               check_upper_bound_value_reg_Ax_2_3:    mov bl,9d
                                                               cmp al,bl
                                                               jbe reg_Ax_2_hexa_is_digit_3
                                                               jmp reg_Ax_2_hexa_is_letter_3
                               reg_Ax_2_hexa_is_digit_3:add al,30h            ;to transform it into ascii
                                                 mov reg_Ax_2+4,al     ; al=31h --> =1d ; put directly into reg_Ax_1
                                                 jmp check_reg_Ax_2_hexa_is_digit_or_letter_4
                               reg_Ax_2_hexa_is_letter_3:sub al,9d
                                                 add al,60h
                                                 mov reg_Ax_2+4,al 
                                                 jmp check_reg_Ax_2_hexa_is_digit_or_letter_4
check_reg_Ax_2_hexa_is_digit_or_letter_4: 
                               ;compare if is between range of digits or no
                               mov bl, 0d ;lower range of numbers
                               cmp ah,bl
                               jge check_upper_bound_value_reg_Ax_2_4
                               jmp reg_Ax_2_hexa_is_letter_4

                               check_upper_bound_value_reg_Ax_2_4:    mov bl,9d
                                                               cmp ah,bl
                                                               jbe reg_Ax_2_hexa_is_digit_4
                                                               jmp reg_Ax_2_hexa_is_letter_4
                               reg_Ax_2_hexa_is_digit_4:add ah,30h            ;to transform it into ascii
                                                 mov reg_Ax_2+5,ah     ; al=31h --> =1d ; put directly into reg_Ax_1
                                                 jmp finished_reg_Ax_2_hexa_is_digit_or_letter
                               reg_Ax_2_hexa_is_letter_4:sub ah,9d
                                                 add ah,60h
                                                 mov reg_Ax_2+5,ah 
                                                 jmp finished_reg_Ax_2_hexa_is_digit_or_letter
                               finished_reg_Ax_2_hexa_is_digit_or_letter:                                      
;checkthe entries of real_reg_Ax_1 are digits or letters
check_reg_Bx_1_hexa_is_digit_or_letter_1: mov cx,real_reg_Bx_1 
                               mov ah,00h
                               mov al,ch ;higher part of reg Ax_1  --> 12h
                               mov dl,10h
                               div dl ;ans is in al and remainder in ah ---> al=1 ah=2
                               mov bl, 0d ;lower range of numbers
                               cmp al,bl
                               jge check_upper_bound_value_reg_Bx_1_1
                               jmp reg_Bx_1_hexa_is_letter_1

                               check_upper_bound_value_reg_Bx_1_1:    mov bl,9d
                                                               cmp al,bl
                                                               jbe reg_Bx_1_hexa_is_digit_1
                                                               jmp reg_Bx_1_hexa_is_letter_1
                               reg_Bx_1_hexa_is_digit_1:add al,30h            ;to transform it into ascii
                                                 mov reg_Bx_1+2,al     ; al=31h --> =1d ; put directly into reg_Ax_1
                                                 jmp check_reg_Bx_1_hexa_is_digit_or_letter_2
                               reg_Bx_1_hexa_is_letter_1:sub al,9d
                                                 add al,60h
                                                 mov reg_Bx_1+2,al 
                                                 jmp check_reg_Bx_1_hexa_is_digit_or_letter_2
check_reg_Bx_1_hexa_is_digit_or_letter_2: 
                               ;compare if is between range of digits or no
                               mov bl, 0d ;lower range of numbers
                               cmp ah,bl
                               jge check_upper_bound_value_reg_Bx_1_2
                               jmp reg_Bx_1_hexa_is_letter_2

                               check_upper_bound_value_reg_Bx_1_2:    mov bl,9d
                                                               cmp ah,bl
                                                               jbe reg_Bx_1_hexa_is_digit_2
                                                               jmp reg_Bx_1_hexa_is_letter_2
                               reg_Bx_1_hexa_is_digit_2:add ah,30h            ;to transform it into ascii
                                                 mov reg_Bx_1+3,ah     ; ah=32h --> =2d ; put directly into reg_Ax_1
                                                 jmp check_reg_Bx_1_hexa_is_digit_or_letter_3
                               reg_Bx_1_hexa_is_letter_2:sub ah,9d
                                                 add ah,60h
                                                 mov reg_Bx_1+3,ah 
                                                 jmp check_reg_Bx_1_hexa_is_digit_or_letter_3
check_reg_Bx_1_hexa_is_digit_or_letter_3:;cl contain the lower part of reg ax_1
                               mov ah,00h
                               mov al,cl ;lower part of reg Ax_1  --> f5h
                               mov dl,10h
                               div dl ;ans is in al and remainder in ah ---> al=f ah=5
                               mov bl, 0d ;lower range of numbers
                               cmp al,bl
                               jge check_upper_bound_value_reg_Bx_1_3
                               jmp reg_Bx_1_hexa_is_letter_3

                               check_upper_bound_value_reg_Bx_1_3:    mov bl,9d
                                                               cmp al,bl
                                                               jbe reg_Bx_1_hexa_is_digit_3
                                                               jmp reg_Bx_1_hexa_is_letter_3
                               reg_Bx_1_hexa_is_digit_3:add al,30h            ;to transform it into ascii
                                                 mov reg_Bx_1+4,al     ; al=31h --> =1d ; put directly into reg_Ax_1
                                                 jmp check_reg_Bx_1_hexa_is_digit_or_letter_4
                               reg_Bx_1_hexa_is_letter_3:sub al,9d
                                                 add al,60h
                                                 mov reg_Bx_1+4,al 
                                                 jmp check_reg_Bx_1_hexa_is_digit_or_letter_4
check_reg_Bx_1_hexa_is_digit_or_letter_4: 
                               ;compare if is between range of digits or no
                               mov bl, 0d ;lower range of numbers
                               cmp ah,bl
                               jge check_upper_bound_value_reg_Bx_1_4
                               jmp reg_Bx_1_hexa_is_letter_4

                               check_upper_bound_value_reg_Bx_1_4:    mov bl,9d
                                                               cmp ah,bl
                                                               jbe reg_Bx_1_hexa_is_digit_4
                                                               jmp reg_Bx_1_hexa_is_letter_4
                               reg_Bx_1_hexa_is_digit_4:add ah,30h            ;to transform it into ascii
                                                 mov reg_Bx_1+5,ah     ; al=31h --> =1d ; put directly into reg_Ax_1
                                                 jmp finished_reg_Bx_1_hexa_is_digit_or_letter
                               reg_Bx_1_hexa_is_letter_4:sub ah,9d
                                                 add ah,60h
                                                 mov reg_Bx_1+5,ah 
                                                 jmp finished_reg_Bx_1_hexa_is_digit_or_letter
                               finished_reg_Bx_1_hexa_is_digit_or_letter:   
 ;checkthe entries of real_reg_Ax_2 are digits or letters
check_reg_Bx_2_hexa_is_digit_or_letter_1: mov cx,real_reg_Bx_2 
                               mov ah,00h
                               mov al,ch ;higher part of reg Ax_1  --> 12h
                               mov dl,10h
                               div dl ;ans is in al and remainder in ah ---> al=1 ah=2
                               mov bl, 0d ;lower range of numbers
                               cmp al,bl
                               jge check_upper_bound_value_reg_Bx_2_1
                               jmp reg_Bx_2_hexa_is_letter_1

                               check_upper_bound_value_reg_Bx_2_1:    mov bl,9d
                                                               cmp al,bl
                                                               jbe reg_Bx_2_hexa_is_digit_1
                                                               jmp reg_Bx_2_hexa_is_letter_1
                               reg_Bx_2_hexa_is_digit_1:add al,30h            ;to transform it into ascii
                                                 mov reg_Bx_2+2,al     ; al=31h --> =1d ; put directly into reg_Ax_1
                                                 jmp check_reg_Bx_2_hexa_is_digit_or_letter_2
                               reg_Bx_2_hexa_is_letter_1:sub al,9d
                                                 add al,60h
                                                 mov reg_Bx_2+2,al 
                                                 jmp check_reg_Bx_2_hexa_is_digit_or_letter_2
check_reg_Bx_2_hexa_is_digit_or_letter_2: 
                               ;compare if is between range of digits or no
                               mov bl, 0d ;lower range of numbers
                               cmp ah,bl
                               jge check_upper_bound_value_reg_Bx_2_2
                               jmp reg_Bx_2_hexa_is_letter_2

                               check_upper_bound_value_reg_Bx_2_2:    mov bl,9d
                                                               cmp ah,bl
                                                               jbe reg_Bx_2_hexa_is_digit_2
                                                               jmp reg_Bx_2_hexa_is_letter_2
                               reg_Bx_2_hexa_is_digit_2:add ah,30h            ;to transform it into ascii
                                                 mov reg_Bx_2+3,ah     ; ah=32h --> =2d ; put directly into reg_Ax_1
                                                 jmp check_reg_Bx_2_hexa_is_digit_or_letter_3
                               reg_Bx_2_hexa_is_letter_2:sub ah,9d
                                                 add ah,60h
                                                 mov reg_Bx_2+3,ah 
                                                 jmp check_reg_Bx_2_hexa_is_digit_or_letter_3
check_reg_Bx_2_hexa_is_digit_or_letter_3:;cl contain the lower part of reg ax_1
                               mov ah,00h
                               mov al,cl ;lower part of reg Ax_1  --> f5h
                               mov dl,10h
                               div dl ;ans is in al and remainder in ah ---> al=f ah=5
                               mov bl, 0d ;lower range of numbers
                               cmp al,bl
                               jge check_upper_bound_value_reg_Bx_2_3
                               jmp reg_Bx_2_hexa_is_letter_3

                               check_upper_bound_value_reg_Bx_2_3:    mov bl,9d
                                                               cmp al,bl
                                                               jbe reg_Bx_2_hexa_is_digit_3
                                                               jmp reg_Bx_2_hexa_is_letter_3
                               reg_Bx_2_hexa_is_digit_3:add al,30h            ;to transform it into ascii
                                                 mov reg_Bx_2+4,al     ; al=31h --> =1d ; put directly into reg_Ax_1
                                                 jmp check_reg_Bx_2_hexa_is_digit_or_letter_4
                               reg_Bx_2_hexa_is_letter_3:sub al,9d
                                                 add al,60h
                                                 mov reg_Bx_2+4,al 
                                                 jmp check_reg_Bx_2_hexa_is_digit_or_letter_4
check_reg_Bx_2_hexa_is_digit_or_letter_4: 
                               ;compare if is between range of digits or no
                               mov bl, 0d ;lower range of numbers
                               cmp ah,bl
                               jge check_upper_bound_value_reg_Bx_2_4
                               jmp reg_Bx_2_hexa_is_letter_4

                               check_upper_bound_value_reg_Bx_2_4:    mov bl,9d
                                                               cmp ah,bl
                                                               jbe reg_Bx_2_hexa_is_digit_4
                                                               jmp reg_Bx_2_hexa_is_letter_4
                               reg_Bx_2_hexa_is_digit_4:add ah,30h            ;to transform it into ascii
                                                 mov reg_Bx_2+5,ah     ; al=31h --> =1d ; put directly into reg_Ax_1
                                                 jmp finished_reg_Bx_2_hexa_is_digit_or_letter
                               reg_Bx_2_hexa_is_letter_4:sub ah,9d
                                                 add ah,60h
                                                 mov reg_Bx_2+5,ah 
                                                 jmp finished_reg_Bx_2_hexa_is_digit_or_letter
                               finished_reg_Bx_2_hexa_is_digit_or_letter:
; checkthe entries of real_reg_Cx_1 are digits or letters
check_reg_Cx_1_hexa_is_digit_or_letter_1 : mov cx, real_reg_Cx_1
mov ah, 00h
mov al, ch; higher part of reg Cx_1-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_reg_Cx_1_1
jmp reg_Cx_1_hexa_is_letter_1

check_upper_bound_value_reg_Cx_1_1 : mov bl, 9d
cmp al, bl
jbe reg_Cx_1_hexa_is_digit_1
jmp reg_Cx_1_hexa_is_letter_1
reg_Cx_1_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov reg_Cx_1 + 2, al; al = 31h-- > = 1d; put directly into reg_Cx_1
jmp check_reg_Cx_1_hexa_is_digit_or_letter_2
reg_Cx_1_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov reg_Cx_1 + 2, al
jmp check_reg_Cx_1_hexa_is_digit_or_letter_2
check_reg_Cx_1_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_reg_Cx_1_2
jmp reg_Cx_1_hexa_is_letter_2

check_upper_bound_value_reg_Cx_1_2 : mov bl, 9d
cmp ah, bl
jbe reg_Cx_1_hexa_is_digit_2
jmp reg_Cx_1_hexa_is_letter_2
reg_Cx_1_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov reg_Cx_1 + 3, ah; ah = 32h-- > = 2d; put directly into reg_Cx_1
jmp check_reg_Cx_1_hexa_is_digit_or_letter_3
reg_Cx_1_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov reg_Cx_1 + 3, ah
jmp check_reg_Cx_1_hexa_is_digit_or_letter_3
check_reg_Cx_1_hexa_is_digit_or_letter_3 : ; cl contain the lower part of reg Cx_1
mov ah, 00h
mov al, cl; lower part of reg Cx_1-- > f5h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = f ah = 5
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_reg_Cx_1_3
jmp reg_Cx_1_hexa_is_letter_3

check_upper_bound_value_reg_Cx_1_3 : mov bl, 9d
cmp al, bl
jbe reg_Cx_1_hexa_is_digit_3
jmp reg_Cx_1_hexa_is_letter_3
reg_Cx_1_hexa_is_digit_3 : add al, 30h; to transform it into ascii
mov reg_Cx_1 + 4, al; al = 31h-- > = 1d; put directly into reg_Cx_1
jmp check_reg_Cx_1_hexa_is_digit_or_letter_4
reg_Cx_1_hexa_is_letter_3 : sub al, 9d
add al, 60h
mov reg_Cx_1 + 4, al
jmp check_reg_Cx_1_hexa_is_digit_or_letter_4
check_reg_Cx_1_hexa_is_digit_or_letter_4 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_reg_Cx_1_4
jmp reg_Cx_1_hexa_is_letter_4

check_upper_bound_value_reg_Cx_1_4 : mov bl, 9d
cmp ah, bl
jbe reg_Cx_1_hexa_is_digit_4
jmp reg_Cx_1_hexa_is_letter_4
reg_Cx_1_hexa_is_digit_4 : add ah, 30h; to transform it into ascii
mov reg_Cx_1 + 5, ah; al = 31h-- > = 1d; put directly into reg_Cx_1
jmp finished_reg_Cx_1_hexa_is_digit_or_letter
reg_Cx_1_hexa_is_letter_4 : sub ah, 9d
add ah, 60h
mov reg_Cx_1 + 5, ah
jmp finished_reg_Cx_1_hexa_is_digit_or_letter
finished_reg_Cx_1_hexa_is_digit_or_letter :
; checkthe entries of real_reg_Cx_2 are digits or letters
check_reg_Cx_2_hexa_is_digit_or_letter_1 : mov cx, real_reg_Cx_2
mov ah, 00h
mov al, ch; higher part of reg Cx_1-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_reg_Cx_2_1
jmp reg_Cx_2_hexa_is_letter_1

check_upper_bound_value_reg_Cx_2_1 : mov bl, 9d
cmp al, bl
jbe reg_Cx_2_hexa_is_digit_1
jmp reg_Cx_2_hexa_is_letter_1
reg_Cx_2_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov reg_Cx_2 + 2, al; al = 31h-- > = 1d; put directly into reg_Cx_1
jmp check_reg_Cx_2_hexa_is_digit_or_letter_2
reg_Cx_2_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov reg_Cx_2 + 2, al
jmp check_reg_Cx_2_hexa_is_digit_or_letter_2
check_reg_Cx_2_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_reg_Cx_2_2
jmp reg_Cx_2_hexa_is_letter_2

check_upper_bound_value_reg_Cx_2_2 : mov bl, 9d
cmp ah, bl
jbe reg_Cx_2_hexa_is_digit_2
jmp reg_Cx_2_hexa_is_letter_2
reg_Cx_2_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov reg_Cx_2 + 3, ah; ah = 32h-- > = 2d; put directly into reg_Cx_1
jmp check_reg_Cx_2_hexa_is_digit_or_letter_3
reg_Cx_2_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov reg_Cx_2 + 3, ah
jmp check_reg_Cx_2_hexa_is_digit_or_letter_3
check_reg_Cx_2_hexa_is_digit_or_letter_3 : ; cl contain the lower part of reg Cx_1
mov ah, 00h
mov al, cl; lower part of reg Cx_1-- > f5h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = f ah = 5
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_reg_Cx_2_3
jmp reg_Cx_2_hexa_is_letter_3

check_upper_bound_value_reg_Cx_2_3 : mov bl, 9d
cmp al, bl
jbe reg_Cx_2_hexa_is_digit_3
jmp reg_Cx_2_hexa_is_letter_3
reg_Cx_2_hexa_is_digit_3 : add al, 30h; to transform it into ascii
mov reg_Cx_2 + 4, al; al = 31h-- > = 1d; put directly into reg_Cx_1
jmp check_reg_Cx_2_hexa_is_digit_or_letter_4
reg_Cx_2_hexa_is_letter_3 : sub al, 9d
add al, 60h
mov reg_Cx_2 + 4, al
jmp check_reg_Cx_2_hexa_is_digit_or_letter_4
check_reg_Cx_2_hexa_is_digit_or_letter_4 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_reg_Cx_2_4
jmp reg_Cx_2_hexa_is_letter_4

check_upper_bound_value_reg_Cx_2_4 : mov bl, 9d
cmp ah, bl
jbe reg_Cx_2_hexa_is_digit_4
jmp reg_Cx_2_hexa_is_letter_4
reg_Cx_2_hexa_is_digit_4 : add ah, 30h; to transform it into ascii
mov reg_Cx_2 + 5, ah; al = 31h-- > = 1d; put directly into reg_Cx_1
jmp finished_reg_Cx_2_hexa_is_digit_or_letter
reg_Cx_2_hexa_is_letter_4 : sub ah, 9d
add ah, 60h
mov reg_Cx_2 + 5, ah
jmp finished_reg_Cx_2_hexa_is_digit_or_letter
finished_reg_Cx_2_hexa_is_digit_or_letter :
; checkthe entries of real_reg_Cx_1 are digits or letters
check_reg_Dx_1_hexa_is_digit_or_letter_1 : mov cx, real_reg_Dx_1
mov ah, 00h
mov al, ch; higher part of reg Cx_1-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_reg_Dx_1_1
jmp reg_Dx_1_hexa_is_letter_1

check_upper_bound_value_reg_Dx_1_1 : mov bl, 9d
cmp al, bl
jbe reg_Dx_1_hexa_is_digit_1
jmp reg_Dx_1_hexa_is_letter_1
reg_Dx_1_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov reg_Dx_1 + 2, al; al = 31h-- > = 1d; put directly into reg_Cx_1
jmp check_reg_Dx_1_hexa_is_digit_or_letter_2
reg_Dx_1_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov reg_Dx_1 + 2, al
jmp check_reg_Dx_1_hexa_is_digit_or_letter_2
check_reg_Dx_1_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_reg_Dx_1_2
jmp reg_Dx_1_hexa_is_letter_2

check_upper_bound_value_reg_Dx_1_2 : mov bl, 9d
cmp ah, bl
jbe reg_Dx_1_hexa_is_digit_2
jmp reg_Dx_1_hexa_is_letter_2
reg_Dx_1_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov reg_Dx_1 + 3, ah; ah = 32h-- > = 2d; put directly into reg_Cx_1
jmp check_reg_Dx_1_hexa_is_digit_or_letter_3
reg_Dx_1_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov reg_Dx_1 + 3, ah
jmp check_reg_Dx_1_hexa_is_digit_or_letter_3
check_reg_Dx_1_hexa_is_digit_or_letter_3 : ; cl contain the lower part of reg Cx_1
mov ah, 00h
mov al, cl; lower part of reg Cx_1-- > f5h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = f ah = 5
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_reg_Dx_1_3
jmp reg_Dx_1_hexa_is_letter_3

check_upper_bound_value_reg_Dx_1_3 : mov bl, 9d
cmp al, bl
jbe reg_Dx_1_hexa_is_digit_3
jmp reg_Dx_1_hexa_is_letter_3
reg_Dx_1_hexa_is_digit_3 : add al, 30h; to transform it into ascii
mov reg_Dx_1 + 4, al; al = 31h-- > = 1d; put directly into reg_Cx_1
jmp check_reg_Dx_1_hexa_is_digit_or_letter_4
reg_Dx_1_hexa_is_letter_3 : sub al, 9d
add al, 60h
mov reg_Dx_1 + 4, al
jmp check_reg_Dx_1_hexa_is_digit_or_letter_4
check_reg_Dx_1_hexa_is_digit_or_letter_4 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_reg_Dx_1_4
jmp reg_Dx_1_hexa_is_letter_4

check_upper_bound_value_reg_Dx_1_4 : mov bl, 9d
cmp ah, bl
jbe reg_Dx_1_hexa_is_digit_4
jmp reg_Dx_1_hexa_is_letter_4
reg_Dx_1_hexa_is_digit_4 : add ah, 30h; to transform it into ascii
mov reg_Dx_1 + 5, ah; al = 31h-- > = 1d; put directly into reg_Cx_1
jmp finished_reg_Dx_1_hexa_is_digit_or_letter
reg_Dx_1_hexa_is_letter_4 : sub ah, 9d
add ah, 60h
mov reg_Dx_1 + 5, ah
jmp finished_reg_Dx_1_hexa_is_digit_or_letter
finished_reg_Dx_1_hexa_is_digit_or_letter :
; checkthe entries of real_reg_Cx_2 are digits or letters
check_reg_Dx_2_hexa_is_digit_or_letter_1 : mov cx, real_reg_Dx_2
mov ah, 00h
mov al, ch; higher part of reg Cx_1-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_reg_Dx_2_1
jmp reg_Dx_2_hexa_is_letter_1

check_upper_bound_value_reg_Dx_2_1 : mov bl, 9d
cmp al, bl
jbe reg_Dx_2_hexa_is_digit_1
jmp reg_Dx_2_hexa_is_letter_1
reg_Dx_2_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov reg_Dx_2 + 2, al; al = 31h-- > = 1d; put directly into reg_Cx_1
jmp check_reg_Dx_2_hexa_is_digit_or_letter_2
reg_Dx_2_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov reg_Dx_2 + 2, al
jmp check_reg_Dx_2_hexa_is_digit_or_letter_2
check_reg_Dx_2_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_reg_Dx_2_2
jmp reg_Dx_2_hexa_is_letter_2

check_upper_bound_value_reg_Dx_2_2 : mov bl, 9d
cmp ah, bl
jbe reg_Dx_2_hexa_is_digit_2
jmp reg_Dx_2_hexa_is_letter_2
reg_Dx_2_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov reg_Dx_2 + 3, ah; ah = 32h-- > = 2d; put directly into reg_Cx_1
jmp check_reg_Dx_2_hexa_is_digit_or_letter_3
reg_Dx_2_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov reg_Dx_2 + 3, ah
jmp check_reg_Dx_2_hexa_is_digit_or_letter_3
check_reg_Dx_2_hexa_is_digit_or_letter_3 : ; cl contain the lower part of reg Cx_1
mov ah, 00h
mov al, cl; lower part of reg Cx_1-- > f5h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = f ah = 5
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_reg_Dx_2_3
jmp reg_Dx_2_hexa_is_letter_3

check_upper_bound_value_reg_Dx_2_3 : mov bl, 9d
cmp al, bl
jbe reg_Dx_2_hexa_is_digit_3
jmp reg_Dx_2_hexa_is_letter_3
reg_Dx_2_hexa_is_digit_3 : add al, 30h; to transform it into ascii
mov reg_Dx_2 + 4, al; al = 31h-- > = 1d; put directly into reg_Cx_1
jmp check_reg_Dx_2_hexa_is_digit_or_letter_4
reg_Dx_2_hexa_is_letter_3 : sub al, 9d
add al, 60h
mov reg_Dx_2 + 4, al
jmp check_reg_Dx_2_hexa_is_digit_or_letter_4
check_reg_Dx_2_hexa_is_digit_or_letter_4 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_reg_Dx_2_4
jmp reg_Dx_2_hexa_is_letter_4

check_upper_bound_value_reg_Dx_2_4 : mov bl, 9d
cmp ah, bl
jbe reg_Dx_2_hexa_is_digit_4
jmp reg_Dx_2_hexa_is_letter_4
reg_Dx_2_hexa_is_digit_4 : add ah, 30h; to transform it into ascii
mov reg_Dx_2 + 5, ah; al = 31h-- > = 1d; put directly into reg_Cx_1
jmp finished_reg_Dx_2_hexa_is_digit_or_letter
reg_Dx_2_hexa_is_letter_4 : sub ah, 9d
add ah, 60h
mov reg_Dx_2 + 5, ah
jmp finished_reg_Dx_2_hexa_is_digit_or_letter
finished_reg_Dx_2_hexa_is_digit_or_letter :
; checkthe entries of real_reg_SI_1 are digits or letters
check_reg_SI_1_hexa_is_digit_or_letter_1 : mov cx, real_reg_SI_1
mov ah, 00h
mov al, ch; higher part of reg SI_1-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_reg_SI_1_1
jmp reg_SI_1_hexa_is_letter_1

check_upper_bound_value_reg_SI_1_1 : mov bl, 9d
cmp al, bl
jbe reg_SI_1_hexa_is_digit_1
jmp reg_SI_1_hexa_is_letter_1
reg_SI_1_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov reg_SI_1 + 2, al; al = 31h-- > = 1d; put directly into reg_SI_1
jmp check_reg_SI_1_hexa_is_digit_or_letter_2
reg_SI_1_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov reg_SI_1 + 2, al
jmp check_reg_SI_1_hexa_is_digit_or_letter_2
check_reg_SI_1_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_reg_SI_1_2
jmp reg_SI_1_hexa_is_letter_2

check_upper_bound_value_reg_SI_1_2 : mov bl, 9d
cmp ah, bl
jbe reg_SI_1_hexa_is_digit_2
jmp reg_SI_1_hexa_is_letter_2
reg_SI_1_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov reg_SI_1 + 3, ah; ah = 32h-- > = 2d; put directly into reg_SI_1
jmp check_reg_SI_1_hexa_is_digit_or_letter_3
reg_SI_1_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov reg_SI_1 + 3, ah
jmp check_reg_SI_1_hexa_is_digit_or_letter_3
check_reg_SI_1_hexa_is_digit_or_letter_3 : ; cl contain the lower part of reg SI_1
mov ah, 00h
mov al, cl; lower part of reg SI_1-- > f5h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = f ah = 5
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_reg_SI_1_3
jmp reg_SI_1_hexa_is_letter_3

check_upper_bound_value_reg_SI_1_3 : mov bl, 9d
cmp al, bl
jbe reg_SI_1_hexa_is_digit_3
jmp reg_SI_1_hexa_is_letter_3
reg_SI_1_hexa_is_digit_3 : add al, 30h; to transform it into ascii
mov reg_SI_1 + 4, al; al = 31h-- > = 1d; put directly into reg_SI_1
jmp check_reg_SI_1_hexa_is_digit_or_letter_4
reg_SI_1_hexa_is_letter_3 : sub al, 9d
add al, 60h
mov reg_SI_1 + 4, al
jmp check_reg_SI_1_hexa_is_digit_or_letter_4
check_reg_SI_1_hexa_is_digit_or_letter_4 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_reg_SI_1_4
jmp reg_SI_1_hexa_is_letter_4

check_upper_bound_value_reg_SI_1_4 : mov bl, 9d
cmp ah, bl
jbe reg_SI_1_hexa_is_digit_4
jmp reg_SI_1_hexa_is_letter_4
reg_SI_1_hexa_is_digit_4 : add ah, 30h; to transform it into ascii
mov reg_SI_1 + 5, ah; al = 31h-- > = 1d; put directly into reg_SI_1
jmp finished_reg_SI_1_hexa_is_digit_or_letter
reg_SI_1_hexa_is_letter_4 : sub ah, 9d
add ah, 60h
mov reg_SI_1 + 5, ah
jmp finished_reg_SI_1_hexa_is_digit_or_letter
finished_reg_SI_1_hexa_is_digit_or_letter :
; checkthe entries of real_reg_SI_2 are digits or letters
check_reg_SI_2_hexa_is_digit_or_letter_1 : mov cx, real_reg_SI_2
mov ah, 00h
mov al, ch; higher part of reg SI_1-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_reg_SI_2_1
jmp reg_SI_2_hexa_is_letter_1

check_upper_bound_value_reg_SI_2_1 : mov bl, 9d
cmp al, bl
jbe reg_SI_2_hexa_is_digit_1
jmp reg_SI_2_hexa_is_letter_1
reg_SI_2_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov reg_SI_2 + 2, al; al = 31h-- > = 1d; put directly into reg_SI_1
jmp check_reg_SI_2_hexa_is_digit_or_letter_2
reg_SI_2_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov reg_SI_2 + 2, al
jmp check_reg_SI_2_hexa_is_digit_or_letter_2
check_reg_SI_2_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_reg_SI_2_2
jmp reg_SI_2_hexa_is_letter_2

check_upper_bound_value_reg_SI_2_2 : mov bl, 9d
cmp ah, bl
jbe reg_SI_2_hexa_is_digit_2
jmp reg_SI_2_hexa_is_letter_2
reg_SI_2_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov reg_SI_2 + 3, ah; ah = 32h-- > = 2d; put directly into reg_SI_1
jmp check_reg_SI_2_hexa_is_digit_or_letter_3
reg_SI_2_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov reg_SI_2 + 3, ah
jmp check_reg_SI_2_hexa_is_digit_or_letter_3
check_reg_SI_2_hexa_is_digit_or_letter_3 : ; cl contain the lower part of reg SI_1
mov ah, 00h
mov al, cl; lower part of reg SI_1-- > f5h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = f ah = 5
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_reg_SI_2_3
jmp reg_SI_2_hexa_is_letter_3

check_upper_bound_value_reg_SI_2_3 : mov bl, 9d
cmp al, bl
jbe reg_SI_2_hexa_is_digit_3
jmp reg_SI_2_hexa_is_letter_3
reg_SI_2_hexa_is_digit_3 : add al, 30h; to transform it into ascii
mov reg_SI_2 + 4, al; al = 31h-- > = 1d; put directly into reg_SI_1
jmp check_reg_SI_2_hexa_is_digit_or_letter_4
reg_SI_2_hexa_is_letter_3 : sub al, 9d
add al, 60h
mov reg_SI_2 + 4, al
jmp check_reg_SI_2_hexa_is_digit_or_letter_4
check_reg_SI_2_hexa_is_digit_or_letter_4 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_reg_SI_2_4
jmp reg_SI_2_hexa_is_letter_4

check_upper_bound_value_reg_SI_2_4 : mov bl, 9d
cmp ah, bl
jbe reg_SI_2_hexa_is_digit_4
jmp reg_SI_2_hexa_is_letter_4
reg_SI_2_hexa_is_digit_4 : add ah, 30h; to transform it into ascii
mov reg_SI_2 + 5, ah; al = 31h-- > = 1d; put directly into reg_SI_1
jmp finished_reg_SI_2_hexa_is_digit_or_letter
reg_SI_2_hexa_is_letter_4 : sub ah, 9d
add ah, 60h
mov reg_SI_2 + 5, ah
jmp finished_reg_SI_2_hexa_is_digit_or_letter
finished_reg_SI_2_hexa_is_digit_or_letter :
; checkthe entries of real_reg_SI_1 are digits or letters
check_reg_DI_1_hexa_is_digit_or_letter_1 : mov cx, real_reg_DI_1
                            mov ah, 00h
                            mov al, ch; higher part of reg SI_1-- > 12h
                            mov dl, 10h
                            div dl; ans is in aland remainder in ah--->al = 1 ah = 2
                            mov bl, 0d; lower range of numbers
                            cmp al, bl
                            jge check_upper_bound_value_reg_DI_1_1
                            jmp reg_DI_1_hexa_is_letter_1

                            check_upper_bound_value_reg_DI_1_1 : mov bl, 9d
                            cmp al, bl
                            jbe reg_DI_1_hexa_is_digit_1
                            jmp reg_DI_1_hexa_is_letter_1
                            reg_DI_1_hexa_is_digit_1 : add al, 30h; to transform it into ascii
                            mov reg_DI_1 + 2, al; al = 31h-- > = 1d; put directly into reg_SI_1
                            jmp check_reg_DI_1_hexa_is_digit_or_letter_2
                            reg_DI_1_hexa_is_letter_1 : sub al, 9d
                            add al, 60h
                            mov reg_DI_1 + 2, al
                            jmp check_reg_DI_1_hexa_is_digit_or_letter_2
check_reg_DI_1_hexa_is_digit_or_letter_2 :
                            ; compare if is between range of digits or no
                            mov bl, 0d; lower range of numbers
                            cmp ah, bl
                            jge check_upper_bound_value_reg_DI_1_2
                            jmp reg_DI_1_hexa_is_letter_2

                            check_upper_bound_value_reg_DI_1_2 : mov bl, 9d
                            cmp ah, bl
                            jbe reg_DI_1_hexa_is_digit_2
                            jmp reg_DI_1_hexa_is_letter_2
                            reg_DI_1_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
                            mov reg_DI_1 + 3, ah; ah = 32h-- > = 2d; put directly into reg_SI_1
                            jmp check_reg_DI_1_hexa_is_digit_or_letter_3
                            reg_DI_1_hexa_is_letter_2 : sub ah, 9d
                            add ah, 60h
                            mov reg_DI_1 + 3, ah
                            jmp check_reg_DI_1_hexa_is_digit_or_letter_3
check_reg_DI_1_hexa_is_digit_or_letter_3 : ; cl contain the lower part of reg SI_1
                            mov ah, 00h
                            mov al, cl; lower part of reg SI_1-- > f5h
                            mov dl, 10h
                            div dl; ans is in aland remainder in ah--->al = f ah = 5
                            mov bl, 0d; lower range of numbers
                            cmp al, bl
                            jge check_upper_bound_value_reg_DI_1_3
                            jmp reg_DI_1_hexa_is_letter_3

                            check_upper_bound_value_reg_DI_1_3 : mov bl, 9d
                            cmp al, bl
                            jbe reg_DI_1_hexa_is_digit_3
                            jmp reg_DI_1_hexa_is_letter_3
                            reg_DI_1_hexa_is_digit_3 : add al, 30h; to transform it into ascii
                            mov reg_DI_1 + 4, al; al = 31h-- > = 1d; put directly into reg_SI_1
                            jmp check_reg_DI_1_hexa_is_digit_or_letter_4
                            reg_DI_1_hexa_is_letter_3 : sub al, 9d
                            add al, 60h
                            mov reg_DI_1 + 4, al
                            jmp check_reg_DI_1_hexa_is_digit_or_letter_4
check_reg_DI_1_hexa_is_digit_or_letter_4 :
                            ; compare if is between range of digits or no
                            mov bl, 0d; lower range of numbers
                            cmp ah, bl
                            jge check_upper_bound_value_reg_DI_1_4
                            jmp reg_DI_1_hexa_is_letter_4

                            check_upper_bound_value_reg_DI_1_4 : mov bl, 9d
                            cmp ah, bl
                            jbe reg_DI_1_hexa_is_digit_4
                            jmp reg_DI_1_hexa_is_letter_4
                            reg_DI_1_hexa_is_digit_4 : add ah, 30h; to transform it into ascii
                            mov reg_DI_1 + 5, ah; al = 31h-- > = 1d; put directly into reg_SI_1
                            jmp finished_reg_DI_1_hexa_is_digit_or_letter
                            reg_DI_1_hexa_is_letter_4 : sub ah, 9d
                            add ah, 60h
                            mov reg_DI_1 + 5, ah
                            jmp finished_reg_DI_1_hexa_is_digit_or_letter
finished_reg_DI_1_hexa_is_digit_or_letter :
; checkthe entries of real_reg_SI_2 are digits or letters
check_reg_DI_2_hexa_is_digit_or_letter_1 : mov cx, real_reg_DI_2
                            mov ah, 00h
                            mov al, ch; higher part of reg SI_1-- > 12h
                            mov dl, 10h
                            div dl; ans is in aland remainder in ah--->al = 1 ah = 2
                            mov bl, 0d; lower range of numbers
                            cmp al, bl
                            jge check_upper_bound_value_reg_DI_2_1
                            jmp reg_DI_2_hexa_is_letter_1

                            check_upper_bound_value_reg_DI_2_1 : mov bl, 9d
                            cmp al, bl
                            jbe reg_DI_2_hexa_is_digit_1
                            jmp reg_DI_2_hexa_is_letter_1
                            reg_DI_2_hexa_is_digit_1 : add al, 30h; to transform it into ascii
                            mov reg_DI_2 + 2, al; al = 31h-- > = 1d; put directly into reg_SI_1
                            jmp check_reg_DI_2_hexa_is_digit_or_letter_2
                            reg_DI_2_hexa_is_letter_1 : sub al, 9d
                            add al, 60h
                            mov reg_DI_2 + 2, al
                            jmp check_reg_DI_2_hexa_is_digit_or_letter_2
check_reg_DI_2_hexa_is_digit_or_letter_2 :
                            ; compare if is between range of digits or no
                            mov bl, 0d; lower range of numbers
                            cmp ah, bl
                            jge check_upper_bound_value_reg_DI_2_2
                            jmp reg_DI_2_hexa_is_letter_2

                            check_upper_bound_value_reg_DI_2_2 : mov bl, 9d
                            cmp ah, bl
                            jbe reg_DI_2_hexa_is_digit_2
                            jmp reg_DI_2_hexa_is_letter_2
                            reg_DI_2_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
                            mov reg_DI_2 + 3, ah; ah = 32h-- > = 2d; put directly into reg_SI_1
                            jmp check_reg_DI_2_hexa_is_digit_or_letter_3
                            reg_DI_2_hexa_is_letter_2 : sub ah, 9d
                            add ah, 60h
                            mov reg_DI_2 + 3, ah
                            jmp check_reg_DI_2_hexa_is_digit_or_letter_3
check_reg_DI_2_hexa_is_digit_or_letter_3 : ; cl contain the lower part of reg SI_1
                            mov ah, 00h
                            mov al, cl; lower part of reg SI_1-- > f5h
                            mov dl, 10h
                            div dl; ans is in aland remainder in ah--->al = f ah = 5
                            mov bl, 0d; lower range of numbers
                            cmp al, bl
                            jge check_upper_bound_value_reg_DI_2_3
                            jmp reg_DI_2_hexa_is_letter_3

                            check_upper_bound_value_reg_DI_2_3 : mov bl, 9d
                            cmp al, bl
                            jbe reg_DI_2_hexa_is_digit_3
                            jmp reg_DI_2_hexa_is_letter_3
                            reg_DI_2_hexa_is_digit_3 : add al, 30h; to transform it into ascii
                            mov reg_DI_2 + 4, al; al = 31h-- > = 1d; put directly into reg_SI_1
                            jmp check_reg_DI_2_hexa_is_digit_or_letter_4
                            reg_DI_2_hexa_is_letter_3 : sub al, 9d
                            add al, 60h
                            mov reg_DI_2 + 4, al
                            jmp check_reg_DI_2_hexa_is_digit_or_letter_4
check_reg_DI_2_hexa_is_digit_or_letter_4 :
                            ; compare if is between range of digits or no
                            mov bl, 0d; lower range of numbers
                            cmp ah, bl
                            jge check_upper_bound_value_reg_DI_2_4
                            jmp reg_DI_2_hexa_is_letter_4

                            check_upper_bound_value_reg_DI_2_4 : mov bl, 9d
                            cmp ah, bl
                            jbe reg_DI_2_hexa_is_digit_4
                            jmp reg_DI_2_hexa_is_letter_4
                            reg_DI_2_hexa_is_digit_4 : add ah, 30h; to transform it into ascii
                            mov reg_DI_2 + 5, ah; al = 31h-- > = 1d; put directly into reg_SI_1
                            jmp finished_reg_DI_2_hexa_is_digit_or_letter
                            reg_DI_2_hexa_is_letter_4 : sub ah, 9d
                            add ah, 60h
                            mov reg_DI_2 + 5, ah
                            jmp finished_reg_DI_2_hexa_is_digit_or_letter
finished_reg_DI_2_hexa_is_digit_or_letter :
; checkthe entries of real_reg_SP_1 are digits or letters
check_reg_SP_1_hexa_is_digit_or_letter_1 : mov cx, real_reg_SP_1
                            mov ah, 00h
                            mov al, ch; higher part of reg SP_1-- > 12h
                            mov dl, 10h
                            div dl; ans is in aland remainder in ah--->al = 1 ah = 2
                            mov bl, 0d; lower range of numbers
                            cmp al, bl
                            jge check_upper_bound_value_reg_SP_1_1
                            jmp reg_SP_1_hexa_is_letter_1

                            check_upper_bound_value_reg_SP_1_1 : mov bl, 9d
                            cmp al, bl
                            jbe reg_SP_1_hexa_is_digit_1
                            jmp reg_SP_1_hexa_is_letter_1
                            reg_SP_1_hexa_is_digit_1 : add al, 30h; to transform it into ascii
                            mov reg_SP_1 + 2, al; al = 31h-- > = 1d; put directly into reg_SP_1
                            jmp check_reg_SP_1_hexa_is_digit_or_letter_2
                            reg_SP_1_hexa_is_letter_1 : sub al, 9d
                            add al, 60h
                            mov reg_SP_1 + 2, al
                            jmp check_reg_SP_1_hexa_is_digit_or_letter_2
check_reg_SP_1_hexa_is_digit_or_letter_2 :
                            ; compare if is between range of digits or no
                            mov bl, 0d; lower range of numbers
                            cmp ah, bl
                            jge check_upper_bound_value_reg_SP_1_2
                            jmp reg_SP_1_hexa_is_letter_2

                            check_upper_bound_value_reg_SP_1_2 : mov bl, 9d
                            cmp ah, bl
                            jbe reg_SP_1_hexa_is_digit_2
                            jmp reg_SP_1_hexa_is_letter_2
                            reg_SP_1_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
                            mov reg_SP_1 + 3, ah; ah = 32h-- > = 2d; put directly into reg_SP_1
                            jmp check_reg_SP_1_hexa_is_digit_or_letter_3
                            reg_SP_1_hexa_is_letter_2 : sub ah, 9d
                            add ah, 60h
                            mov reg_SP_1 + 3, ah
                            jmp check_reg_SP_1_hexa_is_digit_or_letter_3
check_reg_SP_1_hexa_is_digit_or_letter_3 : ; cl contain the lower part of reg SP_1
                            mov ah, 00h
                            mov al, cl; lower part of reg SP_1-- > f5h
                            mov dl, 10h
                            div dl; ans is in aland remainder in ah--->al = f ah = 5
                            mov bl, 0d; lower range of numbers
                            cmp al, bl
                            jge check_upper_bound_value_reg_SP_1_3
                            jmp reg_SP_1_hexa_is_letter_3

                            check_upper_bound_value_reg_SP_1_3 : mov bl, 9d
                            cmp al, bl
                            jbe reg_SP_1_hexa_is_digit_3
                            jmp reg_SP_1_hexa_is_letter_3
                            reg_SP_1_hexa_is_digit_3 : add al, 30h; to transform it into ascii
                            mov reg_SP_1 + 4, al; al = 31h-- > = 1d; put directly into reg_SP_1
                            jmp check_reg_SP_1_hexa_is_digit_or_letter_4
                            reg_SP_1_hexa_is_letter_3 : sub al, 9d
                            add al, 60h
                            mov reg_SP_1 + 4, al
                            jmp check_reg_SP_1_hexa_is_digit_or_letter_4
check_reg_SP_1_hexa_is_digit_or_letter_4 :
                            ; compare if is between range of digits or no
                            mov bl, 0d; lower range of numbers
                            cmp ah, bl
                            jge check_upper_bound_value_reg_SP_1_4
                            jmp reg_SP_1_hexa_is_letter_4

                            check_upper_bound_value_reg_SP_1_4 : mov bl, 9d
                            cmp ah, bl
                            jbe reg_SP_1_hexa_is_digit_4
                            jmp reg_SP_1_hexa_is_letter_4
                            reg_SP_1_hexa_is_digit_4 : add ah, 30h; to transform it into ascii
                            mov reg_SP_1 + 5, ah; al = 31h-- > = 1d; put directly into reg_SP_1
                            jmp finished_reg_SP_1_hexa_is_digit_or_letter
                            reg_SP_1_hexa_is_letter_4 : sub ah, 9d
                            add ah, 60h
                            mov reg_SP_1 + 5, ah
                            jmp finished_reg_SP_1_hexa_is_digit_or_letter
finished_reg_SP_1_hexa_is_digit_or_letter :
; checkthe entries of real_reg_SP_2 are digits or letters
check_reg_SP_2_hexa_is_digit_or_letter_1 : mov cx, real_reg_SP_2
                            mov ah, 00h
                            mov al, ch; higher part of reg SP_1-- > 12h
                            mov dl, 10h
                            div dl; ans is in aland remainder in ah--->al = 1 ah = 2
                            mov bl, 0d; lower range of numbers
                            cmp al, bl
                            jge check_upper_bound_value_reg_SP_2_1
                            jmp reg_SP_2_hexa_is_letter_1

                            check_upper_bound_value_reg_SP_2_1 : mov bl, 9d
                            cmp al, bl
                            jbe reg_SP_2_hexa_is_digit_1
                            jmp reg_SP_2_hexa_is_letter_1
                            reg_SP_2_hexa_is_digit_1 : add al, 30h; to transform it into ascii
                            mov reg_SP_2 + 2, al; al = 31h-- > = 1d; put directly into reg_SP_1
                            jmp check_reg_SP_2_hexa_is_digit_or_letter_2
                            reg_SP_2_hexa_is_letter_1 : sub al, 9d
                            add al, 60h
                            mov reg_SP_2 + 2, al
                            jmp check_reg_SP_2_hexa_is_digit_or_letter_2
check_reg_SP_2_hexa_is_digit_or_letter_2 :
                            ; compare if is between range of digits or no
                            mov bl, 0d; lower range of numbers
                            cmp ah, bl
                            jge check_upper_bound_value_reg_SP_2_2
                            jmp reg_SP_2_hexa_is_letter_2

                            check_upper_bound_value_reg_SP_2_2 : mov bl, 9d
                            cmp ah, bl
                            jbe reg_SP_2_hexa_is_digit_2
                            jmp reg_SP_2_hexa_is_letter_2
                            reg_SP_2_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
                            mov reg_SP_2 + 3, ah; ah = 32h-- > = 2d; put directly into reg_SP_1
                            jmp check_reg_SP_2_hexa_is_digit_or_letter_3
                            reg_SP_2_hexa_is_letter_2 : sub ah, 9d
                            add ah, 60h
                            mov reg_SP_2 + 3, ah
                            jmp check_reg_SP_2_hexa_is_digit_or_letter_3
check_reg_SP_2_hexa_is_digit_or_letter_3 : ; cl contain the lower part of reg SP_1
                            mov ah, 00h
                            mov al, cl; lower part of reg SP_1-- > f5h
                            mov dl, 10h
                            div dl; ans is in aland remainder in ah--->al = f ah = 5
                            mov bl, 0d; lower range of numbers
                            cmp al, bl
                            jge check_upper_bound_value_reg_SP_2_3
                            jmp reg_SP_2_hexa_is_letter_3

                            check_upper_bound_value_reg_SP_2_3 : mov bl, 9d
                            cmp al, bl
                            jbe reg_SP_2_hexa_is_digit_3
                            jmp reg_SP_2_hexa_is_letter_3
                            reg_SP_2_hexa_is_digit_3 : add al, 30h; to transform it into ascii
                            mov reg_SP_2 + 4, al; al = 31h-- > = 1d; put directly into reg_SP_1
                            jmp check_reg_SP_2_hexa_is_digit_or_letter_4
                            reg_SP_2_hexa_is_letter_3 : sub al, 9d
                            add al, 60h
                            mov reg_SP_2 + 4, al
                            jmp check_reg_SP_2_hexa_is_digit_or_letter_4
check_reg_SP_2_hexa_is_digit_or_letter_4 :
                            ; compare if is between range of digits or no
                            mov bl, 0d; lower range of numbers
                            cmp ah, bl
                            jge check_upper_bound_value_reg_SP_2_4
                            jmp reg_SP_2_hexa_is_letter_4

                            check_upper_bound_value_reg_SP_2_4 : mov bl, 9d
                            cmp ah, bl
                            jbe reg_SP_2_hexa_is_digit_4
                            jmp reg_SP_2_hexa_is_letter_4
                            reg_SP_2_hexa_is_digit_4 : add ah, 30h; to transform it into ascii
                            mov reg_SP_2 + 5, ah; al = 31h-- > = 1d; put directly into reg_SP_1
                            jmp finished_reg_SP_2_hexa_is_digit_or_letter
                            reg_SP_2_hexa_is_letter_4 : sub ah, 9d
                            add ah, 60h
                            mov reg_SP_2 + 5, ah
                            jmp finished_reg_SP_2_hexa_is_digit_or_letter
finished_reg_SP_2_hexa_is_digit_or_letter :
; checkthe entries of real_reg_SP_1 are digits or letters
check_reg_BP_1_hexa_is_digit_or_letter_1 : mov cx, real_reg_BP_1
                            mov ah, 00h
                            mov al, ch; higher part of reg SP_1-- > 12h
                            mov dl, 10h
                            div dl; ans is in aland remainder in ah--->al = 1 ah = 2
                            mov bl, 0d; lower range of numbers
                            cmp al, bl
                            jge check_upper_bound_value_reg_BP_1_1
                            jmp reg_BP_1_hexa_is_letter_1

                            check_upper_bound_value_reg_BP_1_1 : mov bl, 9d
                            cmp al, bl
                            jbe reg_BP_1_hexa_is_digit_1
                            jmp reg_BP_1_hexa_is_letter_1
                            reg_BP_1_hexa_is_digit_1 : add al, 30h; to transform it into ascii
                            mov reg_BP_1 + 2, al; al = 31h-- > = 1d; put directly into reg_SP_1
                            jmp check_reg_BP_1_hexa_is_digit_or_letter_2
                            reg_BP_1_hexa_is_letter_1 : sub al, 9d
                            add al, 60h
                            mov reg_BP_1 + 2, al
                            jmp check_reg_BP_1_hexa_is_digit_or_letter_2
check_reg_BP_1_hexa_is_digit_or_letter_2 :
                            ; compare if is between range of digits or no
                            mov bl, 0d; lower range of numbers
                            cmp ah, bl
                            jge check_upper_bound_value_reg_BP_1_2
                            jmp reg_BP_1_hexa_is_letter_2

                            check_upper_bound_value_reg_BP_1_2 : mov bl, 9d
                            cmp ah, bl
                            jbe reg_BP_1_hexa_is_digit_2
                            jmp reg_BP_1_hexa_is_letter_2
                            reg_BP_1_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
                            mov reg_BP_1 + 3, ah; ah = 32h-- > = 2d; put directly into reg_SP_1
                            jmp check_reg_BP_1_hexa_is_digit_or_letter_3
                            reg_BP_1_hexa_is_letter_2 : sub ah, 9d
                            add ah, 60h
                            mov reg_BP_1 + 3, ah
                            jmp check_reg_BP_1_hexa_is_digit_or_letter_3
check_reg_BP_1_hexa_is_digit_or_letter_3 : ; cl contain the lower part of reg SP_1
                            mov ah, 00h
                            mov al, cl; lower part of reg SP_1-- > f5h
                            mov dl, 10h
                            div dl; ans is in aland remainder in ah--->al = f ah = 5
                            mov bl, 0d; lower range of numbers
                            cmp al, bl
                            jge check_upper_bound_value_reg_BP_1_3
                            jmp reg_BP_1_hexa_is_letter_3

                            check_upper_bound_value_reg_BP_1_3 : mov bl, 9d
                            cmp al, bl
                            jbe reg_BP_1_hexa_is_digit_3
                            jmp reg_BP_1_hexa_is_letter_3
                            reg_BP_1_hexa_is_digit_3 : add al, 30h; to transform it into ascii
                            mov reg_BP_1 + 4, al; al = 31h-- > = 1d; put directly into reg_SP_1
                            jmp check_reg_BP_1_hexa_is_digit_or_letter_4
                            reg_BP_1_hexa_is_letter_3 : sub al, 9d
                            add al, 60h
                            mov reg_BP_1 + 4, al
                            jmp check_reg_BP_1_hexa_is_digit_or_letter_4
check_reg_BP_1_hexa_is_digit_or_letter_4 :
                            ; compare if is between range of digits or no
                            mov bl, 0d; lower range of numbers
                            cmp ah, bl
                            jge check_upper_bound_value_reg_BP_1_4
                            jmp reg_BP_1_hexa_is_letter_4

                            check_upper_bound_value_reg_BP_1_4 : mov bl, 9d
                            cmp ah, bl
                            jbe reg_BP_1_hexa_is_digit_4
                            jmp reg_BP_1_hexa_is_letter_4
                            reg_BP_1_hexa_is_digit_4 : add ah, 30h; to transform it into ascii
                            mov reg_BP_1 + 5, ah; al = 31h-- > = 1d; put directly into reg_SP_1
                            jmp finished_reg_BP_1_hexa_is_digit_or_letter
                            reg_BP_1_hexa_is_letter_4 : sub ah, 9d
                            add ah, 60h
                            mov reg_BP_1 + 5, ah
                            jmp finished_reg_BP_1_hexa_is_digit_or_letter
finished_reg_BP_1_hexa_is_digit_or_letter :
; checkthe entries of real_reg_SP_2 are digits or letters
check_reg_BP_2_hexa_is_digit_or_letter_1 : mov cx, real_reg_BP_2
                            mov ah, 00h
                            mov al, ch; higher part of reg SP_1-- > 12h
                            mov dl, 10h
                            div dl; ans is in aland remainder in ah--->al = 1 ah = 2
                            mov bl, 0d; lower range of numbers
                            cmp al, bl
                            jge check_upper_bound_value_reg_BP_2_1
                            jmp reg_BP_2_hexa_is_letter_1

                            check_upper_bound_value_reg_BP_2_1 : mov bl, 9d
                            cmp al, bl
                            jbe reg_BP_2_hexa_is_digit_1
                            jmp reg_BP_2_hexa_is_letter_1
                            reg_BP_2_hexa_is_digit_1 : add al, 30h; to transform it into ascii
                            mov reg_BP_2 + 2, al; al = 31h-- > = 1d; put directly into reg_SP_1
                            jmp check_reg_BP_2_hexa_is_digit_or_letter_2
                            reg_BP_2_hexa_is_letter_1 : sub al, 9d
                            add al, 60h
                            mov reg_BP_2 + 2, al
                            jmp check_reg_BP_2_hexa_is_digit_or_letter_2
check_reg_BP_2_hexa_is_digit_or_letter_2 :
                            ; compare if is between range of digits or no
                            mov bl, 0d; lower range of numbers
                            cmp ah, bl
                            jge check_upper_bound_value_reg_BP_2_2
                            jmp reg_BP_2_hexa_is_letter_2

                            check_upper_bound_value_reg_BP_2_2 : mov bl, 9d
                            cmp ah, bl
                            jbe reg_BP_2_hexa_is_digit_2
                            jmp reg_BP_2_hexa_is_letter_2
                            reg_BP_2_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
                            mov reg_BP_2 + 3, ah; ah = 32h-- > = 2d; put directly into reg_SP_1
                            jmp check_reg_BP_2_hexa_is_digit_or_letter_3
                            reg_BP_2_hexa_is_letter_2 : sub ah, 9d
                            add ah, 60h
                            mov reg_BP_2 + 3, ah
                            jmp check_reg_BP_2_hexa_is_digit_or_letter_3
check_reg_BP_2_hexa_is_digit_or_letter_3 : ; cl contain the lower part of reg SP_1
                            mov ah, 00h
                            mov al, cl; lower part of reg SP_1-- > f5h
                            mov dl, 10h
                            div dl; ans is in aland remainder in ah--->al = f ah = 5
                            mov bl, 0d; lower range of numbers
                            cmp al, bl
                            jge check_upper_bound_value_reg_BP_2_3
                            jmp reg_BP_2_hexa_is_letter_3

                            check_upper_bound_value_reg_BP_2_3 : mov bl, 9d
                            cmp al, bl
                            jbe reg_BP_2_hexa_is_digit_3
                            jmp reg_BP_2_hexa_is_letter_3
                            reg_BP_2_hexa_is_digit_3 : add al, 30h; to transform it into ascii
                            mov reg_BP_2 + 4, al; al = 31h-- > = 1d; put directly into reg_SP_1
                            jmp check_reg_BP_2_hexa_is_digit_or_letter_4
                            reg_BP_2_hexa_is_letter_3 : sub al, 9d
                            add al, 60h
                            mov reg_BP_2 + 4, al
                            jmp check_reg_BP_2_hexa_is_digit_or_letter_4
check_reg_BP_2_hexa_is_digit_or_letter_4 :
                            ; compare if is between range of digits or no
                            mov bl, 0d; lower range of numbers
                            cmp ah, bl
                            jge check_upper_bound_value_reg_BP_2_4
                            jmp reg_BP_2_hexa_is_letter_4

                            check_upper_bound_value_reg_BP_2_4 : mov bl, 9d
                            cmp ah, bl
                            jbe reg_BP_2_hexa_is_digit_4
                            jmp reg_BP_2_hexa_is_letter_4
                            reg_BP_2_hexa_is_digit_4 : add ah, 30h; to transform it into ascii
                            mov reg_BP_2 + 5, ah; al = 31h-- > = 1d; put directly into reg_SP_1
                            jmp finished_reg_BP_2_hexa_is_digit_or_letter
                            reg_BP_2_hexa_is_letter_4 : sub ah, 9d
                            add ah, 60h
                            mov reg_BP_2 + 5, ah
                            jmp finished_reg_BP_2_hexa_is_digit_or_letter
finished_reg_BP_2_hexa_is_digit_or_letter :
ret
update_players_registers_values endp

;///////////////////////////////////////ky
 print_register_values proc

;print values of regs. of both players 1 and 2
;mov cursor to SI 1 reg box
       mov ah,2h ;
       mov bx,0h  
       mov dx,3521h
       int 10h
       mov ah,9 ;print value of reg SI 1
       lea dx,reg_SI_1+2 ;//done
       int 21h
;mov cursor to DX 1 reg box
       mov ah,2h ;
       mov bx,0h  
       mov dx,2323h
       int 10h
       mov ah,9 ;print value of reg DX 1
       lea dx,reg_Dx_1+2 ;//done
       int 21h

;mov cursor to BP 1 reg box
       mov ah,2h ;
       mov bx,0h  
       mov dx,2301h
       int 10h
       mov ah,9 ;print value of reg BP 1
       lea dx,reg_BP_1+2 ;//done
       int 21h  

;mov cursor to DI 1 reg box
       mov ah,2h ;
       mov bx,0h  
       mov dx,0431h
       int 10h
       mov ah,9 ;print value of reg DI 1
       lea dx,reg_DI_1+2 ;//DONE
       int 21h

;mov cursor to CX 1 reg box
       mov ah,2h ;
       mov bx,0h  
       mov dx,0703h
       int 10h
       mov ah,9 ;print value of reg CX 1
       lea dx,reg_Cx_1+2 ;//done
       int 21h  

;mov cursor to SP 1 reg box
       mov ah,2h ;
       mov bx,0h  
       mov dx,2101h
       int 10h
       mov ah,9 ;print value of reg SP 1
       lea dx,reg_SP_1+2 ;//done
       int 21h   

;mov cursor to BX 1 reg box
       mov ah,2h ;
       mov bx,0h  
       mov dx,0503h
       int 10h
       mov ah,9 ;print value of reg BX 1
       lea dx,reg_Bx_1+2; //done
       int 21h      

;mov cursor to AX 1 reg box
       mov ah,2h ;
       mov bx,0h  
       mov dx,0203h
       int 10h
       mov ah,9 ;print value of reg AX 1
       lea dx,reg_Ax_1+2 ;//done
       int 21h    

;REGS. 2 
;mov cursor to DX 2 reg box
       mov ah,2h ;
       mov bx,0h  
       mov dx,2338h
       int 10h
       mov ah,9 ;print value of reg DX 2
       lea dx,reg_Dx_2+2 ;//done
       int 21h

;mov cursor to BP 2 reg box
       mov ah,2h ;
       mov bx,0h  
       mov dx,2315h     ;2316                              29/12/2021 changed***
       int 10h
       mov ah,9 ;print value of reg BP 2
       lea dx,reg_BP_2+2 ;//done
       int 21h

       
;mov cursor to BX 2 reg box
       mov ah,2h ;
       mov bx,0h  
       mov dx,3808h
       int 10h
       mov ah,9 ;print value of reg BX 2
       lea dx,reg_Bx_2+2 ;//done
       int 21h

;mov cursor to CX 2 reg box
       mov ah,2h ;
       mov bx,0h  
       mov dx,2138h
       int 10h
       mov ah,9 ;print value of reg CX 2
       lea dx,reg_Cx_2+2 ;//done
       int 21h

;mov cursor to AX 2 reg box
       mov ah,2h ;
       mov bx,0h  
       mov dx,3508h
       int 10h
       mov ah,9 ;print value of reg AX 2
       lea dx,reg_Ax_2+2 ;//done
       int 21h

;mov cursor to SI 2 reg box                           
       mov ah,2h ;
       mov bx,0h  
       mov dx,3535h                 ;3535                   29/12/2021 changed***
       int 10h
       mov ah,9 ;print value of reg SI 2
       lea dx,reg_SI_2+2 ;//DONE
       int 21h

;mov cursor to SP 2 reg box
       mov ah,2h ;
       mov bx,0h  
       mov dx,2115h               ;2116 29/12/2021 changed***
       int 10h
       mov ah,9 ;print value of reg SP 2
       lea dx,reg_SP_2+2 ;//done
       int 21h

;mov cursor to DI 2 reg box
       mov ah,2h ;
       mov bx,0h  
       mov dx,3835h          ;3836           ;29/12/2021 changed***
       int 10h
       mov ah,9 ;print value of reg DI 2
       lea dx,reg_DI_2+2 ;//done
       int 21h
 
ret
print_register_values endp

;///////////////////////////////////////ky
 update_players_memory_values proc
;update values of registers of both players 1 and 2
;TO DO K.Y
 ;to print just first 2 digits replace the third by 0DH equivalent to 'Enter' key ascii
       mov al,0Dh 
       mov memory_0_1+4,al
       mov memory_1_1+4,al
       mov memory_2_1+4,al
       mov memory_3_1+4,al
       mov memory_4_1+4,al
       mov memory_5_1+4,al
       mov memory_6_1+4,al
       mov memory_7_1+4,al
       mov memory_8_1+4,al
       mov memory_9_1+4,al
       mov memory_A_1+4,al
       mov memory_0_2+4,al
       mov memory_1_2+4,al
       mov memory_2_2+4,al
       mov memory_3_2+4,al
       mov memory_4_2+4,al
       mov memory_5_2+4,al
       mov memory_6_2+4,al
       mov memory_7_2+4,al
       mov memory_8_2+4,al
       mov memory_9_2+4,al
       mov memory_A_2+4,al
       ;checkthe entries of real_memory_0_1 are digits or letters
check_memory_0_1_hexa_is_digit_or_letter_1: mov ch,real_memory_0_1
                               mov ah,00h
                               mov al,ch ;value of memory_0_1  --> 12h
                               mov dl,10h
                               div dl ;ans is in al and remainder in ah ---> al=1 ah=2
                               mov bl, 0d ;lower range of numbers
                               cmp al,bl
                               jge check_upper_bound_value_memory_0_1_1
                               jmp memory_0_1_hexa_is_letter_1

                               check_upper_bound_value_memory_0_1_1:    mov bl,9d
                                                               cmp al,bl
                                                               jbe memory_0_1_hexa_is_digit_1
                                                               jmp memory_0_1_hexa_is_letter_1
                               memory_0_1_hexa_is_digit_1:add al,30h            ;to transform it into ascii
                                                 mov memory_0_1+2,al     ; al=31h --> =1d ; put directly into reg_Ax_1
                                                 jmp check_memory_0_1_hexa_is_digit_or_letter_2
                               memory_0_1_hexa_is_letter_1:sub al,9d
                                                 add al,60h
                                                 mov memory_0_1+2,al 
                                                 jmp check_memory_0_1_hexa_is_digit_or_letter_2
check_memory_0_1_hexa_is_digit_or_letter_2: 
                               ;compare if is between range of digits or no
                               mov bl, 0d ;lower range of numbers
                               cmp ah,bl
                               jge check_upper_bound_value_memory_0_1_2
                               jmp memory_0_1_hexa_is_letter_2

                               check_upper_bound_value_memory_0_1_2:    mov bl,9d
                                                               cmp ah,bl
                                                               jbe memory_0_1_hexa_is_digit_2
                                                               jmp memory_0_1_hexa_is_letter_2
                               memory_0_1_hexa_is_digit_2:add ah,30h            ;to transform it into ascii
                                                 mov memory_0_1+3,ah     ; ah=32h --> =2d ; put directly into reg_Ax_1
                                                 jmp check_done_memory_0_1_hexa_is_digit_or_letter
                               memory_0_1_hexa_is_letter_2:sub ah,9d
                                                 add ah,60h
                                                 mov memory_0_1+3,ah 
                                                 jmp check_done_memory_0_1_hexa_is_digit_or_letter
                            check_done_memory_0_1_hexa_is_digit_or_letter:
; checkthe entries of real_memory_1_1 are digits or letters
check_memory_1_1_hexa_is_digit_or_letter_1 : mov ch, real_memory_1_1
mov ah, 00h
mov al, ch; value of memory_1_1-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_memory_1_1_1
jmp memory_1_1_hexa_is_letter_1

check_upper_bound_value_memory_1_1_1 : mov bl, 9d
cmp al, bl
jbe memory_1_1_hexa_is_digit_1
jmp memory_1_1_hexa_is_letter_1
memory_1_1_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov memory_1_1 + 2, al; al = 31h-- > = 1d; put directly into reg_Ax_1
jmp check_memory_1_1_hexa_is_digit_or_letter_2
memory_1_1_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov memory_1_1 + 2, al
jmp check_memory_1_1_hexa_is_digit_or_letter_2
check_memory_1_1_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_memory_1_1_2
jmp memory_1_1_hexa_is_letter_2

check_upper_bound_value_memory_1_1_2 : mov bl, 9d
cmp ah, bl
jbe memory_1_1_hexa_is_digit_2
jmp memory_1_1_hexa_is_letter_2
memory_1_1_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov memory_1_1 + 3, ah; ah = 32h-- > = 2d; put directly into reg_Ax_1
jmp check_done_memory_1_1_hexa_is_digit_or_letter
memory_1_1_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov memory_1_1 + 3, ah
jmp check_done_memory_1_1_hexa_is_digit_or_letter
check_done_memory_1_1_hexa_is_digit_or_letter :
; checkthe entries of real_memory_2_1 are digits or letters
check_memory_2_1_hexa_is_digit_or_letter_1 : mov ch, real_memory_2_1
mov ah, 00h
mov al, ch; value of memory_2_1-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_memory_2_1_1
jmp memory_2_1_hexa_is_letter_1

check_upper_bound_value_memory_2_1_1 : mov bl, 9d
cmp al, bl
jbe memory_2_1_hexa_is_digit_1
jmp memory_2_1_hexa_is_letter_1
memory_2_1_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov memory_2_1 + 2, al; al = 31h-- > = 1d; put directly into reg_Ax_1
jmp check_memory_2_1_hexa_is_digit_or_letter_2
memory_2_1_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov memory_2_1 + 2, al
jmp check_memory_2_1_hexa_is_digit_or_letter_2
check_memory_2_1_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_memory_2_1_2
jmp memory_2_1_hexa_is_letter_2

check_upper_bound_value_memory_2_1_2 : mov bl, 9d
cmp ah, bl
jbe memory_2_1_hexa_is_digit_2
jmp memory_2_1_hexa_is_letter_2
memory_2_1_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov memory_2_1 + 3, ah; ah = 32h-- > = 2d; put directly into reg_Ax_1
jmp check_done_memory_2_1_hexa_is_digit_or_letter
memory_2_1_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov memory_2_1 + 3, ah
jmp check_done_memory_2_1_hexa_is_digit_or_letter
check_done_memory_2_1_hexa_is_digit_or_letter :
; checkthe entries of real_memory_3_1 are digits or letters
check_memory_3_1_hexa_is_digit_or_letter_1 : mov ch, real_memory_3_1
mov ah, 00h
mov al, ch; value of memory_3_1-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_memory_3_1_1
jmp memory_3_1_hexa_is_letter_1

check_upper_bound_value_memory_3_1_1 : mov bl, 9d
cmp al, bl
jbe memory_3_1_hexa_is_digit_1
jmp memory_3_1_hexa_is_letter_1
memory_3_1_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov memory_3_1 + 2, al; al = 31h-- > = 1d; put directly into reg_Ax_1
jmp check_memory_3_1_hexa_is_digit_or_letter_2
memory_3_1_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov memory_3_1 + 2, al
jmp check_memory_3_1_hexa_is_digit_or_letter_2
check_memory_3_1_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_memory_3_1_2
jmp memory_3_1_hexa_is_letter_2

check_upper_bound_value_memory_3_1_2 : mov bl, 9d
cmp ah, bl
jbe memory_3_1_hexa_is_digit_2
jmp memory_3_1_hexa_is_letter_2
memory_3_1_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov memory_3_1 + 3, ah; ah = 32h-- > = 2d; put directly into reg_Ax_1
jmp check_done_memory_3_1_hexa_is_digit_or_letter
memory_3_1_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov memory_3_1 + 3, ah
jmp check_done_memory_3_1_hexa_is_digit_or_letter
check_done_memory_3_1_hexa_is_digit_or_letter :
; checkthe entries of real_memory_4_1 are digits or letters
check_memory_4_1_hexa_is_digit_or_letter_1 : mov ch, real_memory_4_1
mov ah, 00h
mov al, ch; value of memory_4_1-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_memory_4_1_1
jmp memory_4_1_hexa_is_letter_1

check_upper_bound_value_memory_4_1_1 : mov bl, 9d
cmp al, bl
jbe memory_4_1_hexa_is_digit_1
jmp memory_4_1_hexa_is_letter_1
memory_4_1_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov memory_4_1 + 2, al; al = 31h-- > = 1d; put directly into reg_Ax_1
jmp check_memory_4_1_hexa_is_digit_or_letter_2
memory_4_1_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov memory_4_1 + 2, al
jmp check_memory_4_1_hexa_is_digit_or_letter_2
check_memory_4_1_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_memory_4_1_2
jmp memory_4_1_hexa_is_letter_2

check_upper_bound_value_memory_4_1_2 : mov bl, 9d
cmp ah, bl
jbe memory_4_1_hexa_is_digit_2
jmp memory_4_1_hexa_is_letter_2
memory_4_1_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov memory_4_1 + 3, ah; ah = 32h-- > = 2d; put directly into reg_Ax_1
jmp check_done_memory_4_1_hexa_is_digit_or_letter
memory_4_1_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov memory_4_1 + 3, ah
jmp check_done_memory_4_1_hexa_is_digit_or_letter
check_done_memory_4_1_hexa_is_digit_or_letter :
; checkthe entries of real_memory_5_1 are digits or letters
check_memory_5_1_hexa_is_digit_or_letter_1 : mov ch, real_memory_5_1
mov ah, 00h
mov al, ch; value of memory_5_1-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_memory_5_1_1
jmp memory_5_1_hexa_is_letter_1

check_upper_bound_value_memory_5_1_1 : mov bl, 9d
cmp al, bl
jbe memory_5_1_hexa_is_digit_1
jmp memory_5_1_hexa_is_letter_1
memory_5_1_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov memory_5_1 + 2, al; al = 31h-- > = 1d; put directly into reg_Ax_1
jmp check_memory_5_1_hexa_is_digit_or_letter_2
memory_5_1_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov memory_5_1 + 2, al
jmp check_memory_5_1_hexa_is_digit_or_letter_2
check_memory_5_1_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_memory_5_1_2
jmp memory_5_1_hexa_is_letter_2

check_upper_bound_value_memory_5_1_2 : mov bl, 9d
cmp ah, bl
jbe memory_5_1_hexa_is_digit_2
jmp memory_5_1_hexa_is_letter_2
memory_5_1_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov memory_5_1 + 3, ah; ah = 32h-- > = 2d; put directly into reg_Ax_1
jmp check_done_memory_5_1_hexa_is_digit_or_letter
memory_5_1_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov memory_5_1 + 3, ah
jmp check_done_memory_5_1_hexa_is_digit_or_letter
check_done_memory_5_1_hexa_is_digit_or_letter :
; checkthe entries of real_memory_6_1 are digits or letters
check_memory_6_1_hexa_is_digit_or_letter_1 : mov ch, real_memory_6_1
mov ah, 00h
mov al, ch; value of memory_6_1-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_memory_6_1_1
jmp memory_6_1_hexa_is_letter_1

check_upper_bound_value_memory_6_1_1 : mov bl, 9d
cmp al, bl
jbe memory_6_1_hexa_is_digit_1
jmp memory_6_1_hexa_is_letter_1
memory_6_1_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov memory_6_1 + 2, al; al = 31h-- > = 1d; put directly into reg_Ax_1
jmp check_memory_6_1_hexa_is_digit_or_letter_2
memory_6_1_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov memory_6_1 + 2, al
jmp check_memory_6_1_hexa_is_digit_or_letter_2
check_memory_6_1_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_memory_6_1_2
jmp memory_6_1_hexa_is_letter_2

check_upper_bound_value_memory_6_1_2 : mov bl, 9d
cmp ah, bl
jbe memory_6_1_hexa_is_digit_2
jmp memory_6_1_hexa_is_letter_2
memory_6_1_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov memory_6_1 + 3, ah; ah = 32h-- > = 2d; put directly into reg_Ax_1
jmp check_done_memory_6_1_hexa_is_digit_or_letter
memory_6_1_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov memory_6_1 + 3, ah
jmp check_done_memory_6_1_hexa_is_digit_or_letter
check_done_memory_6_1_hexa_is_digit_or_letter :
; checkthe entries of real_memory_7_1 are digits or letters
check_memory_7_1_hexa_is_digit_or_letter_1 : mov ch, real_memory_7_1
mov ah, 00h
mov al, ch; value of memory_7_1-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_memory_7_1_1
jmp memory_7_1_hexa_is_letter_1

check_upper_bound_value_memory_7_1_1 : mov bl, 9d
cmp al, bl
jbe memory_7_1_hexa_is_digit_1
jmp memory_7_1_hexa_is_letter_1
memory_7_1_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov memory_7_1 + 2, al; al = 31h-- > = 1d; put directly into reg_Ax_1
jmp check_memory_7_1_hexa_is_digit_or_letter_2
memory_7_1_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov memory_7_1 + 2, al
jmp check_memory_7_1_hexa_is_digit_or_letter_2
check_memory_7_1_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_memory_7_1_2
jmp memory_7_1_hexa_is_letter_2

check_upper_bound_value_memory_7_1_2 : mov bl, 9d
cmp ah, bl
jbe memory_7_1_hexa_is_digit_2
jmp memory_7_1_hexa_is_letter_2
memory_7_1_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov memory_7_1 + 3, ah; ah = 32h-- > = 2d; put directly into memory_7_1
jmp check_done_memory_7_1_hexa_is_digit_or_letter
memory_7_1_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov memory_7_1 + 3, ah
jmp check_done_memory_7_1_hexa_is_digit_or_letter
check_done_memory_7_1_hexa_is_digit_or_letter :
; checkthe entries of real_memory_8_1 are digits or letters
check_memory_8_1_hexa_is_digit_or_letter_1 : mov ch, real_memory_8_1
mov ah, 00h
mov al, ch; value of memory_8_1-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_memory_8_1_1
jmp memory_8_1_hexa_is_letter_1

check_upper_bound_value_memory_8_1_1 : mov bl, 9d
cmp al, bl
jbe memory_8_1_hexa_is_digit_1
jmp memory_8_1_hexa_is_letter_1
memory_8_1_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov memory_8_1 + 2, al; al = 31h-- > = 1d; put directly into reg_Ax_1
jmp check_memory_8_1_hexa_is_digit_or_letter_2
memory_8_1_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov memory_8_1 + 2, al
jmp check_memory_8_1_hexa_is_digit_or_letter_2
check_memory_8_1_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_memory_8_1_2
jmp memory_8_1_hexa_is_letter_2

check_upper_bound_value_memory_8_1_2 : mov bl, 9d
cmp ah, bl
jbe memory_8_1_hexa_is_digit_2
jmp memory_8_1_hexa_is_letter_2
memory_8_1_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov memory_8_1 + 3, ah; ah = 32h-- > = 2d; put directly into reg_Ax_1
jmp check_done_memory_8_1_hexa_is_digit_or_letter
memory_8_1_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov memory_8_1 + 3, ah
jmp check_done_memory_8_1_hexa_is_digit_or_letter
check_done_memory_8_1_hexa_is_digit_or_letter :
; checkthe entries of real_memory_9_1 are digits or letters
check_memory_9_1_hexa_is_digit_or_letter_1 : mov ch, real_memory_9_1
mov ah, 00h
mov al, ch; value of memory_9_1-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_memory_9_1_1
jmp memory_9_1_hexa_is_letter_1

check_upper_bound_value_memory_9_1_1 : mov bl, 9d
cmp al, bl
jbe memory_9_1_hexa_is_digit_1
jmp memory_9_1_hexa_is_letter_1
memory_9_1_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov memory_9_1 + 2, al; al = 31h-- > = 1d; put directly into memory_9_1
jmp check_memory_9_1_hexa_is_digit_or_letter_2
memory_9_1_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov memory_9_1 + 2, al
jmp check_memory_9_1_hexa_is_digit_or_letter_2
check_memory_9_1_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_memory_9_1_2
jmp memory_9_1_hexa_is_letter_2

check_upper_bound_value_memory_9_1_2 : mov bl, 9d
cmp ah, bl
jbe memory_9_1_hexa_is_digit_2
jmp memory_9_1_hexa_is_letter_2
memory_9_1_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov memory_9_1 + 3, ah; ah = 32h-- > = 2d; put directly into memory_9_1
jmp check_done_memory_9_1_hexa_is_digit_or_letter
memory_9_1_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov memory_9_1 + 3, ah
jmp check_done_memory_9_1_hexa_is_digit_or_letter
check_done_memory_9_1_hexa_is_digit_or_letter :
; checkthe entries of real_memory_A_1 are digits or letters
check_memory_A_1_hexa_is_digit_or_letter_1 : mov ch, real_memory_A_1
mov ah, 00h
mov al, ch; value of memory_A_1-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_memory_A_1_1
jmp memory_A_1_hexa_is_letter_1

check_upper_bound_value_memory_A_1_1 : mov bl, 9d
cmp al, bl
jbe memory_A_1_hexa_is_digit_1
jmp memory_A_1_hexa_is_letter_1
memory_A_1_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov memory_A_1 + 2, al; al = 31h-- > = 1d; put directly into reg_Ax_1
jmp check_memory_A_1_hexa_is_digit_or_letter_2
memory_A_1_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov memory_A_1 + 2, al
jmp check_memory_A_1_hexa_is_digit_or_letter_2
check_memory_A_1_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_memory_A_1_2
jmp memory_A_1_hexa_is_letter_2

check_upper_bound_value_memory_A_1_2 : mov bl, 9d
cmp ah, bl
jbe memory_A_1_hexa_is_digit_2
jmp memory_A_1_hexa_is_letter_2
memory_A_1_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov memory_A_1 + 3, ah; ah = 32h-- > = 2d; put directly into reg_Ax_1
jmp check_done_memory_A_1_hexa_is_digit_or_letter
memory_A_1_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov memory_A_1 + 3, ah
jmp check_done_memory_A_1_hexa_is_digit_or_letter
check_done_memory_A_1_hexa_is_digit_or_letter :

;for memory2
; checkthe entries of real_memory_0_2 are digits or letters
check_memory_0_2_hexa_is_digit_or_letter_1 : mov ch, real_memory_0_2
mov ah, 00h
mov al, ch; value of memory_0_2-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_memory_0_2_1
jmp memory_0_2_hexa_is_letter_1

check_upper_bound_value_memory_0_2_1 : mov bl, 9d
cmp al, bl
jbe memory_0_2_hexa_is_digit_1
jmp memory_0_2_hexa_is_letter_1
memory_0_2_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov memory_0_2 + 2, al; al = 31h-- > = 1d; put directly into reg_Ax_1
jmp check_memory_0_2_hexa_is_digit_or_letter_2
memory_0_2_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov memory_0_2 + 2, al
jmp check_memory_0_2_hexa_is_digit_or_letter_2
check_memory_0_2_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_memory_0_2_2
jmp memory_0_2_hexa_is_letter_2

check_upper_bound_value_memory_0_2_2 : mov bl, 9d
cmp ah, bl
jbe memory_0_2_hexa_is_digit_2
jmp memory_0_2_hexa_is_letter_2
memory_0_2_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov memory_0_2 + 3, ah; ah = 32h-- > = 2d; put directly into reg_Ax_1
jmp check_done_memory_0_2_hexa_is_digit_or_letter
memory_0_2_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov memory_0_2 + 3, ah
jmp check_done_memory_0_2_hexa_is_digit_or_letter
check_done_memory_0_2_hexa_is_digit_or_letter :
; checkthe entries of real_memory_1_2 are digits or letters
check_memory_1_2_hexa_is_digit_or_letter_1 : mov ch, real_memory_1_2
mov ah, 00h
mov al, ch; value of memory_1_2-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_memory_1_2_1
jmp memory_1_2_hexa_is_letter_1

check_upper_bound_value_memory_1_2_1 : mov bl, 9d
cmp al, bl
jbe memory_1_2_hexa_is_digit_1
jmp memory_1_2_hexa_is_letter_1
memory_1_2_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov memory_1_2 + 2, al; al = 31h-- > = 1d; put directly into reg_Ax_1
jmp check_memory_1_2_hexa_is_digit_or_letter_2
memory_1_2_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov memory_1_2 + 2, al
jmp check_memory_1_2_hexa_is_digit_or_letter_2
check_memory_1_2_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_memory_1_2_2
jmp memory_1_2_hexa_is_letter_2

check_upper_bound_value_memory_1_2_2 : mov bl, 9d
cmp ah, bl
jbe memory_1_2_hexa_is_digit_2
jmp memory_1_2_hexa_is_letter_2
memory_1_2_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov memory_1_2 + 3, ah; ah = 32h-- > = 2d; put directly into reg_Ax_1
jmp check_done_memory_1_2_hexa_is_digit_or_letter
memory_1_2_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov memory_1_2 + 3, ah
jmp check_done_memory_1_2_hexa_is_digit_or_letter
check_done_memory_1_2_hexa_is_digit_or_letter :
; checkthe entries of real_memory_2_2 are digits or letters
check_memory_2_2_hexa_is_digit_or_letter_1 : mov ch, real_memory_2_2
mov ah, 00h
mov al, ch; value of memory_2_2-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_memory_2_2_1
jmp memory_2_2_hexa_is_letter_1

check_upper_bound_value_memory_2_2_1 : mov bl, 9d
cmp al, bl
jbe memory_2_2_hexa_is_digit_1
jmp memory_2_2_hexa_is_letter_1
memory_2_2_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov memory_2_2 + 2, al; al = 31h-- > = 1d; put directly into reg_Ax_1
jmp check_memory_2_2_hexa_is_digit_or_letter_2
memory_2_2_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov memory_2_2 + 2, al
jmp check_memory_2_2_hexa_is_digit_or_letter_2
check_memory_2_2_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_memory_2_2_2
jmp memory_2_2_hexa_is_letter_2

check_upper_bound_value_memory_2_2_2 : mov bl, 9d
cmp ah, bl
jbe memory_2_2_hexa_is_digit_2
jmp memory_2_2_hexa_is_letter_2
memory_2_2_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov memory_2_2 + 3, ah; ah = 32h-- > = 2d; put directly into reg_Ax_1
jmp check_done_memory_2_2_hexa_is_digit_or_letter
memory_2_2_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov memory_2_2 + 3, ah
jmp check_done_memory_2_2_hexa_is_digit_or_letter
check_done_memory_2_2_hexa_is_digit_or_letter :
; checkthe entries of real_memory_3_2 are digits or letters
check_memory_3_2_hexa_is_digit_or_letter_1 : mov ch, real_memory_3_2
mov ah, 00h
mov al, ch; value of memory_3_2-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_memory_3_2_1
jmp memory_3_2_hexa_is_letter_1

check_upper_bound_value_memory_3_2_1 : mov bl, 9d
cmp al, bl
jbe memory_3_2_hexa_is_digit_1
jmp memory_3_2_hexa_is_letter_1
memory_3_2_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov memory_3_2 + 2, al; al = 31h-- > = 1d; put directly into reg_Ax_1
jmp check_memory_3_2_hexa_is_digit_or_letter_2
memory_3_2_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov memory_3_2 + 2, al
jmp check_memory_3_2_hexa_is_digit_or_letter_2
check_memory_3_2_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_memory_3_2_2
jmp memory_3_2_hexa_is_letter_2

check_upper_bound_value_memory_3_2_2 : mov bl, 9d
cmp ah, bl
jbe memory_3_2_hexa_is_digit_2
jmp memory_3_2_hexa_is_letter_2
memory_3_2_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov memory_3_2 + 3, ah; ah = 32h-- > = 2d; put directly into reg_Ax_1
jmp check_done_memory_3_2_hexa_is_digit_or_letter
memory_3_2_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov memory_3_2 + 3, ah
jmp check_done_memory_3_2_hexa_is_digit_or_letter
check_done_memory_3_2_hexa_is_digit_or_letter :
; checkthe entries of real_memory_4_2 are digits or letters
check_memory_4_2_hexa_is_digit_or_letter_1 : mov ch, real_memory_4_2
mov ah, 00h
mov al, ch; value of memory_4_2-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_memory_4_2_1
jmp memory_4_2_hexa_is_letter_1

check_upper_bound_value_memory_4_2_1 : mov bl, 9d
cmp al, bl
jbe memory_4_2_hexa_is_digit_1
jmp memory_4_2_hexa_is_letter_1
memory_4_2_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov memory_4_2 + 2, al; al = 31h-- > = 1d; put directly into reg_Ax_1
jmp check_memory_4_2_hexa_is_digit_or_letter_2
memory_4_2_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov memory_4_2 + 2, al
jmp check_memory_4_2_hexa_is_digit_or_letter_2
check_memory_4_2_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_memory_4_2_2
jmp memory_4_2_hexa_is_letter_2

check_upper_bound_value_memory_4_2_2 : mov bl, 9d
cmp ah, bl
jbe memory_4_2_hexa_is_digit_2
jmp memory_4_2_hexa_is_letter_2
memory_4_2_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov memory_4_2 + 3, ah; ah = 32h-- > = 2d; put directly into reg_Ax_1
jmp check_done_memory_4_2_hexa_is_digit_or_letter
memory_4_2_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov memory_4_2 + 3, ah
jmp check_done_memory_4_2_hexa_is_digit_or_letter
check_done_memory_4_2_hexa_is_digit_or_letter :
; checkthe entries of real_memory_5_2 are digits or letters
check_memory_5_2_hexa_is_digit_or_letter_1 : mov ch, real_memory_5_2
mov ah, 00h
mov al, ch; value of memory_5_2-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_memory_5_2_1
jmp memory_5_2_hexa_is_letter_1

check_upper_bound_value_memory_5_2_1 : mov bl, 9d
cmp al, bl
jbe memory_5_2_hexa_is_digit_1
jmp memory_5_2_hexa_is_letter_1
memory_5_2_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov memory_5_2 + 2, al; al = 31h-- > = 1d; put directly into reg_Ax_1
jmp check_memory_5_2_hexa_is_digit_or_letter_2
memory_5_2_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov memory_5_2 + 2, al
jmp check_memory_5_2_hexa_is_digit_or_letter_2
check_memory_5_2_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_memory_5_2_2
jmp memory_5_2_hexa_is_letter_2

check_upper_bound_value_memory_5_2_2 : mov bl, 9d
cmp ah, bl
jbe memory_5_2_hexa_is_digit_2
jmp memory_5_2_hexa_is_letter_2
memory_5_2_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov memory_5_2 + 3, ah; ah = 32h-- > = 2d; put directly into reg_Ax_1
jmp check_done_memory_5_2_hexa_is_digit_or_letter
memory_5_2_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov memory_5_2 + 3, ah
jmp check_done_memory_5_2_hexa_is_digit_or_letter
check_done_memory_5_2_hexa_is_digit_or_letter :
; checkthe entries of real_memory_6_2 are digits or letters
check_memory_6_2_hexa_is_digit_or_letter_1 : mov ch, real_memory_6_2
mov ah, 00h
mov al, ch; value of memory_6_2-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_memory_6_2_1
jmp memory_6_2_hexa_is_letter_1

check_upper_bound_value_memory_6_2_1 : mov bl, 9d
cmp al, bl
jbe memory_6_2_hexa_is_digit_1
jmp memory_6_2_hexa_is_letter_1
memory_6_2_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov memory_6_2 + 2, al; al = 31h-- > = 1d; put directly into reg_Ax_1
jmp check_memory_6_2_hexa_is_digit_or_letter_2
memory_6_2_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov memory_6_2 + 2, al
jmp check_memory_6_2_hexa_is_digit_or_letter_2
check_memory_6_2_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_memory_6_2_2
jmp memory_6_2_hexa_is_letter_2

check_upper_bound_value_memory_6_2_2 : mov bl, 9d
cmp ah, bl
jbe memory_6_2_hexa_is_digit_2
jmp memory_6_2_hexa_is_letter_2
memory_6_2_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov memory_6_2 + 3, ah; ah = 32h-- > = 2d; put directly into reg_Ax_1
jmp check_done_memory_6_2_hexa_is_digit_or_letter
memory_6_2_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov memory_6_2 + 3, ah
jmp check_done_memory_6_2_hexa_is_digit_or_letter
check_done_memory_6_2_hexa_is_digit_or_letter :
; checkthe entries of real_memory_7_2 are digits or letters
check_memory_7_2_hexa_is_digit_or_letter_1 : mov ch, real_memory_7_2
mov ah, 00h
mov al, ch; value of memory_7_2-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_memory_7_2_1
jmp memory_7_2_hexa_is_letter_1

check_upper_bound_value_memory_7_2_1 : mov bl, 9d
cmp al, bl
jbe memory_7_2_hexa_is_digit_1
jmp memory_7_2_hexa_is_letter_1
memory_7_2_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov memory_7_2 + 2, al; al = 31h-- > = 1d; put directly into reg_Ax_1
jmp check_memory_7_2_hexa_is_digit_or_letter_2
memory_7_2_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov memory_7_2 + 2, al
jmp check_memory_7_2_hexa_is_digit_or_letter_2
check_memory_7_2_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_memory_7_2_2
jmp memory_7_2_hexa_is_letter_2

check_upper_bound_value_memory_7_2_2 : mov bl, 9d
cmp ah, bl
jbe memory_7_2_hexa_is_digit_2
jmp memory_7_2_hexa_is_letter_2
memory_7_2_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov memory_7_2 + 3, ah; ah = 32h-- > = 2d; put directly into reg_Ax_1
jmp check_done_memory_7_2_hexa_is_digit_or_letter
memory_7_2_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov memory_7_2 + 3, ah
jmp check_done_memory_7_2_hexa_is_digit_or_letter
check_done_memory_7_2_hexa_is_digit_or_letter :
; checkthe entries of real_memory_8_2 are digits or letters
check_memory_8_2_hexa_is_digit_or_letter_1 : mov ch, real_memory_8_2
mov ah, 00h
mov al, ch; value of memory_8_2-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_memory_8_2_1
jmp memory_8_2_hexa_is_letter_1

check_upper_bound_value_memory_8_2_1 : mov bl, 9d
cmp al, bl
jbe memory_8_2_hexa_is_digit_1
jmp memory_8_2_hexa_is_letter_1
memory_8_2_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov memory_8_2 + 2, al; al = 31h-- > = 1d; put directly into reg_Ax_1
jmp check_memory_8_2_hexa_is_digit_or_letter_2
memory_8_2_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov memory_8_2 + 2, al
jmp check_memory_8_2_hexa_is_digit_or_letter_2
check_memory_8_2_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_memory_8_2_2
jmp memory_8_2_hexa_is_letter_2

check_upper_bound_value_memory_8_2_2 : mov bl, 9d
cmp ah, bl
jbe memory_8_2_hexa_is_digit_2
jmp memory_8_2_hexa_is_letter_2
memory_8_2_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov memory_8_2 + 3, ah; ah = 32h-- > = 2d; put directly into reg_Ax_1
jmp check_done_memory_8_2_hexa_is_digit_or_letter
memory_8_2_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov memory_8_2 + 3, ah
jmp check_done_memory_8_2_hexa_is_digit_or_letter
check_done_memory_8_2_hexa_is_digit_or_letter :
; checkthe entries of real_memory_9_2 are digits or letters
check_memory_9_2_hexa_is_digit_or_letter_1 : mov ch, real_memory_9_2
mov ah, 00h
mov al, ch; value of memory_9_2-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_memory_9_2_1
jmp memory_9_2_hexa_is_letter_1

check_upper_bound_value_memory_9_2_1 : mov bl, 9d
cmp al, bl
jbe memory_9_2_hexa_is_digit_1
jmp memory_9_2_hexa_is_letter_1
memory_9_2_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov memory_9_2 + 2, al; al = 31h-- > = 1d; put directly into reg_Ax_1
jmp check_memory_9_2_hexa_is_digit_or_letter_2
memory_9_2_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov memory_9_2 + 2, al
jmp check_memory_9_2_hexa_is_digit_or_letter_2
check_memory_9_2_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_memory_9_2_2
jmp memory_9_2_hexa_is_letter_2

check_upper_bound_value_memory_9_2_2 : mov bl, 9d
cmp ah, bl
jbe memory_9_2_hexa_is_digit_2
jmp memory_9_2_hexa_is_letter_2
memory_9_2_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov memory_9_2 + 3, ah; ah = 32h-- > = 2d; put directly into reg_Ax_1
jmp check_done_memory_9_2_hexa_is_digit_or_letter
memory_9_2_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov memory_9_2 + 3, ah
jmp check_done_memory_9_2_hexa_is_digit_or_letter
check_done_memory_9_2_hexa_is_digit_or_letter :
; checkthe entries of real_memory_A_2 are digits or letters
check_memory_A_2_hexa_is_digit_or_letter_1 : mov ch, real_memory_A_2
mov ah, 00h
mov al, ch; value of memory_A_2-- > 12h
mov dl, 10h
div dl; ans is in aland remainder in ah--->al = 1 ah = 2
mov bl, 0d; lower range of numbers
cmp al, bl
jge check_upper_bound_value_memory_A_2_1
jmp memory_A_2_hexa_is_letter_1

check_upper_bound_value_memory_A_2_1 : mov bl, 9d
cmp al, bl
jbe memory_A_2_hexa_is_digit_1
jmp memory_A_2_hexa_is_letter_1
memory_A_2_hexa_is_digit_1 : add al, 30h; to transform it into ascii
mov memory_A_2 + 2, al; al = 31h-- > = 1d; put directly into reg_Ax_1
jmp check_memory_A_2_hexa_is_digit_or_letter_2
memory_A_2_hexa_is_letter_1 : sub al, 9d
add al, 60h
mov memory_A_2 + 2, al
jmp check_memory_A_2_hexa_is_digit_or_letter_2
check_memory_A_2_hexa_is_digit_or_letter_2 :
; compare if is between range of digits or no
mov bl, 0d; lower range of numbers
cmp ah, bl
jge check_upper_bound_value_memory_A_2_2
jmp memory_A_2_hexa_is_letter_2

check_upper_bound_value_memory_A_2_2 : mov bl, 9d
cmp ah, bl
jbe memory_A_2_hexa_is_digit_2
jmp memory_A_2_hexa_is_letter_2
memory_A_2_hexa_is_digit_2 : add ah, 30h; to transform it into ascii
mov memory_A_2 + 3, ah; ah = 32h-- > = 2d; put directly into reg_Ax_1
jmp check_done_memory_A_2_hexa_is_digit_or_letter
memory_A_2_hexa_is_letter_2 : sub ah, 9d
add ah, 60h
mov memory_A_2 + 3, ah
jmp check_done_memory_A_2_hexa_is_digit_or_letter
check_done_memory_A_2_hexa_is_digit_or_letter :

                     ;***** k.y**************************************make macro if u want later k.y
ret
update_players_memory_values endp

;///////////////////////////////////////ky
 print_memory_values proc
;print values of memory of both players 1 and 2
;TO DO K.Y
;memory player 1
       mov ah,2h ;
       mov bx,0h  
       mov dx,0111h
       mov di,dx ;needed in print inc x same y
       int 10h
       mov ah,9 ;print value of reg DI 2
       lea dx,memory_0_1+2 ;//done
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       mov ah,9 ;print value of reg DI 2
       lea dx,memory_1_1+2 ;//done
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       mov ah,9 ;print value of reg DI 2
       lea dx,memory_2_1+2 ;//done
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       mov ah,9 ;print value of reg DI 2
       lea dx,memory_3_1+2 ;//done
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       mov ah,9 ;print value of reg DI 2
       lea dx,memory_4_1+2 ;//done
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       mov ah,9 ;print value of reg DI 2
       lea dx,memory_5_1+2 ;//done
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       mov ah,9 ;print value of reg DI 2
       lea dx,memory_6_1+2 ;//done
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       mov ah,9 ;print value of reg DI 2
       lea dx,memory_7_1+2 ;//done
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       mov ah,9 ;print value of reg DI 2
       lea dx,memory_8_1+2 ;//done
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       mov ah,9 ;print value of reg DI 2
       lea dx,memory_9_1+2 ;//done
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       mov ah,9 ;print value of reg DI 2
       lea dx,memory_A_1+2 ;//done
       int 21h
;memory player 2
mov ah,2h ;
       mov bx,0h  
       mov dx,0125h
       mov di,dx
       int 10h
       mov ah,9 ;print value of reg DI 2
       lea dx,memory_0_2+2 ;//done
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       mov ah,9 ;print value of reg DI 2
       lea dx,memory_1_2+2 ;//done
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       mov ah,9 ;print value of reg DI 2
       lea dx,memory_2_2+2 ;//done
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       mov ah,9 ;print value of reg DI 2
       lea dx,memory_3_2+2 ;//done
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       mov ah,9 ;print value of reg DI 2
       lea dx,memory_4_2+2 ;//done
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       mov ah,9 ;print value of reg DI 2
       lea dx,memory_5_2+2 ;//done
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       mov ah,9 ;print value of reg DI 2
       lea dx,memory_6_2+2 ;//done
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       mov ah,9 ;print value of reg DI 2
       lea dx,memory_7_2+2 ;//done
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       mov ah,9 ;print value of reg DI 2
       lea dx,memory_8_2+2 ;//done
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       mov ah,9 ;print value of reg DI 2
       lea dx,memory_9_2+2 ;//done
       int 21h
       call print_sameX_incY
       call print_sameX_incY
       mov ah,9 ;print value of reg DI 2
       lea dx,memory_A_2+2 ;//done
       int 21h

ret
print_memory_values endp
function_taking_commands proc
 start:
        mov ah,9
        mov dx,offset Mess_command
        int 21h

        ;receive input from user 
        mov ah,0AH 
        mov dx,offset command
        int 21h 
 
     ; to convert command entered by the user into smallcase letters    
    mov cl , [command+1]
    mov si , offset [command+2]
    mov bx , offset [command+2]
    
loop_1: 
        Mov al, [bx]
        mov dl , al
        cmp dl , 32
        je  space  
        sub dl , 65
        cmp dl ,25
        jbe addition
        jge noaddition
        mov [si],al 
        inc si
        dec cl 
        jnz loop_1 
        jz en 
      
      
 addition:
 add al,32
 mov [si] , al
 inc bx 
 inc si    
 dec cl
 jnz loop_1 
 jz en
 
 noaddition:
 inc bx  
 mov [si], al
 inc si        
 dec cl
 jnz loop_1 
 jz en

 space:
 inc bx 
 mov [si] , al
 inc si       
 dec cl
 jnz loop_1 
 en:
 
 mov si,offset [command+2]
 ;check if first letter of command is 'n'
 mov bl,6eh ; ascii of 'n'
 cmp [si],bl
 jz check_NOP
 jnz check_2
 
 
check_NOP:
mov bl,6fh ;ascii of 'o'
inc si
cmp bl,[si]
jnz error_command
mov bl,70h   ;ascii of 'p'
inc si
cmp bl,[si]
jnz error_command

jmp continue

;check if first letter of command is 'c'
Check_2: 
mov bl,63h ;ascii of 'c;
cmp [si],bl
jz check_CLC
jnz check_3

check_CLC:
mov bl,6ch ;ascii of 'l'
inc si
cmp bl,[si]
jnz error_command
mov bl,63h ;ascii of 'c' 
inc si
cmp bl,[si]
jnz error_command

;logic of clc
mov carry_flag_2,0

jmp continue

; check if first letter of command is 's'
check_3:
mov bl,73h ; ascii of 's'
cmp [si],bl
jz check_SUB_SBB_SHL_SHR
jnz check_4

check_SUB_SBB_SHL_SHR:
mov bl,75h   ; ascii of 'u'
inc si 
cmp bl,[si]
jz continuecompare_1
jnz anothercompare_1

continuecompare_1:
mov bl,62h     ;ascii of 'b'
inc si
cmp bl,[si]
jz sub_logic 
jnz error_command

anothercompare_1:
mov bl,62h     ;ascii of 'b'
cmp bl,[si]
jz  continuecompare_2
jnz anothercompare_2

continuecompare_2:
mov bl,62h     ;ascii of 'b'
inc si
cmp bl,[si]
jz continue 
jnz error_command

anothercompare_2:
mov bl,68h  ;ascii of 'h'
cmp bl,[si]
jz continuecompare_3
jnz error_command

continuecompare_3:
mov bl,6ch ;ascii of 'l'
inc si
cmp bl,[si]
jz continue 
jnz anothercompare_3
anothercompare_3:
mov bl,72h
cmp bl,[si]
jz continue 
jnz error_command

; check if the first letter of the command is 'i'
check_4:
mov bl,69h ;ascii of 'i'
cmp bl,[si]
jz check_INC
jnz check_5

check_INC:
mov bl,6eh  ;ascii of 'n'
inc si
cmp bl,[si]
jnz error_command
mov bl,63h ;ascii of 'c'
inc si
cmp bl,[si]
jnz error_command
jz getregistername_INC


check_5:
mov bl,64h ;ascii of 'd'
cmp bl,[si]
jz check_DEC
;jnz check_6

check_DEC:
mov bl,65h ;ascii of 'e'
inc si
cmp bl,[si]
jnz error_command
mov bl,63h  ;ascii of 'c'
inc si
cmp bl,[si]
jnz error_command
jz getregistername_dec 
           
                     

;check_6:


 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Command_INC;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
getRegisterName_INC:          
 mov ah,9
 mov dx,offset newline
 int 21h
 
 
 mov ah,9
 mov dx,offset Mess_operand
 int 21h 
 
 
 ;receive input from user 
        mov ah,0AH 
        mov dx,offset operand_1
        int 21h
 
Logic_INC:

;check if register is ax or al or ah         
mov cl,2h
mov si,offset [operand_1+2]
mov bl,61h  ;ascii of a 
cmp bl,[si]
jz AX_check
jnz another_register_name_check_1


Ax_check:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz inc_Ax
jnz another_compare_of_ax_1

inc_Ax:
mov ax,real_reg_Ax_2
inc ax
mov real_reg_Ax_2,ax 
jmp continue 

another_compare_of_ax_1:
mov bl,68h ;ascii of h
cmp bl,[si]
jz inc_Ah
jnz another_compare_of_ax_2

inc_Ah:
mov ax,real_reg_Ax_2+1
inc ax
mov real_reg_Ax_2+1,ax 
 
jmp continue

another_compare_of_ax_2:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz inc_Al
jnz error_Register_name_INC

inc_Al:
mov al,byte ptr real_reg_Ax_2
inc al
mov byte ptr real_reg_Ax_2,al 
jmp continue


another_register_name_check_1:
;check if register is bx or bl or bh         
mov cl,2h
mov si,offset [operand_1+2]
mov bl,62h  ;ascii of b 
cmp bl,[si]
jz bX_check
jnz another_register_name_check_2


bx_check:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz inc_bx
jnz another_compare_of_bx_1

inc_bx:
mov ax,real_reg_bx_2
inc ax
mov real_reg_bx_2,ax 
jmp continue 

another_compare_of_bx_1:
mov bl,68h ;ascii of h
cmp bl,[si]
jz inc_bh
jnz another_compare_of_bx_2

inc_bh:
mov ax,real_reg_bx_2+1
inc ax
mov real_reg_bx_2+1,ax 
 
jmp continue

another_compare_of_bx_2:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz inc_bl
jnz compare_BP

inc_bl:
mov al,byte ptr real_reg_bx_2
inc al
mov byte ptr real_reg_bx_2,al

; to check if register is BP or not
compare_BP:
mov bl,70h ;ascii of p
cmp bl,[si]
jz INC_BP
jnz error_register_name_INC

Inc_BP:
mov ax,real_reg_bp_2
inc ax
mov real_reg_bp_2,ax
jmp continue  
 
another_register_name_check_2: 
;check if register is cx or cl or ch         
mov cl,2h
mov si,offset [operand_1+2]
mov bl,63h  ;ascii of c 
cmp bl,[si]
jz cX_check
jnz another_register_name_check_3


cx_check:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz inc_cx
jnz another_compare_of_cx_1

inc_cx:
mov ax,real_reg_cx_2
inc ax
mov real_reg_cx_2,ax 
jmp continue 

another_compare_of_cx_1:
mov bl,68h ;ascii of h
cmp bl,[si]
jz inc_ch
jnz another_compare_of_cx_2

inc_ch:
mov ax,real_reg_cx_2+1
inc ax
mov real_reg_cx_2+1,ax
 
jmp continue

another_compare_of_cx_2:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz inc_cl
jnz error_Register_name_INC

inc_cl:
mov al,byte ptr real_reg_cx_2
inc al
mov byte ptr real_reg_cx_2,al

jmp continue


another_register_name_check_3:
;check if register is dx or dl or dh         
mov cl,2h
mov si,offset [operand_1+2]
mov bl,64h  ;ascii of d 
cmp bl,[si]
jz dX_check
jnz another_register_name_check_4


dx_check:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz inc_dx
jnz another_compare_of_dx_1

inc_dx:
mov ax, real_reg_dx_2
inc ax
mov  real_reg_dx_2,ax 
jmp continue 

another_compare_of_dx_1:
mov bl,68h ;ascii of h
cmp bl,[si]
jz inc_dh
jnz another_compare_of_dx_2

inc_dh:
mov ax,real_reg_dx_2+1
inc ax
mov real_reg_dx_2+1,ax
 
jmp continue

another_compare_of_dx_2:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz inc_dl
jnz Compare_DI

inc_dl:
mov al,byte ptr real_reg_dx_2
inc al
mov byte ptr real_reg_dx_2,al
jmp continue

; to check if register is DI or not
compare_DI:
mov bl,69h ;ascii of p
cmp bl,[si]
jz INC_DI
jnz error_register_name_INC

Inc_DI:
mov ax ,real_reg_di_2
inc ax
mov real_reg_di_2,ax
jmp continue 

another_register_name_check_4:
mov bl,73h ; ascii of s
cmp bl,[si]
jz check_si
jnz error_register_name_INC

check_si:
mov bl,69h ;ascii of i
inc si
cmp bl,[si]
jz inc_si
jnz check_sp

inc_si:
mov ax ,real_reg_si_2
inc ax
mov real_reg_si_2,ax
jmp continue

check_sp:
mov bl,70h ;ascii of p
cmp bl,[si]
jz inc_sp
jnz error_register_name_INC

inc_sp:
mov ax ,real_reg_sp_2
inc ax
mov real_reg_sp_2,ax
jmp continue

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Command_INC;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                                                                                                                     
                                                                                                                     
                                                                                                                     
                                                                                                                     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;command_Dec;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
getRegisterName_dec:          
 mov ah,9
 mov dx,offset newline
 int 21h
 
 
 mov ah,9
 mov dx,offset Mess_operand
 int 21h 
 
 
 ;receive input from user 
        mov ah,0AH 
        mov dx,offset operand_1
        int 21h
 
Logic_dec:

;check if register is ax or al or ah         
mov cl,2h
mov si,offset [operand_1+2]
mov bl,61h  ;ascii of a 
cmp bl,[si]
jz AX_check_2
jnz another_register_name_check_1_2


Ax_check_2:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz dec_Ax
jnz another_compare_of_ax_1_2

dec_Ax:
mov ax,real_reg_Ax_2
dec ax
mov real_reg_Ax_2,ax 
jmp continue 

another_compare_of_ax_1_2:
mov bl,68h ;ascii of h
cmp bl,[si]
jz dec_Ah
jnz another_compare_of_ax_2_2

dec_Ah:
mov ax,real_reg_Ax_2+1
dec ax
mov real_reg_Ax_2+1,ax 
 
jmp continue

another_compare_of_ax_2_2:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz dec_Al
jnz error_Register_name_dec

dec_Al:
mov al,byte ptr real_reg_Ax_2
dec al
mov byte ptr real_reg_Ax_2,al 
jmp continue


another_register_name_check_1_2:
;check if register is bx or bl or bh         
mov cl,2h
mov si,offset [operand_1+2]
mov bl,62h  ;ascii of b 
cmp bl,[si]
jz bX_check_2
jnz another_register_name_check_2_2


bx_check_2:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz dec_bx
jnz another_compare_of_bx_1_2

dec_bx:
mov ax,real_reg_bx_2
dec ax
mov real_reg_bx_2,ax 
jmp continue 

another_compare_of_bx_1_2:
mov bl,68h ;ascii of h
cmp bl,[si]
jz dec_bh
jnz another_compare_of_bx_2_2

dec_bh:
mov ax,real_reg_bx_2+1
dec ax
mov real_reg_bx_2+1,ax 
 
jmp continue

another_compare_of_bx_2_2:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz dec_bl
jnz compare_BP_2

dec_bl:
mov al,byte ptr real_reg_bx_2
dec al
mov byte ptr real_reg_bx_2,al

; to check if register is BP or not
compare_BP_2:
mov bl,70h ;ascii of p
cmp bl,[si]
jz dec_BP
jnz error_register_name_dec

dec_BP:
mov ax,real_reg_bp_2
dec ax
mov real_reg_bp_2,ax
jmp continue  
 
another_register_name_check_2_2: 
;check if register is cx or cl or ch         
mov cl,2h
mov si,offset [operand_1+2]
mov bl,63h  ;ascii of c 
cmp bl,[si]
jz cX_check_2
jnz another_register_name_check_3_2


cx_check_2:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz dec_cx
jnz another_compare_of_cx_1_2

dec_cx:
mov ax,real_reg_cx_2
dec ax
mov real_reg_cx_2,ax 
jmp continue 

another_compare_of_cx_1_2:
mov bl,68h ;ascii of h
cmp bl,[si]
jz dec_ch
jnz another_compare_of_cx_2_2

dec_ch:
mov ax,real_reg_cx_2+1
dec ax
mov real_reg_cx_2+1,ax
 
jmp continue

another_compare_of_cx_2_2:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz dec_cl
jnz error_Register_name_dec

dec_cl:
mov al,byte ptr real_reg_cx_2
dec al
mov byte ptr real_reg_cx_2,al

jmp continue


another_register_name_check_3_2:
;check if register is dx or dl or dh         
mov cl,2h
mov si,offset [operand_1+2]
mov bl,64h  ;ascii of d 
cmp bl,[si]
jz dX_check_2
jnz another_register_name_check_4_2


dx_check_2:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz dec_dx
jnz another_compare_of_dx_1_2

dec_dx:
mov ax, real_reg_dx_2
dec ax
mov  real_reg_dx_2,ax 
jmp continue 

another_compare_of_dx_1_2:
mov bl,68h ;ascii of h
cmp bl,[si]
jz dec_dh
jnz another_compare_of_dx_2_2

dec_dh:
mov ax,real_reg_dx_2+1
dec ax
mov real_reg_dx_2+1,ax
 
jmp continue

another_compare_of_dx_2_2:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz dec_dl
jnz Compare_DI_2

dec_dl:
mov al,byte ptr real_reg_dx_2
dec al
mov byte ptr real_reg_dx_2,al
jmp continue

; to check if register is DI or not
compare_DI_2:
mov bl,69h ;ascii of p
cmp bl,[si]
jz dec_DI
jnz error_register_name_dec

dec_DI:
mov ax ,real_reg_di_2
dec ax
mov real_reg_di_2,ax
jmp continue 

another_register_name_check_4_2:
mov bl,73h ; ascii of s
cmp bl,[si]
jz check_si_2
jnz error_register_name_dec

check_si_2:
mov bl,69h ;ascii of  i
cmp bl,[si]
jz dec_si
jnz check_sp_2

dec_si:
mov ax ,real_reg_si_2
dec ax
mov real_reg_si_2,ax
jmp continue

check_sp_2:
mov bl,70h ;ascii of p
cmp bl,[si]
jz dec_sp
jnz error_register_name_dec

dec_sp:
mov ax ,real_reg_sp_2
dec ax
mov real_reg_sp_2,ax
jmp continue




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;command_Dec;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;command_SUB;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
sub_logic:
getregistername_sub_op1:

 mov ah,9
 mov dx,offset newline
 int 21h


mov ah,9
 mov dx,offset Mess_operand_1
 int 21h 
 
 
 ;receive input from user 
        mov ah,0AH 
        mov dx,offset operand_1
        int 21h
        
        
;check if register is ax or al or ah         
mov cl,2h
mov si,offset [operand_1+2]
mov bl,61h  ;ascii of a 
cmp bl,[si]
jz AX_check_3
jnz another_register_name_check_1_3


Ax_check_3:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz ax_sub_?
jnz another_compare_of_ax_1_3
 

another_compare_of_ax_1_3:
mov bl,68h ;ascii of h
cmp bl,[si]
jz ah_sub_?
jnz another_compare_of_ax_2_3


another_compare_of_ax_2_3:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz al_sub_?
jnz error_Register_name_sub_op1


another_register_name_check_1_3:
;check if register is bx or bl or bh         
mov cl,2h
mov si,offset [operand_1+2]
mov bl,62h  ;ascii of b 
cmp bl,[si]
jz bX_check_3
;jnz another_register_name_check_2_3


bx_check_3:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz bx_sub_?
jnz another_compare_of_bx_1_3
 

another_compare_of_bx_1_3:
mov bl,68h ;ascii of h
cmp bl,[si]
jz bh_sub_?
;jnz another_compare_of_bx_2_3



;another_compare_of_bx_2_3:
;mov bl,6ch ; ascii of l
;cmp bl ,[si]
;jz dec_bl
;jnz compare_BP_3

;dec_bl:
;mov al,byte ptr real_reg_bx_2
;dec al
;mov byte ptr real_reg_bx_2,al

; to check if register is BP or not
;compare_BP_3:
;mov bl,70h ;ascii of p
;cmp bl,[si]
;jz dec_BP
;jnz error_register_name_sub_op1

;dec_BP:
;mov ax,real_reg_bp_2
;dec ax
;mov real_reg_bp_2,ax
;jmp continue  
 
;another_register_name_check_2_3: 
;check if register is cx or cl or ch         
;mov cl,2h
;mov si,offset [operand_1+2]
;mov bl,63h  ;ascii of c 
;cmp bl,[si]
;jz cX_check_3
;jnz another_register_name_check_3_3


;cx_check_3:
;mov bl,78h  ;ascii of x
;inc si
;cmp bl,[si]
;jz dec_cx
;jnz another_compare_of_cx_1_3

;dec_cx:
;mov ax,real_reg_cx_2
;dec ax
;mov real_reg_cx_2,ax 
;jmp continue 

;another_compare_of_cx_1_3:
;mov bl,68h ;ascii of h
;cmp bl,[si]
;jz dec_ch
;jnz another_compare_of_cx_2_3

;dec_ch:
;mov ax,real_reg_cx_2+1
;dec ax
;mov real_reg_cx_2+1,ax
 
;jmp continue

;another_compare_of_cx_2_3:
;mov bl,6ch ; ascii of l
;cmp bl ,[si]
;jz dec_cl
;jnz error_Register_name_sub_op1

;dec_cl:
;mov al,byte ptr real_reg_cx_2
;dec al
;mov byte ptr real_reg_cx_2,al

;jmp continue


;another_register_name_check_3_3:
;check if register is dx or dl or dh         
;mov cl,2h
;mov si,offset [operand_1+2]
;mov bl,64h  ;ascii of d 
;cmp bl,[si]
;jz dX_check_3
;jnz another_register_name_check_4_3


;dx_check_3:
;mov bl,78h  ;ascii of x
;inc si
;cmp bl,[si]
;jz dec_dx
;jnz another_compare_of_dx_1_3

;dec_dx:
;mov ax, real_reg_dx_2
;dec ax
;mov  real_reg_dx_2,ax 
;jmp continue 

;another_compare_of_dx_1_3:
;mov bl,68h ;ascii of h
;cmp bl,[si]
;jz dec_dh
;jnz another_compare_of_dx_2_3

;dec_dh:
;mov ax,real_reg_dx_2+1
;dec ax
;mov real_reg_dx_2+1,ax
 
;jmp continue

;another_compare_of_dx_2_3:
;mov bl,6ch ; ascii of l
;cmp bl ,[si]
;jz dec_dl
;jnz Compare_DI_2

;dec_dl:
;mov al,byte ptr real_reg_dx_2
;dec al
;mov byte ptr real_reg_dx_2,al
;jmp continue

; to check if register is DI or not
;compare_DI_2:
;mov bl,69h ;ascii of p
;cmp bl,[si]
;jz dec_DI
;jnz error_register_name_sub_op1

;dec_DI:
;mov ax ,real_reg_di_2
;dec ax
;mov real_reg_di_2,ax
;jmp continue 

;another_register_name_check_4_3:
;mov bl,73h ; ascii of s
;cmp bl,[si]
;jz check_si_3
;jnz error_register_name_sub_op1

;check_si_3:
;mov bl,69h ;ascii of  i
;cmp bl,[si]
;jz dec_si
;jnz check_sp_3

;dec_si:
;mov ax ,real_reg_si_2
;dec ax
;mov real_reg_si_2,ax
;jmp continue

;check_sp_3:
;mov bl,70h ;ascii of p
;cmp bl,[si]
;jz dec_sp
;jnz error_register_name_sub_op1

;dec_sp:
;mov ax ,real_reg_sp_2
;dec ax
;mov real_reg_sp_2,ax
;jmp continue
        
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
            
ax_sub_?:

mov ah,9
 mov dx,offset newline
 int 21h
 
 
 mov ah,9
 mov dx,offset value_OR_register
 int 21h
 
 ;receive input from user 
        mov ah,0AH 
        mov dx,offset vORr
        int 21h 
        mov ah,vORr+2
        mov al,72h  ;ascii of r
        mov bl,76h  ;ascii of v
        cmp ah,al
        jz getRegisterName_sub_op2
        cmp ah,bl 
        jz getValue_ax_sub_op2
        


getValue_ax_sub_op2:
mov ah,9
 mov dx,offset newline
 int 21h 
 
mov ah,9
mov dx,offset Mess_value
int 21h

mov ah,0AH 
mov dx,offset value
int 21h 

mov al, value + 2
mov bh, 30h
cmp al, bh
jnz  check_if_1_A
jz   isdigit_A

check_if_1_A :
mov bh, 31h
cmp al, bh
jnz  check_if_2_A
jz   isdigit_A

check_if_2_A :
mov bh, 32h
cmp al, bh
jnz  check_if_3_A
jz   isdigit_A

check_if_3_A :
mov bh, 33h
cmp al, bh
jnz  check_if_4_A
jz   isdigit_A

check_if_4_A :
mov bh, 34h
cmp al, bh
jnz  check_if_5_A
jz   isdigit_A


check_if_5_A :
mov bh, 35h
cmp al, bh
jnz  check_if_6_A
jz   isdigit_A


check_if_6_A :
mov bh, 36h
cmp al, bh
jnz  check_if_7_A
jz   isdigit_A


check_if_7_A :
mov bh, 37h
cmp al, bh
jnz  check_if_8_A
jz   isdigit_A


check_if_8_A :
mov bh, 38h
cmp al, bh
jnz  check_if_9_A
jz   isdigit_A


check_if_9_A :
mov bh, 39h
cmp al, bh
jnz  isletter_A
jz   isdigit_A




isdigit_A:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  check_2nd_char_A

isletter_A :
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  check_2nd_char_A


check_2nd_char_A :
mov al, value + 3
mov bh, 30h
cmp al, bh
jnz  check_if_1_A_1
jz   isdigit_A_1


check_if_1_A_1 :
mov bh, 31h
cmp al, bh
jnz  check_if_2_A_1
jz   isdigit_A_1


check_if_2_A_1 :
mov bh, 32h
cmp al, bh
jnz  check_if_3_A_1
jz   isdigit_A_1


check_if_3_A_1 :
mov bh, 33h
cmp al, bh
jnz  check_if_4_A_1
jz   isdigit_A_1


check_if_4_A_1 :
mov bh, 34h
cmp al, bh
jnz  check_if_5_A_1
jz   isdigit_A_1


check_if_5_A_1 :
mov bh, 35h
cmp al, bh
jnz  check_if_6_A_1
jz   isdigit_A_1


check_if_6_A_1 :
mov bh, 36h
cmp al, bh
jnz  check_if_7_A_1
jz   isdigit_A_1


check_if_7_A_1 :
mov bh, 37h
cmp al, bh
jnz  check_if_8_A_1
jz   isdigit_A_1


check_if_8_A_1 :
mov bh, 38h
cmp al, bh
jnz  check_if_9_A_1
jz   isdigit_A_1


check_if_9_A_1 :
mov bh, 39h
cmp al, bh
jnz  isletter_A_1
jz   isdigit_A_1



isdigit_A_1:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  check_3rd_char_A


isletter_A_1 :
sub al, 60h
add al, 9h
add ch, al

jmp  check_3rd_char_A
check_3rd_char_A :
mov al, value + 4
mov bh, 30h
cmp al, bh
jnz  check_if_1_A_2
jz   isdigit_A_2

check_if_1_A_2 :
mov bh, 31h
cmp al, bh
jnz  check_if_2_A_2
jz   isdigit_A_2

check_if_2_A_2 :
mov bh, 32h
cmp al, bh
jnz  check_if_3_A_2
jz   isdigit_A_2

check_if_3_A_2 :
mov bh, 33h
cmp al, bh
jnz  check_if_4_A_2
jz   isdigit_A_2

check_if_4_A_2 :
mov bh, 34h
cmp al, bh
jnz  check_if_5_A_2
jz   isdigit_A_2


check_if_5_A_2 :
mov bh, 35h
cmp al, bh
jnz  check_if_6_A_2
jz   isdigit_A_2

check_if_6_A_2 :
mov bh, 36h
cmp al, bh
jnz  check_if_7_A_2
jz   isdigit_A_2


check_if_7_A_2 :
mov bh, 37h
cmp al, bh
jnz  check_if_8_A_2
jz   isdigit_A_2


check_if_8_A_2 :
mov bh, 38h
cmp al, bh
jnz  check_if_9_A_2
jz   isdigit_A_2


check_if_9_A_2 :
mov bh, 39h
cmp al, bh
jnz  isletter_A_2
jz   isdigit_A_2



isdigit_A_2:; reg_Ax_1 + 4 is tens
sub al, 30h
mov bl, 10h
mul bl
mov cl, al


jmp  check_4th_char_A


isletter_A_2 :
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov cl, al


check_4th_char_A :

mov al, value + 5
mov bh, 30h
cmp al, bh
jnz  check_if_1_A_3
jz   isdigit_A_3


check_if_1_A_3 :
mov bh, 31h
cmp al, bh
jnz  check_if_2_A_3
jz   isdigit_A_3


check_if_2_A_3 :
mov bh, 32h
cmp al, bh
jnz  check_if_3_A_3
jz   isdigit_A_3


check_if_3_A_3 :
mov bh, 33h
cmp al, bh
jnz  check_if_4_A_3
jz   isdigit_A_3


check_if_4_A_3 :
mov bh, 34h
cmp al, bh
jnz  check_if_5_A_3
jz   isdigit_A_3


check_if_5_A_3 :
mov bh, 35h
cmp al, bh
jnz  check_if_6_A_3
jz   isdigit_A_3


check_if_6_A_3 :
mov bh, 36h
cmp al, bh
jnz  check_if_7_A_3
jz   isdigit_A_3

check_if_7_A_3 :
mov bh, 37h
cmp al, bh
jnz  check_if_8_A_3
jz   isdigit_A_3


check_if_8_A_3 :
mov bh, 38h
cmp al, bh
jnz  check_if_9_A_3
jz   isdigit_A_3

check_if_9_A_3 :
mov bh, 39h
cmp al, bh
jnz  isletter_A_3
jz   isdigit_A_3



isdigit_A_3:; reg_Ax_1 + 5 is unit
sub al, 30h
add cl, al


jmp  finish_check_digits_and_letters_of_input_A

isletter_A_3 :
sub al, 60h
add al, 9h
add cl, al


finish_check_digits_and_letters_of_input_A :

mov ax, cx
 
       
  mov bx,real_reg_Ax_2
  sub bx,ax
  mov real_reg_Ax_2,bx     
  jmp continue 
 

getRegisterName_sub_op2:

 mov ah,9
 mov dx,offset newline
 int 21h



 mov ah,9
        mov dx,offset Mess_operand_2
        int 21h

        ;receive input from user 
        mov ah,0AH 
        mov dx,offset operand_2
        int 21h 



;check if register is ax or al or ah         
mov si,offset [operand_2+2]
mov bl,61h  ;ascii of a 
cmp bl,[si]
jz AX_check_4
jnz another_register_name_check_1_4


Ax_check_4:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz ax_sub_ax
jnz error_Register_name_sub_op2

ax_sub_ax:
mov ax, real_reg_Ax_2
mov bx,real_reg_Ax_2
sub ax,bx
mov real_reg_Ax_2,ax 
jmp continue 




another_register_name_check_1_4:
;check if register is bx          
mov si,offset [operand_2+2]
mov bl,62h  ;ascii of b 
cmp bl,[si]
jz bx_check_4
jnz another_register_name_check_2_4

bx_check_4:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz ax_sub_bx
jnz another_compare_of_bx_1_4


ax_sub_bx:
mov ax,real_reg_ax_2
mov bx,real_reg_bx_2
sub ax,bx 
mov real_reg_ax_2,ax
jmp continue

another_compare_of_bx_1_4:
mov bl,68h ;ascii of h
cmp bl,[si]
jz sizemismatch
jnz another_compare_of_bx_2_4

another_compare_of_bx_2_4:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz sizemismatch
jnz compare_BP_4

 


; to check if register is BP or not
compare_BP_4:
mov bl,70h ;ascii of p
cmp bl,[si]
jz ax_sub_BP
jnz error_register_name_sub_op2

ax_sub_BP:
mov ax,real_reg_ax_2
mov bx,real_reg_BP_2
sub ax,bx 
mov real_reg_ax_2,ax
jmp continue  
 
another_register_name_check_2_4: 
;check if register is cx         
mov si,offset [operand_2+2]
mov bl,63h  ;ascii of c 
cmp bl,[si]
jz cX_check_4
jnz another_register_name_check_3_4


cx_check_4:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz ax_sub_cx
jnz error_register_name_sub_op2

ax_sub_cx:
mov ax,real_reg_ax_2
mov bx,real_reg_cx_2
sub ax,bx 
mov real_reg_ax_2,ax
jmp continue 

another_compare_of_cx_1_4:
mov bl,68h ;ascii of h
cmp bl,[si]
jz sizemismatch
jnz another_compare_of_cx_2_4
 
jmp continue

another_compare_of_cx_2_4:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz sizemismatch
jnz error_Register_name_sub_op2


another_register_name_check_3_4:
;check if register is dx or dl or dh         
mov si,offset [operand_2+2]
mov bl,64h  ;ascii of d 
cmp bl,[si]
jz dX_check_4
jnz another_register_name_check_4_4


dx_check_4:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz ax_sub_dx
jnz another_compare_of_dx_1_4

ax_sub_dx:
mov ax,real_reg_ax_2
mov bx,real_reg_dx_2
sub ax,bx 
mov real_reg_ax_2,ax
jmp continue 

another_compare_of_dx_1_4:
mov bl,68h ;ascii of h
cmp bl,[si]
jz sizemismatch
jnz another_compare_of_dx_2_4

another_compare_of_dx_2_4:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz sizemismatch
jnz Compare_DI_4

; to check if register is DI or not
compare_DI_4:
mov bl,69h ;ascii of i
cmp bl,[si]
jz ax_sub_DI
jnz error_register_name_sub_op2

ax_sub_DI:
mov ax,real_reg_ax_2
mov bx,real_reg_di_2
sub ax,bx 
mov real_reg_ax_2,ax
jmp continue  

another_register_name_check_4_4:
mov bl,73h ; ascii of s
cmp bl,[si]
jz check_si_4
jnz error_register_name_sub_op2

check_si_4:
mov bl,69h ;ascii of  i
cmp bl,[si]
jz ax_sub_si
jnz check_sp_4

ax_sub_si:
mov ax,real_reg_ax_2
mov bx,real_reg_si_2
sub ax,bx 
mov real_reg_ax_2,ax
jmp continue 

check_sp_4:
mov bl,70h ;ascii of p
cmp bl,[si]
jz ax_sub_sp
jnz error_register_name_sub_op2

ax_sub_sp:
mov ax,real_reg_ax_2
mov bx,real_reg_sp_2
sub ax,bx 
mov real_reg_ax_2,ax
jmp continue

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;ah_sub_?;;;;;;;;;;;;;;;;;;;;
ah_sub_?: 

mov ah,9
 mov dx,offset newline
 int 21h
 
 
 mov ah,9
 mov dx,offset value_OR_register
 int 21h
 
 ;receive input from user 
        mov ah,0AH 
        mov dx,offset vORr
        int 21h                                                                      
        
        mov ah,vORr+2
        mov al,72h  ;ascii of r
        mov bl,76h  ;ascii of v
        cmp ah,al
        jz getRegisterName_ah_sub_op2
        cmp ah,bl 
        jz getValue_ah_sub_op2
        
         
        
        
getValue_ah_sub_op2:
mov ah,9
 mov dx,offset newline
 int 21h 
 
mov ah,9
mov dx,offset Mess_value
int 21h

mov ah,0AH 
mov dx,offset value2        
int 21h 

    ;check_digits_or_letters value
     
    mov al,value2+2
          mov bh,30h
       cmp al,bh
       jnz  check_if_1A
       jz   isdigitA
       
       check_if_1A:
       mov bh,31h
       cmp al,bh
       jnz  check_if_2A
       jz   isdigitA
       
        check_if_2A:
       mov bh,32h
       cmp al,bh
       jnz  check_if_3A
       jz   isdigitA 
       
        check_if_3A:
       mov bh,33h
       cmp al,bh
       jnz  check_if_4A
       jz   isdigitA
       
         check_if_4A:
       mov bh,34h
       cmp al,bh
       jnz  check_if_5A
       jz   isdigitA 
        
       
        check_if_5A:
       mov bh,35h
       cmp al,bh
       jnz  check_if_6A
       jz   isdigitA
       
	   
        check_if_6A:
       mov bh,36h
       cmp al,bh
       jnz  check_if_7A
       jz   isdigitA 
        
	
       check_if_7A:
       mov bh,37h
       cmp al,bh
       jnz  check_if_8A
       jz   isdigitA 
        
	
      check_if_8A:
       mov bh,38h
       cmp al,bh
       jnz  check_if_9A
       jz   isdigitA
       
	   
        check_if_9A:
       mov bh,39h
       cmp al,bh
       jnz  isletterA
       jz   isdigitA
       

       
       
        isdigitA:
       sub al,30h
       mov bl,10h
       mul bl
       mov ch,al
       
       jmp  check_2nd_charA
       
        isletterA:
       sub al,60h
       add al,9h
       mov bl,10h
       mul bl
       mov ch,al
       
       jmp  check_2nd_charA 
       
       
        check_2nd_charA:
       mov al,value2+3
       mov bh,30h
       cmp al,bh
       jnz  check_if_1A1_
       jz   isdigitA1_
       
	   
        check_if_1A1_:
       mov bh,31h
       cmp al,bh
       jnz  check_if_2A1_
       jz   isdigitA1_
       
	   
        check_if_2A1_:
       mov bh,32h
       cmp al,bh
       jnz  check_if_3A1_
       jz   isdigitA1_ 
       
	   
        check_if_3A1_:
       mov bh,33h
       cmp al,bh
       jnz  check_if_4A1_
       jz   isdigitA1_
        
	
        check_if_4A1_:
       mov bh,34h
       cmp al,bh
       jnz  check_if_5A1_
       jz   isdigitA1_ 
        
        
       check_if_5A1_:
       mov bh,35h
       cmp al,bh
       jnz  check_if_6A1_
       jz   isdigitA1_
       
	   
       check_if_6A1_:
       mov bh,36h
       cmp al,bh
       jnz  check_if_7A1_
       jz   isdigitA1_ 
        
		
       check_if_7A1_:
       mov bh,37h
       cmp al,bh
       jnz  check_if_8A1_
       jz   isdigitA1_ 
        
		
       check_if_8A1_:
       mov bh,38h
       cmp al,bh
       jnz  check_if_9A1_
       jz   isdigitA1_
       
	   
       check_if_9A1_:
       mov bh,39h
       cmp al,bh
       jnz  isletterA1_
       jz   isdigitA1_
       
       
       
        isdigitA1_: ;reg_Ax_1+3 is unit 
       sub al,30h
       add ch,al
       
       
       jmp  finish_check_digits_and_letters_of_inputA
       
	   
       isletterA1_:
       sub al,60h
       add al,9h
       add ch,al
       
       jmp  finish_check_digits_and_letters_of_inputA
        
       
       finish_check_digits_and_letters_of_inputA:
       
       mov ax,cx
     
       mov bh,ah
       mov bl,byte ptr real_reg_Ax_2+1
       sub bl,bh
       mov byte ptr real_reg_Ax_2+1,bl 
       
       jmp continue   
      




getRegisterName_ah_sub_op2:

 mov ah,9
 mov dx,offset newline
 int 21h



 mov ah,9
        mov dx,offset Mess_operand_2
        int 21h

        ;receive input from user 
        mov ah,0AH 
        mov dx,offset operand_2
        int 21h 



;check if register is ax or al or ah         
mov si,offset [operand_2+2]
mov bl,61h  ;ascii of a 
cmp bl,[si]
jz AX_check_5
jnz another_register_name_check_1_5


Ax_check_5:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz sizemismatch2
jnz another_compare_ax_1_5

another_compare_ax_1_5:
mov bl,68h ;ascii of h
cmp bl,[si]
jz ah_sub_ah
jnz another_compare_of_ax_2_5


ah_sub_ah:
mov ah,byte ptr real_reg_Ax_2+1
mov bh,byte ptr real_reg_Ax_2+1
sub ah,bh
mov byte ptr real_reg_Ax_2+1,ah 
jmp continue

another_compare_of_ax_2_5:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz ah_sub_al
jnz error_Register_name_ah_sub 

ah_sub_al:
mov ah, byte ptr real_reg_Ax_2+1
mov bh,byte ptr real_reg_Ax_2
sub ah,bh
mov byte ptr real_reg_Ax_2+1,ah 
jmp continue


another_register_name_check_1_5:
;check if register is bx          
mov si,offset [operand_2+2]
mov bl,62h  ;ascii of b 
cmp bl,[si]
jz bx_check_5
jnz another_register_name_check_2_5

bx_check_5:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz sizemismatch2
jnz another_compare_of_bx_1_5


another_compare_of_bx_1_5:
mov bl,68h ;ascii of h
cmp bl,[si]
jz ah_sub_bh
jnz another_compare_of_bx_2_5

ah_sub_bh:
mov ah,byte ptr real_reg_Ax_2+1
mov bh,byte ptr real_reg_bx_2+1
sub ah,bh
mov byte ptr real_reg_Ax_2+1,ah 
jmp continue


another_compare_of_bx_2_5:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz ah_sub_bl
jnz compare_BP_5 


ah_sub_bl:
mov ah,byte ptr real_reg_Ax_2+1
mov bh,byte ptr real_reg_bx_2
sub ah,bh
mov byte ptr real_reg_Ax_2+1,ah 
jmp continue

; to check if register is BP or not
compare_BP_5:
mov bl,70h ;ascii of p
cmp bl,[si]
jz sizemismatch2
jnz error_register_name_ah_sub
  
 
another_register_name_check_2_5: 
;check if register is cx         
mov si,offset [operand_2+2]
mov bl,63h  ;ascii of c 
cmp bl,[si]
jz cX_check_5
jnz another_register_name_check_3_5


cx_check_5:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz sizemismatch2
jnz another_compare_of_cx_1_5
 

another_compare_of_cx_1_5:
mov bl,68h ;ascii of h
cmp bl,[si]
jz ah_sub_ch
jnz another_compare_of_cx_2_5

ah_sub_ch:
mov ah,byte ptr real_reg_Ax_2+1
mov bh,byte ptr real_reg_cx_2+1
sub ah,bh
mov byte ptr real_reg_Ax_2+1,ah 
jmp continue
 

another_compare_of_cx_2_5:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz ah_sub_cl
jnz error_Register_name_ah_sub

ah_sub_cl:
mov ah,byte ptr real_reg_Ax_2+1
mov bh,byte ptr real_reg_cx_2
sub ah,bh
mov byte ptr real_reg_Ax_2+1,ah 
jmp continue


another_register_name_check_3_5:
;check if register is dx or dl or dh         
mov si,offset [operand_2+2]
mov bl,64h  ;ascii of d 
cmp bl,[si]
jz dX_check_5
jnz another_register_name_check_4_5


dx_check_5:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz sizemismatch2
jnz another_compare_of_dx_1_5
 

another_compare_of_dx_1_5:
mov bl,68h ;ascii of h
cmp bl,[si]
jz ah_sub_dh
jnz another_compare_of_dx_2_5

ah_sub_dh:
mov ah,byte ptr real_reg_Ax_2+1
mov bh,byte ptr real_reg_dx_2+1
sub ah,bh
mov byte ptr real_reg_Ax_2+1,ah 
jmp continue

another_compare_of_dx_2_5:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz ah_sub_dl
jnz Compare_DI_5

ah_sub_dl:
mov ah,byte ptr real_reg_Ax_2+1
mov bh,byte ptr real_reg_dx_2
sub ah,bh
mov byte ptr real_reg_Ax_2+1,ah 
jmp continue

; to check if register is DI or not
compare_DI_5:
mov bl,69h ;ascii of i
cmp bl,[si]
jz sizemismatch2
jnz error_register_name_ah_sub
  

another_register_name_check_4_5:
mov bl,73h ; ascii of s
cmp bl,[si]
jz check_si_5
jnz error_register_name_ah_sub

check_si_5:
mov bl,69h ;ascii of  i
inc si
cmp bl,[si]
jz sizemismatch2
jnz check_sp_5 

check_sp_5:
mov bl,70h ;ascii of p
cmp bl,[si]
jz sizemismatch2
jnz error_register_name_ah_sub 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;ah_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;endofcode


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;al_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;startofcode
al_sub_?:
mov ah,9
 mov dx,offset newline
 int 21h
 
 
 mov ah,9
 mov dx,offset value_OR_register
 int 21h
 
 ;receive input from user 
        mov ah,0AH 
        mov dx,offset vORr
        int 21h                                                                      
        
        mov ah,vORr+2
        mov al,72h  ;ascii of r
        mov bl,76h  ;ascii of v
        cmp ah,al
        jz getRegisterName_al_sub_op2
        cmp ah,bl 
        jz getValue_al_sub_op2
        
         
        
        
getValue_al_sub_op2:
mov ah,9
 mov dx,offset newline
 int 21h 
 
mov ah,9
mov dx,offset Mess_value
int 21h

mov ah,0AH 
mov dx,offset value2        
int 21h 

mov al,value2+2
          mov bh,30h
       cmp al,bh
       jnz  check_if_1B
       jz   isdigitB
       
       check_if_1B:
       mov bh,31h
       cmp al,bh
       jnz  check_if_2B
       jz   isdigitB
       
        check_if_2B:
       mov bh,32h
       cmp al,bh
       jnz  check_if_3B
       jz   isdigitB 
       
        check_if_3B:
       mov bh,33h
       cmp al,bh
       jnz  check_if_4B
       jz   isdigitB
       
         check_if_4B:
       mov bh,34h
       cmp al,bh
       jnz  check_if_5B
       jz   isdigitB 
        
       
        check_if_5B:
       mov bh,35h
       cmp al,bh
       jnz  check_if_6B
       jz   isdigitB
       
	   
        check_if_6B:
       mov bh,36h
       cmp al,bh
       jnz  check_if_7B
       jz   isdigitB 
        
	
       check_if_7B:
       mov bh,37h
       cmp al,bh
       jnz  check_if_8B
       jz   isdigitB 
        
	
      check_if_8B:
       mov bh,38h
       cmp al,bh
       jnz  check_if_9B
       jz   isdigitB
       
	   
        check_if_9B:
       mov bh,39h
       cmp al,bh
       jnz  isletterB
       jz   isdigitB
       

       
       
        isdigitB:
       sub al,30h
       mov bl,10h
       mul bl
       mov ch,al
       
       jmp  check_2nd_charA
       
        isletterB:
       sub al,60h
       add al,9h
       mov bl,10h
       mul bl
       mov ch,al
       
       jmp  check_2nd_charA 
       
       
        check_2nd_charB:
       mov al,value2+3
       mov bh,30h
       cmp al,bh
       jnz  check_if_1B1_
       jz   isdigitB1_
       
	   
        check_if_1B1_:
       mov bh,31h
       cmp al,bh
       jnz  check_if_2B1_
       jz   isdigitB1_
       
	   
        check_if_2B1_:
       mov bh,32h
       cmp al,bh
       jnz  check_if_3B1_
       jz   isdigitB1_ 
       
	   
        check_if_3B1_:
       mov bh,33h
       cmp al,bh
       jnz  check_if_4B1_
       jz   isdigitB1_
        
	
        check_if_4B1_:
       mov bh,34h
       cmp al,bh
       jnz  check_if_5B1_
       jz   isdigitB1_ 
        
        
       check_if_5B1_:
       mov bh,35h
       cmp al,bh
       jnz  check_if_6B1_
       jz   isdigitB1_
       
	   
       check_if_6B1_:
       mov bh,36h
       cmp al,bh
       jnz  check_if_7B1_
       jz   isdigitB1_ 
        
		
       check_if_7B1_:
       mov bh,37h
       cmp al,bh
       jnz  check_if_8B1_
       jz   isdigitB1_ 
        
		
       check_if_8B1_:
       mov bh,38h
       cmp al,bh
       jnz  check_if_9B1_
       jz   isdigitB1_
       
	   
       check_if_9B1_:
       mov bh,39h
       cmp al,bh
       jnz  isletterB1_
       jz   isdigitB1_
       
       
       
        isdigitB1_: ;reg_Ax_1+3 is unit 
       sub al,30h
       add ch,al
       
       
       jmp  finish_check_digits_and_letters_of_inputB
       
	   
       isletterB1_:
       sub al,60h
       add al,9h
       add ch,al
       
       jmp  finish_check_digits_and_letters_of_inputB
        
       
       finish_check_digits_and_letters_of_inputB:
       
       mov ax,cx

       mov bl ,ah 
       mov bh , byte ptr real_reg_Ax_2
       sub bh,bl
       mov byte ptr real_reg_Ax_2,bh


getRegisterName_al_sub_op2:
 mov ah,9
 mov dx,offset newline
 int 21h



 mov ah,9
        mov dx,offset Mess_operand_2
        int 21h

        ;receive input from user 
        mov ah,0AH 
        mov dx,offset operand_2
        int 21h 



;check if register is ax or al or ah         
mov si,offset [operand_2+2]
mov bl,61h  ;ascii of a 
cmp bl,[si]
jz AX_check_6
jnz another_register_name_check_1_6


Ax_check_6:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz sizemismatch3
jnz another_compare_ax_1_6

another_compare_ax_1_6:
mov bl,68h ;ascii of h
cmp bl,[si]
jz al_sub_ah
jnz another_compare_of_ax_2_6


al_sub_ah:
mov ah,byte ptr real_reg_Ax_2
mov bh,byte ptr real_reg_Ax_2+1
sub ah,bh
mov byte ptr real_reg_Ax_2,ah 
jmp continue

another_compare_of_ax_2_6:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz al_sub_al
jnz error_Register_name_al_sub 

al_sub_al:
mov ah, byte ptr real_reg_Ax_2
mov bh,byte ptr real_reg_Ax_2
sub ah,bh
mov byte ptr real_reg_Ax_2,ah 
jmp continue


another_register_name_check_1_6:
;check if register is bx          
mov si,offset [operand_2+2]
mov bl,62h  ;ascii of b 
cmp bl,[si]
jz bx_check_6
jnz another_register_name_check_2_6

bx_check_6:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz sizemismatch3
jnz another_compare_of_bx_1_6


another_compare_of_bx_1_6:
mov bl,68h ;ascii of h
cmp bl,[si]
jz al_sub_bh
jnz another_compare_of_bx_2_6

al_sub_bh:
mov ah,byte ptr real_reg_Ax_2
mov bh,byte ptr real_reg_bx_2+1
sub ah,bh
mov byte ptr real_reg_Ax_2,ah 
jmp continue


another_compare_of_bx_2_6:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz al_sub_bl
jnz compare_BP_6 


al_sub_bl:
mov ah,byte ptr real_reg_Ax_2
mov bh,byte ptr real_reg_bx_2
sub ah,bh
mov byte ptr real_reg_Ax_2,ah 
jmp continue

; to check if register is BP or not
compare_BP_6:
mov bl,70h ;ascii of p
cmp bl,[si]
jz sizemismatch3
jnz error_register_name_al_sub
  
 
another_register_name_check_2_6: 
;check if register is cx         
mov si,offset [operand_2+2]
mov bl,63h  ;ascii of c 
cmp bl,[si]
jz cX_check_6  
jnz another_register_name_check_3_6


cx_check_6:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz sizemismatch3
jnz another_compare_of_cx_1_6
 

another_compare_of_cx_1_6:
mov bl,68h ;ascii of h
cmp bl,[si]
jz al_sub_ch
jnz another_compare_of_cx_2_6

al_sub_ch:
mov ah,byte ptr real_reg_Ax_2
mov bh,byte ptr real_reg_cx_2+1
sub ah,bh
mov byte ptr real_reg_Ax_2,ah 
jmp continue
 

another_compare_of_cx_2_6:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz al_sub_cl
jnz error_Register_name_al_sub

al_sub_cl:
mov ah,byte ptr real_reg_Ax_2
mov bh,byte ptr real_reg_cx_2
sub ah,bh
mov byte ptr real_reg_Ax_2,ah 
jmp continue


another_register_name_check_3_6:
;check if register is dx or dl or dh         
mov si,offset [operand_2+2]
mov bl,64h  ;ascii of d 
cmp bl,[si]
jz dX_check_6
jnz another_register_name_check_4_6


dx_check_6:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz sizemismatch3
jnz another_compare_of_dx_1_6
 

another_compare_of_dx_1_6:
mov bl,68h ;ascii of h
cmp bl,[si]
jz al_sub_dh
jnz another_compare_of_dx_2_6

al_sub_dh:
mov ah,byte ptr real_reg_Ax_2
mov bh,byte ptr real_reg_dx_2+1
sub ah,bh
mov byte ptr real_reg_Ax_2,ah 
jmp continue

another_compare_of_dx_2_6:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz al_sub_dl
jnz Compare_DI_6

al_sub_dl:
mov ah,byte ptr real_reg_Ax_2
mov bh,byte ptr real_reg_dx_2
sub ah,bh
mov byte ptr real_reg_Ax_2,ah 
jmp continue

; to check if register is DI or not
compare_DI_6:
mov bl,69h ;ascii of i
cmp bl,[si]
jz sizemismatch3
jnz error_register_name_al_sub
  

another_register_name_check_4_6:
mov bl,73h ; ascii of s
cmp bl,[si]
jz check_si_6
jnz error_register_name_al_sub

check_si_6:
mov bl,69h ;ascii of  i
cmp bl,[si]
jz sizemismatch3
jnz check_sp_6 

check_sp_6:
mov bl,70h ;ascii of p
cmp bl,[si]
jz sizemismatch3
jnz error_register_name_al_sub



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;al_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;endofcode


;;;;;;;;;;;;;;;;;;;;;;;;;bx_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;startofcode
bx_sub_?:
mov ah,9
 mov dx,offset newline
 int 21h
 
 
 mov ah,9
 mov dx,offset value_OR_register
 int 21h
 
 ;receive input from user 
        mov ah,0AH 
        mov dx,offset vORr
        int 21h 
        mov ah,vORr+2
        mov al,72h  ;ascii of r
        mov bl,76h  ;ascii of v
        cmp ah,al
        jz getRegisterName_bx_sub_op2
        cmp ah,bl 
        jz getValue_bx_sub_op2
        


getValue_bx_sub_op2:
mov ah,9
 mov dx,offset newline
 int 21h 
 
mov ah,9
mov dx,offset Mess_value
int 21h

mov ah,0AH 
mov dx,offset value
int 21h 

 mov al, value + 2
mov bh, 30h
cmp al, bh
jnz  check_if_1_B
jz   isdigit_B

check_if_1_B :
mov bh, 31h
cmp al, bh
jnz  check_if_2_B
jz   isdigit_B

check_if_2_B :
mov bh, 32h
cmp al, bh
jnz  check_if_3_B
jz   isdigit_B

check_if_3_B :
mov bh, 33h
cmp al, bh
jnz  check_if_4_B
jz   isdigit_B

check_if_4_B :
mov bh, 34h
cmp al, bh
jnz  check_if_5_B
jz   isdigit_B


check_if_5_B :
mov bh, 35h
cmp al, bh
jnz  check_if_6_B
jz   isdigit_B


check_if_6_B :
mov bh, 36h
cmp al, bh
jnz  check_if_7_B
jz   isdigit_B


check_if_7_B :
mov bh, 37h
cmp al, bh
jnz  check_if_8_B
jz   isdigit_B


check_if_8_B :
mov bh, 38h
cmp al, bh
jnz  check_if_9_B
jz   isdigit_B


check_if_9_B :
mov bh, 39h
cmp al, bh
jnz  isletter_B
jz   isdigit_B




isdigit_B:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  check_2nd_char_B

isletter_B :
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  check_2nd_char_B


check_2nd_char_B :
mov al, value + 3
mov bh, 30h
cmp al, bh
jnz  check_if_1_B_1
jz   isdigit_B_1


check_if_1_B_1 :
mov bh, 31h
cmp al, bh
jnz  check_if_2_B_1
jz   isdigit_B_1


check_if_2_B_1 :
mov bh, 32h
cmp al, bh
jnz  check_if_3_B_1
jz   isdigit_B_1


check_if_3_B_1 :
mov bh, 33h
cmp al, bh
jnz  check_if_4_B_1
jz   isdigit_B_1


check_if_4_B_1 :
mov bh, 34h
cmp al, bh
jnz  check_if_5_B_1
jz   isdigit_B_1


check_if_5_B_1 :
mov bh, 35h
cmp al, bh
jnz  check_if_6_B_1
jz   isdigit_B_1


check_if_6_B_1 :
mov bh, 36h
cmp al, bh
jnz  check_if_7_B_1
jz   isdigit_B_1


check_if_7_B_1 :
mov bh, 37h
cmp al, bh
jnz  check_if_8_B_1
jz   isdigit_B_1


check_if_8_B_1 :
mov bh, 38h
cmp al, bh
jnz  check_if_9_B_1
jz   isdigit_B_1


check_if_9_B_1 :
mov bh, 39h
cmp al, bh
jnz  isletter_B_1
jz   isdigit_B_1



isdigit_B_1:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  check_3rd_char_B


isletter_B_1 :
sub al, 60h
add al, 9h
add ch, al

jmp  check_3rd_char_B
check_3rd_char_B :
mov al, value + 4
mov bh, 30h
cmp al, bh
jnz  check_if_1_B_2
jz   isdigit_B_2

check_if_1_B_2 :
mov bh, 31h
cmp al, bh
jnz  check_if_2_B_2
jz   isdigit_B_2

check_if_2_B_2 :
mov bh, 32h
cmp al, bh
jnz  check_if_3_B_2
jz   isdigit_B_2

check_if_3_B_2 :
mov bh, 33h
cmp al, bh
jnz  check_if_4_B_2
jz   isdigit_B_2

check_if_4_B_2 :
mov bh, 34h
cmp al, bh
jnz  check_if_5_B_2
jz   isdigit_B_2


check_if_5_B_2 :
mov bh, 35h
cmp al, bh
jnz  check_if_6_B_2
jz   isdigit_B_2

check_if_6_B_2 :
mov bh, 36h
cmp al, bh
jnz  check_if_7_B_2
jz   isdigit_B_2


check_if_7_B_2 :
mov bh, 37h
cmp al, bh
jnz  check_if_8_B_2
jz   isdigit_B_2


check_if_8_B_2 :
mov bh, 38h
cmp al, bh
jnz  check_if_9_B_2
jz   isdigit_B_2


check_if_9_B_2 :
mov bh, 39h
cmp al, bh
jnz  isletter_B_2
jz   isdigit_B_2



isdigit_B_2:; reg_Ax_1 + 4 is tens
sub al, 30h
mov bl, 10h
mul bl
mov cl, al


jmp  check_4th_char_B


isletter_B_2 :
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov cl, al


check_4th_char_B :

mov al, value + 5
mov bh, 30h
cmp al, bh
jnz  check_if_1_B_3
jz   isdigit_B_3


check_if_1_B_3 :
mov bh, 31h
cmp al, bh
jnz  check_if_2_B_3
jz   isdigit_B_3


check_if_2_B_3 :
mov bh, 32h
cmp al, bh
jnz  check_if_3_B_3
jz   isdigit_B_3


check_if_3_B_3 :
mov bh, 33h
cmp al, bh
jnz  check_if_4_B_3
jz   isdigit_B_3


check_if_4_B_3 :
mov bh, 34h
cmp al, bh
jnz  check_if_5_B_3
jz   isdigit_B_3


check_if_5_B_3 :
mov bh, 35h
cmp al, bh
jnz  check_if_6_B_3
jz   isdigit_B_3


check_if_6_B_3 :
mov bh, 36h
cmp al, bh
jnz  check_if_7_B_3
jz   isdigit_B_3

check_if_7_B_3 :
mov bh, 37h
cmp al, bh
jnz  check_if_8_B_3
jz   isdigit_B_3


check_if_8_B_3 :
mov bh, 38h
cmp al, bh
jnz  check_if_9_B_3
jz   isdigit_B_3

check_if_9_B_3 :
mov bh, 39h
cmp al, bh
jnz  isletter_B_3
jz   isdigit_B_3



isdigit_B_3:; reg_Ax_1 + 5 is unit
sub al, 30h
add cl, al


jmp  finish_check_digits_and_letters_of_input_B

isletter_B_3 :
sub al, 60h
add al, 9h
add cl, al


finish_check_digits_and_letters_of_input_B :

mov ax, cx
 
       
  mov bx,real_reg_bx_2
  sub bx,ax
  mov real_reg_bx_2,bx     
  jmp continue 
 

getRegisterName_bx_sub_op2:

 mov ah,9
 mov dx,offset newline
 int 21h



 mov ah,9
        mov dx,offset Mess_operand_2
        int 21h

        ;receive input from user 
        mov ah,0AH 
        mov dx,offset operand_2
        int 21h 



;check if register is ax or al or ah         
mov si,offset [operand_2+2]
mov bl,61h  ;ascii of a 
cmp bl,[si]
jz AX_check_7
jnz another_register_name_check_1_7


Ax_check_7:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz bx_sub_ax
jnz error_Register_name_bx_sub

bx_sub_ax:
mov ax, real_reg_bx_2
mov bx,real_reg_Ax_2
sub ax,bx
mov real_reg_Ax_2,ax 
jmp continue 




another_register_name_check_1_7:
;check if register is bx          
mov si,offset [operand_2+2]
mov bl,62h  ;ascii of b 
cmp bl,[si]
jz bx_check_7
jnz another_register_name_check_2_7

bx_check_7:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz bx_sub_bx
jnz another_compare_of_bx_1_7


bx_sub_bx:
mov ax,real_reg_bx_2
mov bx,real_reg_bx_2
sub ax,bx 
mov real_reg_ax_2,ax
jmp continue

another_compare_of_bx_1_7:
mov bl,68h ;ascii of h
cmp bl,[si]
jz sizemismatch4
jnz another_compare_of_bx_2_7

another_compare_of_bx_2_7:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz sizemismatch4
jnz compare_BP_7

 


; to check if register is BP or not
compare_BP_7:
mov bl,70h ;ascii of p
cmp bl,[si]
jz bx_sub_BP
jnz error_register_name_bx_sub

bx_sub_BP:
mov ax,real_reg_bx_2
mov bx,real_reg_BP_2
sub ax,bx 
mov real_reg_bx_2,ax
jmp continue  
 
another_register_name_check_2_7: 
;check if register is cx         
mov si,offset [operand_2+2]
mov bl,63h  ;ascii of c 
cmp bl,[si]
jz cX_check_7
jnz another_register_name_check_3_7


cx_check_7:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz bx_sub_cx
jnz error_register_name_bx_sub

bx_sub_cx:
mov ax,real_reg_bx_2
mov bx,real_reg_cx_2
sub ax,bx 
mov real_reg_ax_2,ax
jmp continue 

another_compare_of_cx_1_7:
mov bl,68h ;ascii of h
cmp bl,[si]
jz sizemismatch4
jnz another_compare_of_cx_2_7
 
jmp continue

another_compare_of_cx_2_7:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz sizemismatch4
jnz error_Register_name_bx_sub


another_register_name_check_3_7:
;check if register is dx or dl or dh         
mov si,offset [operand_2+2]
mov bl,64h  ;ascii of d 
cmp bl,[si]
jz dX_check_7
jnz another_register_name_check_4_7


dx_check_7:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz bx_sub_dx
jnz another_compare_of_dx_1_7

bx_sub_dx:
mov ax,real_reg_bx_2
mov bx,real_reg_dx_2
sub ax,bx 
mov real_reg_ax_2,ax
jmp continue 

another_compare_of_dx_1_7:
mov bl,68h ;ascii of h
cmp bl,[si]
jz sizemismatch4
jnz another_compare_of_dx_2_7

another_compare_of_dx_2_7:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz sizemismatch4
jnz Compare_DI_7

; to check if register is DI or not
compare_DI_7:
mov bl,69h ;ascii of i
cmp bl,[si]
jz bx_sub_DI
jnz error_register_name_bx_sub

bx_sub_DI:
mov ax,real_reg_bx_2
mov bx,real_reg_di_2
sub ax,bx 
mov real_reg_ax_2,ax
jmp continue  

another_register_name_check_4_7:
mov bl,73h ; ascii of s
cmp bl,[si]
jz check_si_7
jnz error_register_name_bx_sub

check_si_7:
mov bl,69h ;ascii of  i
cmp bl,[si]
jz bx_sub_si
jnz check_sp_7

bx_sub_si:
mov ax,real_reg_bx_2
mov bx,real_reg_si_2
sub ax,bx 
mov real_reg_ax_2,ax
jmp continue 

check_sp_7:
mov bl,70h ;ascii of p
cmp bl,[si]
jz bx_sub_sp
jnz error_register_name_bx_sub

bx_sub_sp:
mov ax,real_reg_bx_2
mov bx,real_reg_sp_2
sub ax,bx 
mov real_reg_ax_2,ax
jmp continue

;;;;;;;;;;;;;;;;;;;;;;;;bx_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;endofcode
;;;;;;;;;;;;;;;;;;;;;;;;bh_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;startofcode
bh_sub_?:
mov ah,9
 mov dx,offset newline
 int 21h
 
 
 mov ah,9
 mov dx,offset value_OR_register
 int 21h
 
 ;receive input from user 
        mov ah,0AH 
        mov dx,offset vORr
        int 21h                                                                      
        
        mov ah,vORr+2
        mov al,72h  ;ascii of r
        mov bl,76h  ;ascii of v
        cmp ah,al
        jz getRegisterName_bh_sub_op2
        cmp ah,bl 
        jz getValue_bh_sub_op2
        
         
        
        
getValue_bh_sub_op2:
mov ah,9
 mov dx,offset newline
 int 21h 
 
mov ah,9
mov dx,offset Mess_value
int 21h

mov ah,0AH 
mov dx,offset value2        
int 21h 

    ;check_digits_or_letters value
     
  mov al,value2+2
          mov bh,30h
       cmp al,bh
       jnz  check_if_1C
       jz   isdigitC
       
       check_if_1C:
       mov bh,31h
       cmp al,bh
       jnz  check_if_2C
       jz   isdigitC
       
        check_if_2C:
       mov bh,32h
       cmp al,bh
       jnz  check_if_3C
       jz   isdigitC 
       
        check_if_3C:
       mov bh,33h
       cmp al,bh
       jnz  check_if_4C
       jz   isdigitC
       
         check_if_4C:
       mov bh,34h
       cmp al,bh
       jnz  check_if_5C
       jz   isdigitC 
        
       
        check_if_5C:
       mov bh,35h
       cmp al,bh
       jnz  check_if_6C
       jz   isdigitC
       
	   
        check_if_6C:
       mov bh,36h
       cmp al,bh
       jnz  check_if_7C
       jz   isdigitC 
        
	
       check_if_7C:
       mov bh,37h
       cmp al,bh
       jnz  check_if_8C
       jz   isdigitC 
        
	
      check_if_8C:
       mov bh,38h
       cmp al,bh
       jnz  check_if_9C
       jz   isdigitC
       
	   
        check_if_9C:
       mov bh,39h
       cmp al,bh
       jnz  isletterB
       jz   isdigitC
       

       
       
        isdigitC:
       sub al,30h
       mov bl,10h
       mul bl
       mov ch,al
       
       jmp  check_2nd_charB
       
        isletterC:
       sub al,60h
       add al,9h
       mov bl,10h
       mul bl
       mov ch,al
       
       jmp  check_2nd_charC 
       
       
        check_2nd_charC:
       mov al,value2+3
       mov bh,30h
       cmp al,bh
       jnz  check_if_1C1_
       jz   isdigitC1_
       
	   
        check_if_1C1_:
       mov bh,31h
       cmp al,bh
       jnz  check_if_2C1_
       jz   isdigitC1_
       
	   
        check_if_2C1_:
       mov bh,32h
       cmp al,bh
       jnz  check_if_3C1_
       jz   isdigitC1_ 
       
	   
        check_if_3C1_:
       mov bh,33h
       cmp al,bh
       jnz  check_if_4C1_
       jz   isdigitC1_
        
	
        check_if_4C1_:
       mov bh,34h
       cmp al,bh
       jnz  check_if_5C1_
       jz   isdigitC1_ 
        
        
       check_if_5C1_:
       mov bh,35h
       cmp al,bh
       jnz  check_if_6C1_
       jz   isdigitC1_
       
	   
       check_if_6C1_:
       mov bh,36h
       cmp al,bh
       jnz  check_if_7C1_
       jz   isdigitC1_ 
        
		
       check_if_7C1_:
       mov bh,37h
       cmp al,bh
       jnz  check_if_8C1_
       jz   isdigitC1_ 
        
		
       check_if_8C1_:
       mov bh,38h
       cmp al,bh
       jnz  check_if_9C1_
       jz   isdigitC1_
       
	   
       check_if_9C1_:
       mov bh,39h
       cmp al,bh
       jnz  isletterB1_
       jz   isdigitC1_
       
       
       
        isdigitC1_: ;reg_Ax_1+3 is unit 
       sub al,30h
       add ch,al
       
       
       jmp  finish_check_digits_and_letters_of_inputC
       
	   
       isletterC1_:
       sub al,60h
       add al,9h
       add ch,al
       
       jmp  finish_check_digits_and_letters_of_inputC
        
       
       finish_check_digits_and_letters_of_inputC:
       
       mov ax,cx
     
       mov bh,ah
       mov bl,byte ptr real_reg_bx_2+1
       sub bl,bh
       mov byte ptr real_reg_bx_2+1,bl 
       
       jmp continue   
      




getRegisterName_bh_sub_op2:

 mov ah,9
 mov dx,offset newline
 int 21h



 mov ah,9
        mov dx,offset Mess_operand_2
        int 21h

        ;receive input from user 
        mov ah,0AH 
        mov dx,offset operand_2
        int 21h 



;check if register is ax or al or ah         
mov si,offset [operand_2+2]
mov bl,61h  ;ascii of a 
cmp bl,[si]
jz AX_check_8
jnz another_register_name_check_1_8


Ax_check_8:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz sizemismatch5
jnz another_compare_ax_1_8

another_compare_ax_1_8:
mov bl,68h ;ascii of h
cmp bl,[si]
jz bh_sub_ah
jnz another_compare_of_ax_2_8


bh_sub_ah:
mov ah,byte ptr real_reg_bx_2+1
mov bh,byte ptr real_reg_Ax_2+1
sub ah,bh
mov byte ptr real_reg_bx_2+1,ah 
jmp continue

another_compare_of_ax_2_8:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz bh_sub_al
jnz error_Register_name_bh_sub 

bh_sub_al:
mov ah, byte ptr real_reg_bx_2+1
mov bh,byte ptr real_reg_Ax_2
sub ah,bh
mov byte ptr real_reg_bx_2+1,ah 
jmp continue


another_register_name_check_1_8:
;check if register is bx          
mov si,offset [operand_2+2]
mov bl,62h  ;ascii of b 
cmp bl,[si]
jz bx_check_8
jnz another_register_name_check_2_8

bx_check_8:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz sizemismatch5
jnz another_compare_of_bx_1_8


another_compare_of_bx_1_8:
mov bl,68h ;ascii of h
cmp bl,[si]
jz bh_sub_bh
jnz another_compare_of_bx_2_8

bh_sub_bh:
mov ah,byte ptr real_reg_bx_2+1
mov bh,byte ptr real_reg_bx_2+1
sub ah,bh
mov byte ptr real_reg_bx_2+1,ah 
jmp continue


another_compare_of_bx_2_8:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz ah_sub_bl
jnz compare_BP_8 


bh_sub_bl:
mov ah,byte ptr real_reg_bx_2+1
mov bh,byte ptr real_reg_bx_2
sub ah,bh
mov byte ptr real_reg_bx_2+1,ah 
jmp continue

; to check if register is BP or not
compare_BP_8:
mov bl,70h ;ascii of p
cmp bl,[si]
jz sizemismatch5
jnz error_register_name_bh_sub
  
 
another_register_name_check_2_8: 
;check if register is cx         
mov si,offset [operand_2+2]
mov bl,63h  ;ascii of c 
cmp bl,[si]
jz cX_check_8
jnz another_register_name_check_3_8


cx_check_8:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz sizemismatch5
jnz another_compare_of_cx_1_8
 

another_compare_of_cx_1_8:
mov bl,68h ;ascii of h
cmp bl,[si]
jz bh_sub_ch
jnz another_compare_of_cx_2_8

bh_sub_ch:
mov ah,byte ptr real_reg_bx_2+1
mov bh,byte ptr real_reg_cx_2+1
sub ah,bh
mov byte ptr real_reg_bx_2+1,ah 
jmp continue
 

another_compare_of_cx_2_8:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz bh_sub_cl
jnz error_Register_name_bh_sub

bh_sub_cl:
mov ah,byte ptr real_reg_bx_2+1
mov bh,byte ptr real_reg_cx_2
sub ah,bh
mov byte ptr real_reg_bx_2+1,ah 
jmp continue


another_register_name_check_3_8:
;check if register is dx or dl or dh         
mov si,offset [operand_2+2]
mov bl,64h  ;ascii of d 
cmp bl,[si]
jz dX_check_8
jnz another_register_name_check_4_8


dx_check_8:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz sizemismatch5
jnz another_compare_of_dx_1_8
 

another_compare_of_dx_1_8:
mov bl,68h ;ascii of h
cmp bl,[si]
jz bh_sub_dh
jnz another_compare_of_dx_2_8

bh_sub_dh:
mov ah,byte ptr real_reg_bx_2+1
mov bh,byte ptr real_reg_dx_2+1
sub ah,bh
mov byte ptr real_reg_bx_2+1,ah 
jmp continue

another_compare_of_dx_2_8:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz bh_sub_dl
jnz Compare_DI_8

bh_sub_dl:
mov ah,byte ptr real_reg_bx_2+1
mov bh,byte ptr real_reg_dx_2
sub ah,bh
mov byte ptr real_reg_bx_2+1,ah 
jmp continue

; to check if register is DI or not
compare_DI_8:
mov bl,69h ;ascii of i
cmp bl,[si]
jz sizemismatch5
jnz error_register_name_bh_sub
  

another_register_name_check_4_8:
mov bl,73h ; ascii of s
cmp bl,[si]
jz check_si_8
jnz error_register_name_bh_sub

check_si_8:
mov bl,69h ;ascii of  i
cmp bl,[si]
jz sizemismatch5
jnz check_sp_8 

check_sp_8:
mov bl,70h ;ascii of p
cmp bl,[si]
jz sizemismatch5
jnz error_register_name_bh_sub


;;;;;;;;;;;;;;;;;;;;;;;bh_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;endofcode


jmp continue
 
            





  
    






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;command_SUB;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

                                                                                                                     
jmp continue 

   




error_command:

 mov ah,9
 mov dx,offset newline
 int 21h

 mov ah,9
 mov dx,offset wrong_Command
 int 21h
 
  mov ah,9
 mov dx,offset newline
 int 21h       

 jmp start       
 
error_Register_name_INC:
 mov ah,9
 mov dx,offset newline
 int 21h

 mov ah,9
 mov dx,offset error_register
 int 21h
 
  mov ah,9
 mov dx,offset newline
 int 21h
 
 jmp getRegisterName_INC 
 
 
 error_Register_name_dec:
 mov ah,9
 mov dx,offset newline
 int 21h

 mov ah,9
 mov dx,offset error_register
 int 21h
 
  mov ah,9
 mov dx,offset newline
 int 21h
 
 jmp getRegisterName_dec
 
 
  error_Register_name_sub_op1:
 mov ah,9
 mov dx,offset newline
 int 21h

 mov ah,9
 mov dx,offset error_register
 int 21h
 
  mov ah,9
 mov dx,offset newline
 int 21h
 
 jmp getRegisterName_sub_op1
 
  error_Register_name_sub_op2:  ;ax sub
 mov ah,9
 mov dx,offset newline
 int 21h

 mov ah,9
 mov dx,offset error_register
 int 21h
 
  mov ah,9
 mov dx,offset newline
 int 21h
 
 jmp getRegisterName_sub_op2
 
 
 sizemismatch:
 
  mov ah,9
 mov dx,offset newline
 int 21h

 mov ah,9
 mov dx,offset size_mismatch
 int 21h
 
  mov ah,9
 mov dx,offset newline
 int 21h 
 
jmp getRegisterName_sub_op2


error_Register_name_ah_sub:    ;ah sub

mov ah,9
 mov dx,offset newline
 int 21h

 mov ah,9
 mov dx,offset error_register
 int 21h
 
  mov ah,9
 mov dx,offset newline
 int 21
 
jmp getRegisterName_ah_sub_op2
 
sizemismatch2:
 
  mov ah,9
 mov dx,offset newline
 int 21h

 mov ah,9
 mov dx,offset size_mismatch
 int 21h
 
  mov ah,9
 mov dx,offset newline
 int 21h 
 
jmp getRegisterName_ah_sub_op2


error_Register_name_al_sub:    ;al sub

mov ah,9
 mov dx,offset newline
 int 21h

 mov ah,9
 mov dx,offset error_register
 int 21h
 
  mov ah,9
 mov dx,offset newline
 int 21
 
jmp getRegisterName_al_sub_op2


sizemismatch3:
 
  mov ah,9
 mov dx,offset newline
 int 21h

 mov ah,9
 mov dx,offset size_mismatch
 int 21h
 
  mov ah,9
 mov dx,offset newline
 int 21h 
 
jmp getRegisterName_al_sub_op2

error_Register_name_bx_sub:    ;al sub

mov ah,9
 mov dx,offset newline
 int 21h

 mov ah,9
 mov dx,offset error_register
 int 21h
 
  mov ah,9
 mov dx,offset newline
 int 21
 
jmp getRegisterName_bx_sub_op2

sizemismatch4:
 
  mov ah,9
 mov dx,offset newline
 int 21h

 mov ah,9
 mov dx,offset size_mismatch
 int 21h
 
  mov ah,9
 mov dx,offset newline
 int 21h 
 
jmp getRegisterName_bx_sub_op2



error_Register_name_bh_sub:    ;bh sub

mov ah,9
 mov dx,offset newline
 int 21h

 mov ah,9
 mov dx,offset error_register
 int 21h
 
  mov ah,9
 mov dx,offset newline
 int 21
 
jmp getRegisterName_bh_sub_op2
 
sizemismatch5:
 
  mov ah,9
 mov dx,offset newline
 int 21h

 mov ah,9
 mov dx,offset size_mismatch
 int 21h
 
  mov ah,9
 mov dx,offset newline
 int 21h 
 
jmp getRegisterName_bh_sub_op2
continue:
ret
function_taking_commands endp
      

     end main 

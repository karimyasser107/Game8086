.model small
.386
.stack 64
.DATA
mes1 db 'Please enter your name:','$'
points db 'Initial points:','$'
mes2 db  'Please press Enter to continue','$'                                   ;//changed 31/12/2021
chatting db 'To start chatting Press F1','$'
game     db 'To start the game Press F2','$'
endprogram db 'To end the program press ESC','$'
ErrorJumpKey db 'Please enter a correct choice:','$'
Contain_Digit_Mess db 'Name can not contain Digits:','$'
contain_Special_Mess db 'Name can not contain Special characters:','$'
;winners messages 
player_wins_disp db 'WINNER is:','$'                                               ;//changed 31/12/2021
points_for_player_mes db 'his/her Points:','$'                                           ;//changed 31/12/2021
 
;loosers messages 
player_looses_disp db 'Looser :','$'                                          ;//changed 31/12/2021
separate  db  80 dup('-'),'$'
newline db ,10,13,'$'
mess_incorrect_pts_and_reenter db 'Incorrect points ! (points must be 2 digits number)','$'    ;changed//31/12/2021
                                                                 ;//changed 31/12/2021
name1 db 16,?,16 dup('$'),'$' 
 name2 db 16,?,16 dup('$') ,'$'                                                      ;//changed 31/12/2021
enterKey_to_return_main_menu db  'ccEnter key to return to main menu','$'

pts1    db 3,?,3 dup('$'),'$'                                                 ;//changed 31/12/2021
real_pts1 db ?  
pts2    db 3,?,3 dup('$'),'$' 
real_pts2 db ?                                                                  ;//changed 31/12/2021
pts_total   db ? 
;message to return to main menu
  
f1                     db  61
f2                     db  60   
f3                     db  61
;message for level menu
Level1     db  'For Level 1 Press f1','$'
Level2     db  'For Level 2 press f2','$'

;//////////////////////////sara$sond
 counter1 db 0  ;counter for player1_p1
 counter2 db 0  ;counter for player2_p1 
 counter_for_players db 0
 

;newline db ,10,13,'$'
forbidden_char db 2,?,2 dup('$'), '$'
enter_forbiddenchar        db  'enter forbidden char: ','$'
disp_forbiddenchar         db  'your forbidden char is : ','$'
error_points1_lessthan_08 db  'points player 1 less than 8','$'
error_points1_lessthan_30 db 'points player 1 less than 30','$'

commands   db  'Commands: 1','$'
powerups   db  ' Powerups: 2 ','$'
p1         db  'power up 1 press(A) for (30 pts). ','$'
p2         db  'power up 2 press(B) for (8 pts). ','$'
p3         db  'power up 3 press(C) for (5 pts). ','$'
p4         db  'power up 4 press(D) for (3 pts). ','$'  

p1_2         db  'power up 1 press(x) for (30 pts). ','$'
p2_2         db  'power up 2 press(y) for (8 pts). ','$'
p3_2         db  'power up 3 press(z) for (5 pts). ','$'
p4_2         db  'power up 4 press(f) for (3 pts). ','$'

A                  db  1EH;for player1  
B                  db  30h 

x                  db  2DH;for player2
y                  db  15H

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
     
     call enter_initial_points_2    
     
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
              
              
              
     checkenter_key proc                                                                     ;changed 31/12/2021
again_enter_enter_key:                  
mov ah,00h      ;user enter a key 
int 16h
mov bl,0Dh ;  'enter' ascii
cmp al,bl
jnz again_enter_enter_key

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
                 
      enter_initial_points proc                                                            ;changed 31/12/2021
                 
mov ah,0Ah         ; for entering initial points
LEA dx, pts1
int 21h

call check_initial_points_digit_letter_player_1                                              ;changed 31/12/2021
         
      ret 
      enter_initial_points endp
           ;////////////////// 
                 
      enter_initial_points_2 proc                                                            ;changed 31/12/2021
                 
mov ah,0Ah         ; for entering initial points
LEA dx, pts2
int 21h

call check_initial_points_digit_letter_player_2                                              ;changed 31/12/2021
         
      ret 
      enter_initial_points_2 endp

     ;//////////////////
check_initial_points_digit_letter_player_1 proc
       mov al,pts1+2 ;first digit in pts1
       mov bl,30h
       cmp al,bl
       jae check_upper_bound_digit_in_pts1_1
       jmp incorrect_pts1_show_message
       check_upper_bound_digit_in_pts1_1: mov bl,39h
                                   cmp al,bl 
                                   jbe correct_first_digit_pts1_check_second_digit
                                   jmp incorrect_pts1_show_message
       correct_first_digit_pts1_check_second_digit:                         ;second digit in pts1
              mov al,pts1+3 ;first digit in pts1
              mov bl,30h
              cmp al,bl
              jae check_upper_bound_digit_in_pts1_2
              jmp incorrect_pts1_show_message
              check_upper_bound_digit_in_pts1_2: mov bl,39h
                                   cmp al,bl
                                   jbe correct_second_digit_correct_pts1
                                   jmp incorrect_pts1_show_message
       correct_second_digit_correct_pts1:mov al,pts1+2                      ;tenth
                                          sub al,30h 
                                          mov ah,00d
                                          mov dl,10h                        ;tenth needs to be multiplied by 10
                                          mul dl 
                                          mov real_pts1,al                    ;put the correct tenth value of pts1 in real_pts1
                                          ;repeat for units value in pts1
                                          mov al,pts1+3
                                          sub al,30h
                                          mov ah,00h
                                          
                                          add real_pts1,al                      ;add the units on the tenth of pts1
                                          ret

       incorrect_pts1_show_message: mov ah,9h 
                                   lea dx,mess_incorrect_pts_and_reenter
                                   int 21h
                                   jmp continue1

 ret 
check_initial_points_digit_letter_player_1 endp   

     ;//////////////////
check_initial_points_digit_letter_player_2 proc                   ;changed//31/12/2021
       mov al,pts2+2 ;first digit in pts1
       mov bl,30h
       cmp al,bl
       jae check_upper_bound_digit_in_pts2_1
       jmp incorrect_pts2_show_message
       check_upper_bound_digit_in_pts2_1: mov bl,39h
                                   cmp al,bl 
                                   jbe correct_first_digit_pts2_check_second_digit
                                   jmp incorrect_pts2_show_message
       correct_first_digit_pts2_check_second_digit:                         ;second digit in pts1
              mov al,pts2+3 ;first digit in pts1
              mov bl,30h
              cmp al,bl
              jae check_upper_bound_digit_in_pts2_2
              jmp incorrect_pts2_show_message
              check_upper_bound_digit_in_pts2_2: mov bl,39h
                                   cmp al,bl
                                   jbe correct_second_digit_correct_pts2
                                   jmp incorrect_pts2_show_message
       correct_second_digit_correct_pts2:mov al,pts2+2                      ;tenth
                                          sub al,30h 
                                          mov ah,00d
                                          mov dl,10h                        ;tenth needs to be multiplied by 10
                                          mul dl 
                                          mov real_pts2,al                    ;put the correct tenth value of pts1 in real_pts2
                                          ;repeat for units value in pts1
                                          mov al,pts2+3
                                          sub al,30h
                                          mov ah,00h
                                          
                                          add real_pts2,al                      ;add the units on the tenth of pts2
                                          ret

       incorrect_pts2_show_message: mov ah,9h 
                                   lea dx,mess_incorrect_pts_and_reenter
                                   int 21h
                                   jmp continue2

 ret 
check_initial_points_digit_letter_player_2 endp  
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
     call update_points_values 
     call print_points_values_p1_p2
      
      
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
      call update_points_values
      mov al,real_pts1
      mov ah,real_pts2
      cmp ah,al         
      
      jnz pts2_or_pts1 
      mov pts_total,al ;2 points are equal
      jmp finished_total_points  
      
      pts2_or_pts1: jc pts2_smaller
                    jnc   pts1_smaller    
                    
                    pts2_smaller: mov pts_total,ah          ;  points 2 smaller
                                  mov real_pts1,ah
                                  jmp finished_total_points    
                                  
                    pts1_smaller: mov pts_total,al          ;  points 1 smaller
                                  mov real_pts2,al
                    
      finished_total_points:
      call gameflow 
    ret
     
     gamemodesetup endp 
        
      ;//////////////////
      gameflow proc                                                                           ;updated 31/12/2021
            
        ;loop until one player points =0 then game ended
       whileNoWinner: ;mov al,pts1+2
                       ;mov ah,pts2+2
                       ;cmp al,0h         ;check player 1 points =0 then P1 looser, P2 winner
                       ;jnz checkPlayer1_points
                       ;call player2_winner
                       ;jmp finish_game        
                       
                       ;checkPlayer1_points: cmp ah,0h                  ;check player 2 points =0 then P2 looser, P1 winner
                         ;                   jnz continue_game_no_winner
                        ;                    call player1_winner
                       ;                     jmp finish_game  
              
                                            
                                            
                      ; continue_game_no_winner:
                      ; call update_players_memory_values
                      ; call update_players_registers_values
                      ; call print_register_values
                      ; call print_memory_values


                     ;player 1 starts his turn, he enters here the command or the power up he wants or hits the flying objects
		       call display_commands_or_powerups_menu    ;disp the menu of player1
                     call get_key_commands_or_powerups 
                     jmp finish_turn_player1
                            finish_turn_player1:

                            ;update screen, check if player 1 won? , then player2 turn 
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

                       ;to print on screen updated values
                       call update_players_memory_values
                       call update_players_registers_values
                       call update_points_values

                       call print_register_values
                       call print_memory_values
                       call print_points_values_p1_p2
                       ;check if the points of a player is zero or a player entered required value in the register
                       mov al,real_pts1
                       mov ah,real_pts2
                       cmp al,0h         ;check player 1 points =0 then P1 looser, P2 winner
                       jnz checkPlayer1_points_after_player_1
                       call player2_winner
                       jmp finish_game        
                       
                       checkPlayer1_points_after_player_1: cmp ah,0h                  ;check player 2 points =0 then P2 looser, P1 winner
                                            jnz continue_game_no_winner_after_player_1
                                            call player1_winner
                                            jmp finish_game 
                     continue_game_no_winner_after_player_1: 

                     ;check if player 1 entered the required value to win in any of the opponent registers
                     call check_if_value_requiered_to_WIN_in_ANY_reg_after_player_1_reg_2
                     ;jnz continue_game_no_winner_after_check_reg_2_required_value
                      
                      ;jmp finish_game
                       ;game logic                     
                     continue_game_no_winner_after_check_reg_2_required_value:

                     ;player 2 starts his turn, he enters here the command or the power up he wants or hits the flying objects
;we will put here fn  kareem ragab like this *****
;call display_commands_or_powerups_menu    ;disp the menu of player1
;call get_key_commands_or_powerups 
;jmp finish_turn_player1
;finish_turn_player1:

                     ;to print on screen updated values
                        call update_players_memory_values
                       call update_players_registers_values
                       call print_register_values
                       call print_memory_values
                                            ;check if the points of a player is zero or a player entered required value in the register
                       mov al,real_pts1
                       mov ah,real_pts2
                       cmp al,0h         ;check player 1 points =0 then P1 looser, P2 winner
                       jnz checkPlayer1_points_after_player_2
                       call player2_winner
                       jmp finish_game        
                       
                       checkPlayer1_points_after_player_2: cmp ah,0h                  ;check player 2 points =0 then P2 looser, P1 winner
                                            jnz continue_game_no_winner_after_player_2
                                            call player1_winner
                                            jmp finish_game 
                     continue_game_no_winner_after_player_2: 

                     ;check if player 2 entered the required value to win in any of the opponent registers
                     call check_if_value_requiered_to_WIN_in_ANY_reg_after_player_2_reg_1
                      ;jnz continue_game_no_winner_after_check_reg_1_required_value
                      ;call player2_winner
                      ;jmp finish_game
                                        
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
      check_if_value_requiered_to_WIN_in_ANY_reg_after_player_1_reg_2 proc                      ;updated 31/12/2021
;mov ax,105eh
;mov real_reg_Ax_2,ax

;if requiered value to win is in reag Ax_2
       mov ax,ds
       mov es,ax
       mov si,offset real_reg_Ax_2
       mov di,offset value_in_REG_to_win
       mov cx,4h
       cmpsw 
       jnz continue_game_no_winner_after_check_reg_2_required_value
      call player1_winner 
       jmp  finish_game

;if requiered value to win is in reag Bx_2
       mov ax,ds
       mov es,ax
       mov si,offset real_reg_Bx_2
       mov di,offset value_in_REG_to_win
       mov cx,4h
       cmpsw 
       jnz continue_game_no_winner_after_check_reg_2_required_value
       call player1_winner
       jmp finish_game 

;if requiered value to win is in reag Cx_2
       mov ax,ds
       mov es,ax
       mov si,offset real_reg_Cx_2
       mov di,offset value_in_REG_to_win
       mov cx,4h
       cmpsw 
       jnz continue_game_no_winner_after_check_reg_2_required_value
       call player1_winner
       jmp finish_game 
       
;if requiered value to win is in reag Dx_2
       mov ax,ds
       mov es,ax
       mov si,offset real_reg_Dx_2
       mov di,offset value_in_REG_to_win
       mov cx,4h
       cmpsw 
       jnz continue_game_no_winner_after_check_reg_2_required_value
       call player1_winner
       jmp finish_game 
       
;if requiered value to win is in reag SI_2
       mov ax,ds
       mov es,ax
       mov si,offset real_reg_SI_2
       mov di,offset value_in_REG_to_win
       mov cx,4h
       cmpsw 
       jnz continue_game_no_winner_after_check_reg_2_required_value
       call player1_winner
       jmp finish_game 
       
;if requiered value to win is in reag DI_2
       mov ax,ds
       mov es,ax
       mov si,offset real_reg_DI_2
       mov di,offset value_in_REG_to_win
       mov cx,4h
       cmpsw 
       jnz continue_game_no_winner_after_check_reg_2_required_value
       call player1_winner
       jmp finish_game 
       
;if requiered value to win is in reag SP_2
       mov ax,ds
       mov es,ax
       mov si,offset real_reg_SP_2
       mov di,offset value_in_REG_to_win
       mov cx,4h
       cmpsw 
       jnz continue_game_no_winner_after_check_reg_2_required_value
       call player1_winner
       jmp finish_game 
       
;if requiered value to win is in reag BP_2
       mov ax,ds
       mov es,ax
       mov si,offset real_reg_BP_2
       mov di,offset value_in_REG_to_win
       mov cx,4h
       cmpsw 
       jnz continue_game_no_winner_after_check_reg_2_required_value
       call player1_winner
       jmp finish_game 
      
ret
check_if_value_requiered_to_WIN_in_ANY_reg_after_player_1_reg_2 endp

         ;////////////////// 
check_if_value_requiered_to_WIN_in_ANY_reg_after_player_2_reg_1 proc                          ;updated 31/12/2021
;if requiered value to win is in reag Ax_1
       mov ax,ds
       mov es,ax
       mov si,offset real_reg_Ax_1
       mov di,offset value_in_REG_to_win
       mov cx,4h
       cmpsw 
       jnz continue_game_no_winner_after_check_reg_1_required_value
      call player2_winner
       jmp  finish_game

;if requiered value to win is in reag Bx_1
       mov ax,ds
       mov es,ax
       mov si,offset real_reg_Bx_1
       mov di,offset value_in_REG_to_win
       mov cx,4h
       cmpsw 
       jnz continue_game_no_winner_after_check_reg_1_required_value
       call player2_winner
       jmp finish_game 

;if requiered value to win is in reag Cx_1
       mov ax,ds
       mov es,ax
       mov si,offset real_reg_Cx_1
       mov di,offset value_in_REG_to_win
       mov cx,4h
       cmpsw 
       jnz continue_game_no_winner_after_check_reg_1_required_value
       call player2_winner
       jmp finish_game 
       
;if requiered value to win is in reag Dx_1
       mov ax,ds
       mov es,ax
       mov si,offset real_reg_Dx_1
       mov di,offset value_in_REG_to_win
       mov cx,4h
       cmpsw 
       jnz continue_game_no_winner_after_check_reg_1_required_value
       call player2_winner
       jmp finish_game 
       
;if requiered value to win is in reag SI_1
       mov ax,ds
       mov es,ax
       mov si,offset real_reg_SI_1
       mov di,offset value_in_REG_to_win
       mov cx,4h
       cmpsw 
       jnz continue_game_no_winner_after_check_reg_1_required_value
       call player2_winner
       jmp finish_game 
       
;if requiered value to win is in reag DI_1
       mov ax,ds
       mov es,ax
       mov si,offset real_reg_DI_1
       mov di,offset value_in_REG_to_win
       mov cx,4h
       cmpsw 
       jnz continue_game_no_winner_after_check_reg_1_required_value
       call player2_winner
       jmp finish_game 
       
;if requiered value to win is in reag SP_1
       mov ax,ds
       mov es,ax
       mov si,offset real_reg_SP_1
       mov di,offset value_in_REG_to_win
       mov cx,4h
       cmpsw 
       jnz continue_game_no_winner_after_check_reg_1_required_value
       call player2_winner
       jmp finish_game 
       
;if requiered value to win is in reag BP_1
       mov ax,ds
       mov es,ax
       mov si,offset real_reg_BP_1
       mov di,offset value_in_REG_to_win
       mov cx,4h
       cmpsw 
       jnz continue_game_no_winner_after_check_reg_1_required_value
       call player2_winner
       jmp finish_game 

ret
check_if_value_requiered_to_WIN_in_ANY_reg_after_player_2_reg_1 endp

         ;////////////////// 
         
         player2_winner proc  
  
              ;go to text mode                                                                        31/12/2021
              mov ah,0
              mov al,3
              int 10h
;move cursor           
              mov bx,0h  
              mov ah,2     ;move cursor
              mov dx,0505h     ;the midlle of the screen 0718h
              ;mov di,dx ;to protect the last starting location 
              int 10h

              mov ah,9           ; display winner message
              LEA dx, player_wins_disp
              int 21h  
;move cursor
              mov bx,0h  
              mov ah,2     ;move cursor
              mov dx,0516h     ;the midlle of the screen 0718h
              ;mov di,dx ;to protect the last starting location 
              int 10h

              mov ah,9           ; display winner: player 2 name 
              lea dx,name2+2
              int 21h
              mov ax,0h
;move cursor           
              mov bx,0h 
              mov ah,2     ;move cursor
              mov dx,0705h     ;the midlle of the screen 0718h
              ; mov di,dx ;to protect the last starting location 
              int 10h

              mov ah,9           ; display word 'points' 
              LEA dx,points_for_player_mes
              int 21h
;move cursor
              mov ax,0 
              mov bx,0h  
              mov ah,2     ;move cursor
              mov dx,0716h     ;the midlle of the screen 0718h
              ;mov di,dx ;to protect the last starting location 
              int 10h

              mov ah,9           ; display winner: player 2  points remaining
              LEA dx, [pts2]+2
              int 21h
              mov ax,0            
;move cursor            
              mov bx,0h  
              mov ah,2     ;move cursor
              mov dx,0b05h     ;the midlle of the screen 0718h
              ;mov di,dx ;to protect the last starting location 
              int 10h
             
              mov ah,9           ; display looser message
              LEA dx, player_looses_disp
              int 21h
;move cursor
              mov ax,0    
              mov bx,0h  
              mov ah,2     ;move cursor
              mov dx,0b16h     ;the midlle of the screen 0718h
              ;mov di,dx ;to protect the last starting location 
              int 10h 

              mov ah,9           ; display looser: player 1 name 
              LEA dx, [name1]+2
              int 21h
              mov ax,0 
;move cursor
              mov bx,0h  
              mov ah,2     ;move cursor
              mov dx,0c05h     ;the midlle of the screen 0718h
              ;mov di,dx ;to protect the last starting location 
              int 10h

              mov ax,0h
              mov ah,9           ; display word 'points' 
              LEA dx, points_for_player_mes
              int 21h
;move cursor
              mov ax,0  
              mov ah,2     ;move cursor
              mov dx,0c16h     ;the midlle of the screen 0718h
              ;mov di,dx ;to protect the last starting location 
              int 10h 

              mov ah,9           ; display looser: player 1  
              lea dx, pts1+2
              int 21h
            
            call  newline1
            call  newline1           
            call  newline1
            call  newline1  
;to wait user see the winner/looser page           
            call disp_enter 
            call checkenter_key

            ret
            player2_winner endp
         
         ;//////////////////    
         
         player1_winner proc
  
              ;go to text mode                                                                        31/12/2021
              mov ah,0
              mov al,3
              int 10h
;move cursor           
              mov bx,0h  
              mov ah,2     ;move cursor
              mov dx,0505h     ;the midlle of the screen 0718h
              ;mov di,dx ;to protect the last starting location 
              int 10h

              mov ah,9           ; display winner message
              LEA dx, player_wins_disp
              int 21h  
;move cursor
              mov bx,0h  
              mov ah,2     ;move cursor
              mov dx,0516h     ;the midlle of the screen 0718h
              ;mov di,dx ;to protect the last starting location 
              int 10h

              mov ah,9           ; display winner: player 1 name 
              lea dx,name1+2
              int 21h
              mov ax,0h
;move cursor           
              mov bx,0h 
              mov ah,2     ;move cursor
              mov dx,0705h     ;the midlle of the screen 0718h
              ; mov di,dx ;to protect the last starting location 
              int 10h

              mov ah,9           ; display word 'points' 
              LEA dx,points_for_player_mes
              int 21h
;move cursor
              mov ax,0 
              mov bx,0h  
              mov ah,2     ;move cursor
              mov dx,0716h     ;the midlle of the screen 0718h
              ;mov di,dx ;to protect the last starting location 
              int 10h

              mov ah,9           ; display winner: player 1  points remaining
              LEA dx, [pts1]+2
              int 21h
              mov ax,0            
;move cursor            
              mov bx,0h  
              mov ah,2     ;move cursor
              mov dx,0b05h     ;the midlle of the screen 0718h
              ;mov di,dx ;to protect the last starting location 
              int 10h
             
              mov ah,9           ; display looser message
              LEA dx, player_looses_disp
              int 21h
;move cursor
              mov ax,0    
              mov bx,0h  
              mov ah,2     ;move cursor
              mov dx,0b16h     ;the midlle of the screen 0718h
              ;mov di,dx ;to protect the last starting location 
              int 10h 

              mov ah,9           ; display looser: player 2 name 
              LEA dx, [name2]+2
              int 21h
              mov ax,0 
;move cursor
              mov bx,0h  
              mov ah,2     ;move cursor
              mov dx,0c05h     ;the midlle of the screen 0718h
              ;mov di,dx ;to protect the last starting location 
              int 10h

              mov ax,0h
              mov ah,9           ; display word 'points' 
              LEA dx, points_for_player_mes
              int 21h
;move cursor
              mov ax,0  
              mov ah,2     ;move cursor
              mov dx,0c16h     ;the midlle of the screen 0718h
              ;mov di,dx ;to protect the last starting location 
              int 10h 

              mov ah,9           ; display looser: player 2 
              lea dx, pts2+2
              int 21h
            
            call  newline1
            call  newline1           
            call  newline1
            call  newline1  
;to wait user see the winner/looser page           
            call disp_enter 
            call checkenter_key

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
;////////////////////////////////// screen display functions (registers, memory, names, points)          ;//changed 31/12/2021
;//////////////////
update_points_values proc                                                                                ;//changed 31/12/2021
       mov al,0Dh ;ascii of 'Enter'
       mov pts1+4,al
       ;checkthe entries of pts1 are digits or letters
check_pts1_is_digit_or_letter_1: mov ch,real_pts1
                               mov ah,00d
                               mov al,ch ;value of pts1  --> 12h
                               mov dl,10h
                               div dl ;ans is in al and remainder in ah ---> al=1 ah=2
                               ;mov bl, 0d ;lower range of numbers
                               ;cmp al,bl
                               ;jae check_upper_bound_value_pts1_1
                               ;jmp pts1_1_hexa_is_letter_1

                               ;check_upper_bound_value_pts1_1:    mov bl,9d
                                ;                               cmp al,bl
                                 ;                              jbe pts1_hexa_is_digit_1
                                  ;                             jmp pts1_hexa_is_letter_1
                               pts1_1_hexa_is_digit_1:add al,30h            ;to transform it into ascii
                                                 mov pts1+2,al     ; al=31h --> =1d ; put directly into reg_Ax_1
                                                 ;jmp check_pts1_hexa_is_digit_or_letter_2
                               ;pts1_1_hexa_is_letter_1:sub al,9d
                                ;                 add al,60h
                                 ;                mov pts1+2,al 
                                  ;               jmp check_pts1_hexa_is_digit_or_letter_2
check_pts1_hexa_is_digit_or_letter_2: 
                               ;compare if is between range of digits or no
                               ;mov bl, 0d ;lower range of numbers
                               ;cmp ah,bl
                               ;jae check_upper_bound_value_pts1_2
                               ;jmp pts1_hexa_is_letter_2

                               ;check_upper_bound_value_pts1_2:    mov bl,9d
                                ;                               cmp ah,bl
                                 ;                              jbe pts1_hexa_is_digit_2
                                  ;                             jmp pts1_hexa_is_letter_2
                               pts1_hexa_is_digit_2:add ah,30h            ;to transform it into ascii
                                                 mov pts1+3,ah     ; ah=32h --> =2d ; put directly into reg_Ax_1
                                   ;              jmp check_done_pts1_hexa_is_digit_or_letter
                               ;pts1_hexa_is_letter_2:sub ah,9d
                                ;                 add ah,60h
                                 ;                mov pts1+3,ah 
                                  ;               jmp check_done_pts1_hexa_is_digit_or_letter
                            ;check_done_pts1_hexa_is_digit_or_letter:
;pts2
mov ch,real_pts2
                               mov ah,00d
                               mov al,ch ;value of pts1  --> 12h
                               mov dl,10h
                               div dl

                               add al,30h            ;to transform it into ascii
                                                 mov pts2+2,al

                            add ah,30h            ;to transform it into ascii
                                                 mov pts2+3,ah 
ret
update_points_values endp 

;//////////////////
print_points_values_p1_p2 proc 
;player 1                                                                          ;//changed 31/12/2021
       mov bx,0h  
        mov ah,2     ;move cursor to begining of screen
        mov dx,0001h
        int 10h 
        ;print name1
      mov ah,9                   ;disp name 1
      Lea dx, [name1+2]
      int 21h
      mov bx,0h  
        mov ah,2     ;move cursor to up of register 1
        mov dx,0009h
        int 10h 
       ;print semicolom points
      mov ah,9               ;disp :
     lea dx, semicolumn
      int 21h
      ;points 1
      mov ah,9               ;disp points
      lea dx, pts1+2
      int 21h

 ;player 2     
       mov bx,0h  
        mov ah,2     ;move cursor to up of register 2
        mov dx,0016h
        int 10h 
      mov ah,9           ;disp name 2
      Lea dx, [name2+2]
      int 21h
       ;print semicolom points
       mov bx,0h  
        mov ah,2     ;move cursor to begining of screen
        mov dx,0021h
        int 10h 
      mov ah,9               ;disp :
      lea dx, semicolumn
      int 21h
      ;points 2
      mov ah,9               ;disp points player 2
      lea dx, pts2+2
      int 21h 
         
ret
print_points_values_p1_p2 endp

;//////////////////
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
jnz check_6

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
           
                     

check_6:
mov bl,6dh ;ascii of 'm'
cmp bl,[si] 
jz MovCheck 
jnz check_7

MovCheck:
mov bl,6fh ;ascii of 'o'
inc si
cmp bl,[si]
jz continueMovCheck
jnz checkMul

continueMovCheck:
mov bl,76h  ;ascii of 'v'
inc si 
cmp bl,[si]
jz mov_command 
jnz error_command

checkMul:
mov bl,75h ;ascii of 'u'
inc si
cmp bl,[si]
jz continueMulcheck
jnz error_command

continueMulcheck:
mov bl,6ch ;ascii of 'l'
inc si
cmp bl,[si]
;jz mul_command
jnz error_command

check_7:
mov bl,61h ;ascii of a
cmp bl,[si]
jz CheckAdd
;jnz check_8

CheckAdd:
mov bl,64h ;ascii of d
inc si
cmp bl,[si]
jz continueAddCheck
jnz error_command

continueAddCheck:
mov bl,64h ;ascii of d
inc si
cmp bl,[si]
jz Add_command
;jnz CheckAdc


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
jnz error_Register_name

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
mov al,byte ptr real_reg_bx_2+1
inc al
mov byte ptr real_reg_bx_2+1,al 
 
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
jmp continue

; to check if register is BP or not
compare_BP:
mov bl,70h ;ascii of p
cmp bl,[si]
jz INC_BP
jnz error_Register_name

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
mov al,byte ptr real_reg_cx_2+1
inc al
mov byte ptr real_reg_cx_2+1,al
 
jmp continue

another_compare_of_cx_2:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz inc_cl
jnz error_Register_name

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
mov al,byte ptr real_reg_dx_2+1
inc al
mov byte ptr real_reg_dx_2+1,al
 
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
jnz error_Register_name

Inc_DI:
mov ax ,real_reg_di_2
inc ax
mov real_reg_di_2,ax
jmp continue 

another_register_name_check_4:
mov bl,73h ; ascii of s
cmp bl,[si]
jz check_si
jnz error_Register_name

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
jnz error_Register_name

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
jnz error_Register_name

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
jnz error_Register_name

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
mov al,byte ptr real_reg_cx_2+1
dec al
mov byte ptr real_reg_cx_2+1,al
 
jmp continue

another_compare_of_cx_2_2:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz dec_cl
jnz error_Register_name

dec_cl:
mov al,byte ptr real_reg_cx_2
dec al
mov byte ptr real_reg_cx_2,al

jmp continue


another_register_name_check_3_2:
;check if register is dx or dl or dh         
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
mov al,byte ptr real_reg_dx_2+1
dec al
mov byte ptr real_reg_dx_2+1,al
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
mov bl,69h ;ascii of i
cmp bl,[si]
jz dec_DI
jnz error_Register_name

dec_DI:
mov ax ,real_reg_di_2
dec ax
mov real_reg_di_2,ax
jmp continue 

another_register_name_check_4_2:
mov bl,73h ; ascii of s
cmp bl,[si]
jz check_si_2
jnz error_Register_name

check_si_2:
mov bl,69h ;ascii of  i
inc si
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
jnz error_Register_name

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
jnz error_Register_name


another_register_name_check_1_3:
;check if register is bx or bl or bh         
mov cl,2h
mov si,offset [operand_1+2]
mov bl,62h  ;ascii of b 
cmp bl,[si]
jz bX_check_3
jnz another_register_name_check_2_3


bx_check_3:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz bx_sub_what
jnz another_compare_of_bx_1_3
 

another_compare_of_bx_1_3:
mov bl,68h ;ascii of h
cmp bl,[si]
jz bh_sub_?
jnz another_compare_of_bx_2_3



another_compare_of_bx_2_3:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz bl_sub_?
jnz compare_BP_3

 ;to check if register is BP or not
compare_BP_3:
mov bl,70h ;ascii of p
cmp bl,[si]
jz BP_sub_?
jnz error_Register_name
 
 
another_register_name_check_2_3: 
;check if register is cx or cl or ch         
mov si,offset [operand_1+2]
mov bl,63h  ;ascii of c 
cmp bl,[si]
jz cx_check_3
jnz another_register_name_check_3_3


cx_check_3:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz cx_sub_what
jnz another_compare_of_cx_1_3


another_compare_of_cx_1_3:
mov bl,68h ;ascii of h
cmp bl,[si]
jz ch_sub_?
jnz another_compare_of_cx_2_3

another_compare_of_cx_2_3:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz cl_sub_?
jnz error_Register_name




another_register_name_check_3_3:
;check if register is dx or dl or dh         
mov si,offset [operand_1+2]
mov bl,64h  ;ascii of d 
cmp bl,[si]
jz dX_check_3
jnz another_register_name_check_4_3


dx_check_3:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz dx_sub_?
jnz another_compare_of_dx_1_3

another_compare_of_dx_1_3:
mov bl,68h ;ascii of h
cmp bl,[si]
jz dh_sub_?
jnz another_compare_of_dx_2_3

another_compare_of_dx_2_3:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz dl_sub_?
jnz SubCompare_DI_2

; to check if register is DI or not
Subcompare_DI_2:
mov bl,69h ;ascii of i
cmp bl,[si]
jz di_sub_?
jnz error_Register_name

another_register_name_check_4_3:
mov bl,73h ; ascii of s
cmp bl,[si]
jz check_si_3
jnz error_Register_name

check_si_3:
mov bl,69h ;ascii of  i
inc si
cmp bl,[si]
jz si_sub_?
jnz check_sp_3

check_sp_3:
mov bl,70h ;ascii of p
cmp bl,[si]
jz sp_sub_?
jnz error_Register_name        
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

check_if_1_A:
mov bh, 31h
cmp al, bh
jnz  check_if_2_A
jz   isdigit_A

check_if_2_A:
mov bh, 32h
cmp al, bh
jnz  check_if_3_A
jz   isdigit_A

check_if_3_A:
mov bh, 33h
cmp al, bh
jnz  check_if_4_A
jz   isdigit_A

check_if_4_A:
mov bh, 34h
cmp al, bh
jnz  check_if_5_A
jz   isdigit_A


check_if_5_A:
mov bh, 35h
cmp al, bh
jnz  check_if_6_A
jz   isdigit_A


check_if_6_A:
mov bh, 36h
cmp al, bh
jnz  check_if_7_A
jz   isdigit_A


check_if_7_A:
mov bh, 37h
cmp al, bh
jnz  check_if_8_A
jz   isdigit_A


check_if_8_A:
mov bh, 38h
cmp al, bh
jnz  check_if_9_A
jz   isdigit_A


check_if_9_A:
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

isletter_A:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  check_2nd_char_A


check_2nd_char_A:
mov al, value + 3
mov bh, 30h
cmp al, bh
jnz  check_if_1_A_1
jz   isdigit_A_1


check_if_1_A_1:
mov bh, 31h
cmp al, bh
jnz  check_if_2_A_1
jz   isdigit_A_1


check_if_2_A_1:
mov bh, 32h
cmp al, bh
jnz  check_if_3_A_1
jz   isdigit_A_1


check_if_3_A_1:
mov bh, 33h
cmp al, bh
jnz  check_if_4_A_1
jz   isdigit_A_1


check_if_4_A_1:
mov bh, 34h
cmp al, bh
jnz  check_if_5_A_1
jz   isdigit_A_1


check_if_5_A_1:
mov bh, 35h
cmp al, bh
jnz  check_if_6_A_1
jz   isdigit_A_1


check_if_6_A_1:
mov bh, 36h
cmp al, bh
jnz  check_if_7_A_1
jz   isdigit_A_1


check_if_7_A_1:
mov bh, 37h
cmp al, bh
jnz  check_if_8_A_1
jz   isdigit_A_1


check_if_8_A_1:
mov bh, 38h
cmp al, bh
jnz  check_if_9_A_1
jz   isdigit_A_1


check_if_9_A_1:
mov bh, 39h
cmp al, bh
jnz  isletter_A_1
jz   isdigit_A_1



isdigit_A_1:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  check_3rd_char_A


isletter_A_1:
sub al, 60h
add al, 9h
add ch, al

jmp  check_3rd_char_A
check_3rd_char_A:
mov al, value + 4
mov bh, 30h
cmp al, bh
jnz  check_if_1_A_2
jz   isdigit_A_2

check_if_1_A_2:
mov bh, 31h
cmp al, bh
jnz  check_if_2_A_2
jz   isdigit_A_2

check_if_2_A_2:
mov bh, 32h
cmp al, bh
jnz  check_if_3_A_2
jz   isdigit_A_2

check_if_3_A_2:
mov bh, 33h
cmp al, bh
jnz  check_if_4_A_2
jz   isdigit_A_2

check_if_4_A_2:
mov bh, 34h
cmp al, bh
jnz  check_if_5_A_2
jz   isdigit_A_2


check_if_5_A_2:
mov bh, 35h
cmp al, bh
jnz  check_if_6_A_2
jz   isdigit_A_2

check_if_6_A_2:
mov bh, 36h
cmp al, bh
jnz  check_if_7_A_2
jz   isdigit_A_2


check_if_7_A_2:
mov bh, 37h
cmp al, bh
jnz  check_if_8_A_2
jz   isdigit_A_2


check_if_8_A_2:
mov bh, 38h
cmp al, bh
jnz  check_if_9_A_2
jz   isdigit_A_2


check_if_9_A_2:
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


isletter_A_2:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov cl, al


check_4th_char_A:

mov al, value + 5
mov bh, 30h
cmp al, bh
jnz  check_if_1_A_3
jz   isdigit_A_3


check_if_1_A_3:
mov bh, 31h
cmp al, bh
jnz  check_if_2_A_3
jz   isdigit_A_3


check_if_2_A_3:
mov bh, 32h
cmp al, bh
jnz  check_if_3_A_3
jz   isdigit_A_3


check_if_3_A_3:
mov bh, 33h
cmp al, bh
jnz  check_if_4_A_3
jz   isdigit_A_3


check_if_4_A_3:
mov bh, 34h
cmp al, bh
jnz  check_if_5_A_3
jz   isdigit_A_3


check_if_5_A_3:
mov bh, 35h
cmp al, bh
jnz  check_if_6_A_3
jz   isdigit_A_3


check_if_6_A_3:
mov bh, 36h
cmp al, bh
jnz  check_if_7_A_3
jz   isdigit_A_3

check_if_7_A_3:
mov bh, 37h
cmp al, bh
jnz  check_if_8_A_3
jz   isdigit_A_3


check_if_8_A_3:
mov bh, 38h
cmp al, bh
jnz  check_if_9_A_3
jz   isdigit_A_3

check_if_9_A_3:
mov bh, 39h
cmp al, bh
jnz  isletter_A_3
jz   isdigit_A_3



isdigit_A_3:; reg_Ax_1 + 5 is unit
sub al, 30h
add cl, al


jmp  finish_check_digits_and_letters_of_input_A

isletter_A_3:
sub al, 60h
add al, 9h
add cl, al


finish_check_digits_and_letters_of_input_A:

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
jnz error_Register_name

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
jnz error_Register_name

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
jnz error_Register_name

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
jnz error_Register_name


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
jnz error_Register_name

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
jnz error_Register_name

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
jnz error_Register_name

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
jz sizemismatch
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
jnz error_Register_name 

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
jz sizemismatch
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
jz sizemismatch
jnz error_Register_name
  
 
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
jz sizemismatch
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
jnz error_Register_name

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
jz sizemismatch
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
jz sizemismatch
jnz error_Register_name
  

another_register_name_check_4_5:
mov bl,73h ; ascii of s
cmp bl,[si]
jz check_si_5
jnz error_register_name

check_si_5:
mov bl,69h ;ascii of  i
inc si
cmp bl,[si]
jz sizemismatch
jnz check_sp_5 

check_sp_5:
mov bl,70h ;ascii of p
cmp bl,[si]
jz sizemismatch
jnz error_Register_name 

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
jz sizemismatch
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
jnz error_Register_name 

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
jz sizemismatch
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
jz sizemismatch
jnz error_Register_name
  
 
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
jz sizemismatch
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
jnz error_Register_name

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
jz sizemismatch
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
jz sizemismatch
jnz error_Register_name
  

another_register_name_check_4_6:
mov bl,73h ; ascii of s
cmp bl,[si]
jz check_si_6
jnz error_Register_name

check_si_6:
mov bl,69h ;ascii of  i
cmp bl,[si]
jz sizemismatch
jnz check_sp_6 

check_sp_6:
mov bl,70h ;ascii of p
cmp bl,[si]
jz sizemismatch
jnz error_Register_name



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;al_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;endofcode


;;;;;;;;;;;;;;;;;;;;;;;;;bx_sub_what;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;startofcode
bx_sub_what:
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

check_if_1_B:
mov bh, 31h
cmp al, bh
jnz  check_if_2_B
jz   isdigit_B

check_if_2_B:
mov bh, 32h
cmp al, bh
jnz  check_if_3_B
jz   isdigit_B

check_if_3_B:
mov bh, 33h
cmp al, bh
jnz  check_if_4_B
jz   isdigit_B

check_if_4_B:
mov bh, 34h
cmp al, bh
jnz  check_if_5_B
jz   isdigit_B


check_if_5_B:
mov bh, 35h
cmp al, bh
jnz  check_if_6_B
jz   isdigit_B


check_if_6_B:
mov bh, 36h
cmp al, bh
jnz  check_if_7_B
jz   isdigit_B


check_if_7_B:
mov bh, 37h
cmp al, bh
jnz  check_if_8_B
jz   isdigit_B


check_if_8_B:
mov bh, 38h
cmp al, bh
jnz  check_if_9_B
jz   isdigit_B


check_if_9_B:
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

isletter_B:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  check_2nd_char_B


check_2nd_char_B:
mov al, value + 3
mov bh, 30h
cmp al, bh
jnz  check_if_1_B_1
jz   isdigit_B_1


check_if_1_B_1:
mov bh, 31h
cmp al, bh
jnz  check_if_2_B_1
jz   isdigit_B_1


check_if_2_B_1:
mov bh, 32h
cmp al, bh
jnz  check_if_3_B_1
jz   isdigit_B_1


check_if_3_B_1:
mov bh, 33h
cmp al, bh
jnz  check_if_4_B_1
jz   isdigit_B_1


check_if_4_B_1:
mov bh, 34h
cmp al, bh
jnz  check_if_5_B_1
jz   isdigit_B_1


check_if_5_B_1:
mov bh, 35h
cmp al, bh
jnz  check_if_6_B_1
jz   isdigit_B_1


check_if_6_B_1:
mov bh, 36h
cmp al, bh
jnz  check_if_7_B_1
jz   isdigit_B_1


check_if_7_B_1:
mov bh, 37h
cmp al, bh
jnz  check_if_8_B_1
jz   isdigit_B_1


check_if_8_B_1:
mov bh, 38h
cmp al, bh
jnz  check_if_9_B_1
jz   isdigit_B_1


check_if_9_B_1:
mov bh, 39h
cmp al, bh
jnz  isletter_B_1
jz   isdigit_B_1



isdigit_B_1:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  check_3rd_char_B


isletter_B_1:
sub al, 60h
add al, 9h
add ch, al

jmp  check_3rd_char_B
check_3rd_char_B:
mov al, value + 4
mov bh, 30h
cmp al, bh
jnz  check_if_1_B_2
jz   isdigit_B_2

check_if_1_B_2:
mov bh, 31h
cmp al, bh
jnz  check_if_2_B_2
jz   isdigit_B_2

check_if_2_B_2:
mov bh, 32h
cmp al, bh
jnz  check_if_3_B_2
jz   isdigit_B_2

check_if_3_B_2:
mov bh, 33h
cmp al, bh
jnz  check_if_4_B_2
jz   isdigit_B_2

check_if_4_B_2:
mov bh, 34h
cmp al, bh
jnz  check_if_5_B_2
jz   isdigit_B_2


check_if_5_B_2:
mov bh, 35h
cmp al, bh
jnz  check_if_6_B_2
jz   isdigit_B_2

check_if_6_B_2:
mov bh, 36h
cmp al, bh
jnz  check_if_7_B_2
jz   isdigit_B_2


check_if_7_B_2:
mov bh, 37h
cmp al, bh
jnz  check_if_8_B_2
jz   isdigit_B_2


check_if_8_B_2:
mov bh, 38h
cmp al, bh
jnz  check_if_9_B_2
jz   isdigit_B_2


check_if_9_B_2:
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


isletter_B_2:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov cl, al


check_4th_char_B:

mov al, value + 5
mov bh, 30h
cmp al, bh
jnz  check_if_1_B_3
jz   isdigit_B_3


check_if_1_B_3:
mov bh, 31h
cmp al, bh
jnz  check_if_2_B_3
jz   isdigit_B_3


check_if_2_B_3:
mov bh, 32h
cmp al, bh
jnz  check_if_3_B_3
jz   isdigit_B_3


check_if_3_B_3:
mov bh, 33h
cmp al, bh
jnz  check_if_4_B_3
jz   isdigit_B_3


check_if_4_B_3:
mov bh, 34h
cmp al, bh
jnz  check_if_5_B_3
jz   isdigit_B_3


check_if_5_B_3:
mov bh, 35h
cmp al, bh
jnz  check_if_6_B_3
jz   isdigit_B_3


check_if_6_B_3:
mov bh, 36h
cmp al, bh
jnz  check_if_7_B_3
jz   isdigit_B_3

check_if_7_B_3:
mov bh, 37h
cmp al, bh
jnz  check_if_8_B_3
jz   isdigit_B_3


check_if_8_B_3:
mov bh, 38h
cmp al, bh
jnz  check_if_9_B_3
jz   isdigit_B_3

check_if_9_B_3:
mov bh, 39h
cmp al, bh
jnz  isletter_B_3
jz   isdigit_B_3



isdigit_B_3:; reg_Ax_1 + 5 is unit
sub al, 30h
add cl, al


jmp  finish_check_digits_and_letters_of_input_B

isletter_B_3:
sub al, 60h
add al, 9h
add cl, al


finish_check_digits_and_letters_of_input_B:

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
jnz another_compare_of_ax_1_7


bx_sub_ax:
mov ax, real_reg_bx_2
mov bx,real_reg_Ax_2
sub ax,bx
mov real_reg_bx_2,ax 
jmp continue 

another_compare_of_ax_1_7:
mov bl,68h ;ascii of h
cmp bl,[si]
jz sizemismatch
jnz another_compare_of_ax_2_7

another_compare_of_ax_2_7:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz sizemismatch
jnz error_register_name



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
mov real_reg_bx_2,ax
jmp continue

another_compare_of_bx_1_7:
mov bl,68h ;ascii of h
cmp bl,[si]
jz sizemismatch
jnz another_compare_of_bx_2_7

another_compare_of_bx_2_7:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz sizemismatch
jnz compare_BP_7

 


; to check if register is BP or not
compare_BP_7:
mov bl,70h ;ascii of p
cmp bl,[si]
jz bx_sub_BP
jnz error_register_name

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
jnz error_register_name

bx_sub_cx:
mov ax,real_reg_bx_2
mov bx,real_reg_cx_2
sub ax,bx 
mov real_reg_bx_2,ax
jmp continue 

another_compare_of_cx_1_7:
mov bl,68h ;ascii of h
cmp bl,[si]
jz sizemismatch
jnz another_compare_of_cx_2_7
 
jmp continue

another_compare_of_cx_2_7:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz sizemismatch
jnz error_register_name


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
mov real_reg_bx_2,ax
jmp continue 

another_compare_of_dx_1_7:
mov bl,68h ;ascii of h
cmp bl,[si]
jz sizemismatch
jnz another_compare_of_dx_2_7

another_compare_of_dx_2_7:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz sizemismatch
jnz Compare_DI_7

; to check if register is DI or not
compare_DI_7:
mov bl,69h ;ascii of i
cmp bl,[si]
jz bx_sub_DI
jnz error_register_name

bx_sub_DI:
mov ax,real_reg_bx_2
mov bx,real_reg_di_2
sub ax,bx 
mov real_reg_bx_2,ax
jmp continue  

another_register_name_check_4_7:
mov bl,73h ; ascii of s
cmp bl,[si]
jz check_si_7
jnz error_register_name

check_si_7:
mov bl,69h ;ascii of  i
cmp bl,[si]
jz bx_sub_si
jnz check_sp_7

bx_sub_si:
mov ax,real_reg_bx_2
mov bx,real_reg_si_2
sub ax,bx 
mov real_reg_bx_2,ax
jmp continue 

check_sp_7:
mov bl,70h ;ascii of p
cmp bl,[si]
jz bx_sub_sp
jnz error_register_name

bx_sub_sp:
mov ax,real_reg_bx_2
mov bx,real_reg_sp_2
sub ax,bx 
mov real_reg_bx_2,ax
jmp continue

;;;;;;;;;;;;;;;;;;;;;;;;bx_sub_what;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;endofcode
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
jz sizemismatch
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
jnz error_register_name 

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
jz sizemismatch
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
jz sizemismatch
jnz error_register_name
  
 
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
jz sizemismatch
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
jnz error_register_name

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
jz sizemismatch
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
jz sizemismatch
jnz error_register_name
  

another_register_name_check_4_8:
mov bl,73h ; ascii of s
cmp bl,[si]
jz check_si_8
jnz error_register_name

check_si_8:
mov bl,69h ;ascii of  i
cmp bl,[si]
jz sizemismatch
jnz check_sp_8 

check_sp_8:
mov bl,70h ;ascii of p
cmp bl,[si]
jz sizemismatch
jnz error_register_name


;;;;;;;;;;;;;;;;;;;;;;;bh_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;endofcode
bl_sub_?:
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
        jz getRegisterName_bl_sub_op2
        cmp ah,bl 
        jz getValue_bl_sub_op2
        
         
        
        
getValue_bl_sub_op2:
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
       jnz  check_if_1D
       jz   isdigitD
       
       check_if_1D:
       mov bh,31h
       cmp al,bh
       jnz  check_if_2D
       jz   isdigitD
       
        check_if_2D:
       mov bh,32h
       cmp al,bh
       jnz  check_if_3D
       jz   isdigitD 
       
        check_if_3D:
       mov bh,33h
       cmp al,bh
       jnz  check_if_4D
       jz   isdigitD
       
         check_if_4D:
       mov bh,34h
       cmp al,bh
       jnz  check_if_5D
       jz   isdigitD 
        
       
        check_if_5D:
       mov bh,35h
       cmp al,bh
       jnz  check_if_6D
       jz   isdigitD
       
	   
        check_if_6D:
       mov bh,36h
       cmp al,bh
       jnz  check_if_7D
       jz   isdigitD 
        
	
       check_if_7D:
       mov bh,37h
       cmp al,bh
       jnz  check_if_8D
       jz   isdigitD 
        
	
      check_if_8D:
       mov bh,38h
       cmp al,bh
       jnz  check_if_9D
       jz   isdigitD
       
	   
        check_if_9D:
       mov bh,39h
       cmp al,bh
       jnz  isletterD
       jz   isdigitD
       

       
       
        isdigitD:
       sub al,30h
       mov bl,10h
       mul bl
       mov ch,al
       
       jmp  check_2nd_charD
       
        isletterD:
       sub al,60h
       add al,9h
       mov bl,10h
       mul bl
       mov ch,al
       
       jmp  check_2nd_charD 
       
       
        check_2nd_charD:
       mov al,value2+3
       mov bh,30h
       cmp al,bh
       jnz  check_if_1D1_
       jz   isdigitD1_
       
	   
        check_if_1D1_:
       mov bh,31h
       cmp al,bh
       jnz  check_if_2D1_
       jz   isdigitD1_
       
	   
        check_if_2D1_:
       mov bh,32h
       cmp al,bh
       jnz  check_if_3D1_
       jz   isdigitD1_ 
       
	   
        check_if_3D1_:
       mov bh,33h
       cmp al,bh
       jnz  check_if_4D1_
       jz   isdigitD1_
        
	
        check_if_4D1_:
       mov bh,34h
       cmp al,bh
       jnz  check_if_5D1_
       jz   isdigitD1_ 
        
        
       check_if_5D1_:
       mov bh,35h
       cmp al,bh
       jnz  check_if_6D1_
       jz   isdigitD1_
       
	   
       check_if_6D1_:
       mov bh,36h
       cmp al,bh
       jnz  check_if_7D1_
       jz   isdigitD1_ 
        
		
       check_if_7D1_:
       mov bh,37h
       cmp al,bh
       jnz  check_if_8D1_
       jz   isdigitD1_ 
        
		
       check_if_8D1_:
       mov bh,38h
       cmp al,bh
       jnz  check_if_9D1_
       jz   isdigitD1_
       
	   
       check_if_9D1_:
       mov bh,39h
       cmp al,bh
       jnz  isletterD1_
       jz   isdigitD1_
       
       
       
        isdigitD1_: ;reg_Ax_1+3 is unit 
       sub al,30h
       add ch,al
       
       
       jmp  finish_check_digits_and_letters_of_inputD
       
	   
       isletterD1_:
       sub al,60h
       add al,9h
       add ch,al
       
       jmp  finish_check_digits_and_letters_of_inputD
        
       
       finish_check_digits_and_letters_of_inputD:
       
       mov ax,cx
     
       mov bh,ah
       mov bl,byte ptr real_reg_bx_2
       sub bl,bh
       mov byte ptr real_reg_bx_2,bl 
       
       jmp continue   
      




getRegisterName_bl_sub_op2:

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
jz AX_check_9
jnz another_register_name_checkA_1_8


AX_check_9:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz sizemismatch
jnz another_compareA_ax_1_8

another_compareA_ax_1_8:
mov bl,68h ;ascii of h
cmp bl,[si]
jz bl_sub_ah
jnz another_compareA_of_ax_2_8


bl_sub_ah:
mov ah,byte ptr real_reg_bx_2
mov bh,byte ptr real_reg_Ax_2+1
sub ah,bh
mov byte ptr real_reg_bx_2,ah 
jmp continue

another_compareA_of_ax_2_8:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz bl_sub_al
jnz error_register_name 

bl_sub_al:
mov ah, byte ptr real_reg_bx_2
mov bh,byte ptr real_reg_Ax_2
sub ah,bh
mov byte ptr real_reg_bx_2,ah 
jmp continue


another_register_name_checkA_1_8:
;check if register is bx          
mov si,offset [operand_2+2]
mov bl,62h  ;ascii of b 
cmp bl,[si]
jz bx_check_9
jnz another_register_name_checkA_2_8

bx_check_9:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz sizemismatch
jnz another_compareA_of_bx_1_8


another_compareA_of_bx_1_8:
mov bl,68h ;ascii of h
cmp bl,[si]
jz bl_sub_bh
jnz another_compareA_of_bx_2_8

bl_sub_bh:
mov ah,byte ptr real_reg_bx_2
mov bh,byte ptr real_reg_bx_2+1
sub ah,bh
mov byte ptr real_reg_bx_2,ah 
jmp continue


another_compareA_of_bx_2_8:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz bl_sub_bl
jnz compare_BP_9 


bl_sub_bl:
mov ah,byte ptr real_reg_bx_2
mov bh,byte ptr real_reg_bx_2
sub ah,bh
mov byte ptr real_reg_bx_2,ah 
jmp continue

; to check if register is BP or not
compare_BP_9:
mov bl,70h ;ascii of p
cmp bl,[si]
jz sizemismatch
jnz error_register_name
  
 
another_register_name_checkA_2_8: 
;check if register is cx         
mov si,offset [operand_2+2]
mov bl,63h  ;ascii of c 
cmp bl,[si]
jz cX_check_9
jnz another_register_name_checkA_3_8


cx_check_9:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz sizemismatch
jnz another_compareA_of_cx_1_8
 

another_compareA_of_cx_1_8:
mov bl,68h ;ascii of h
cmp bl,[si]
jz bl_sub_ch
jnz another_compareA_of_cx_2_8

bl_sub_ch:
mov ah,byte ptr real_reg_bx_2
mov bh,byte ptr real_reg_cx_2+1
sub ah,bh
mov byte ptr real_reg_bx_2,ah 
jmp continue
 

another_compareA_of_cx_2_8:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz bl_sub_cl
jnz error_register_name

bl_sub_cl:
mov ah,byte ptr real_reg_bx_2
mov bh,byte ptr real_reg_cx_2
sub ah,bh
mov byte ptr real_reg_bx_2,ah 
jmp continue


another_register_name_checkA_3_8:
;check if register is dx or dl or dh         
mov si,offset [operand_2+2]
mov bl,64h  ;ascii of d 
cmp bl,[si]
jz dX_check_9
jnz another_register_name_checkA_4_8


dx_check_9:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz sizemismatch
jnz another_compareA_of_dx_1_8
 

another_compareA_of_dx_1_8:
mov bl,68h ;ascii of h
cmp bl,[si]
jz bl_sub_dh
jnz another_compareA_of_dx_2_8

bl_sub_dh:
mov ah,byte ptr real_reg_bx_2
mov bh,byte ptr real_reg_dx_2+1
sub ah,bh
mov byte ptr real_reg_bx_2,ah 
jmp continue

another_compareA_of_dx_2_8:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz bl_sub_dl
jnz Compare_DI_9

bl_sub_dl:
mov ah,byte ptr real_reg_bx_2
mov bh,byte ptr real_reg_dx_2
sub ah,bh
mov byte ptr real_reg_bx_2,ah 
jmp continue

; to check if register is DI or not
compare_DI_9:
mov bl,69h ;ascii of i
cmp bl,[si]
jz sizemismatch
jnz error_register_name
  

another_register_name_checkA_4_8:
mov bl,73h ; ascii of s
cmp bl,[si]
jz check_si_9
jnz error_register_name

check_si_9:
mov bl,69h ;ascii of  i
inc si
cmp bl,[si]
jz sizemismatch
jnz check_sp_9 

check_sp_9:
mov bl,70h ;ascii of p
cmp bl,[si]
jz sizemismatch
jnz error_register_name

;;;;;;;;;;;;;;;;;;;;;;bl_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;endofcode

;;;;;;;;;;;;;;;;;;;;;;bp_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;startofcode
bp_sub_?:
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
        jz getRegisterName_bp_sub_op2
        cmp ah,bl 
        jz getValue_bp_sub_op2
        


getValue_bp_sub_op2:
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
jnz  checkbp_if_1_B
jz   isdigitbp_B

checkbp_if_1_B:
mov bh, 31h
cmp al, bh
jnz  checkbp_if_2_B
jz   isdigitbp_B

checkbp_if_2_B:
mov bh, 32h
cmp al, bh
jnz  checkbp_if_3_B
jz   isdigitbp_B

checkbp_if_3_B:
mov bh, 33h
cmp al, bh
jnz  checkbp_if_4_B
jz   isdigitbp_B

checkbp_if_4_B:
mov bh, 34h
cmp al, bh
jnz  checkbp_if_5_B
jz   isdigitbp_B


checkbp_if_5_B:
mov bh, 35h
cmp al, bh
jnz  checkbp_if_6_B
jz   isdigitbp_B


checkbp_if_6_B:
mov bh, 36h
cmp al, bh
jnz  checkbp_if_7_B
jz   isdigitbp_B


checkbp_if_7_B:
mov bh, 37h
cmp al, bh
jnz  checkbp_if_8_B
jz   isdigitbp_B


checkbp_if_8_B:
mov bh, 38h
cmp al, bh
jnz  checkbp_if_9_B
jz   isdigitbp_B


checkbp_if_9_B:
mov bh, 39h
cmp al, bh
jnz  isletterbp_B
jz   isdigitbp_B




isdigitbp_B:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkbp_2nd_char_B

isletterbp_B:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkbp_2nd_char_B


checkbp_2nd_char_B:
mov al, value + 3
mov bh, 30h
cmp al, bh
jnz  checkbp_if_1_B_1
jz   isdigitbp_B_1


checkbp_if_1_B_1:
mov bh, 31h
cmp al, bh
jnz  checkbp_if_2_B_1
jz   isdigitbp_B_1


checkbp_if_2_B_1:
mov bh, 32h
cmp al, bh
jnz  checkbp_if_3_B_1
jz   isdigitbp_B_1


checkbp_if_3_B_1:
mov bh, 33h
cmp al, bh
jnz  checkbp_if_4_B_1
jz   isdigitbp_B_1


checkbp_if_4_B_1:
mov bh, 34h
cmp al, bh
jnz  checkbp_if_5_B_1
jz   isdigitbp_B_1


checkbp_if_5_B_1:
mov bh, 35h
cmp al, bh
jnz  checkbp_if_6_B_1
jz   isdigitbp_B_1


checkbp_if_6_B_1:
mov bh, 36h
cmp al, bh
jnz  checkbp_if_7_B_1
jz   isdigitbp_B_1


checkbp_if_7_B_1:
mov bh, 37h
cmp al, bh
jnz  checkbp_if_8_B_1
jz   isdigitbp_B_1


checkbp_if_8_B_1:
mov bh, 38h
cmp al, bh
jnz  checkbp_if_9_B_1
jz   isdigitbp_B_1


checkbp_if_9_B_1:
mov bh, 39h
cmp al, bh
jnz  isletterbp_B_1
jz   isdigitbp_B_1



isdigitbp_B_1:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  checkbp_3rd_char_B


isletterbp_B_1:
sub al, 60h
add al, 9h
add ch, al

jmp  checkbp_3rd_char_B
checkbp_3rd_char_B:
mov al, value + 4
mov bh, 30h
cmp al, bh
jnz  checkbp_if_1_B_2
jz   isdigitbp_B_2

checkbp_if_1_B_2:
mov bh, 31h
cmp al, bh
jnz  checkbp_if_2_B_2
jz   isdigitbp_B_2

checkbp_if_2_B_2:
mov bh, 32h
cmp al, bh
jnz  checkbp_if_3_B_2
jz   isdigitbp_B_2

checkbp_if_3_B_2:
mov bh, 33h
cmp al, bh
jnz  checkbp_if_4_B_2
jz   isdigitbp_B_2

checkbp_if_4_B_2:
mov bh, 34h
cmp al, bh
jnz  checkbp_if_5_B_2
jz   isdigitbp_B_2


checkbp_if_5_B_2:
mov bh, 35h
cmp al, bh
jnz  checkbp_if_6_B_2
jz   isdigitbp_B_2

checkbp_if_6_B_2:
mov bh, 36h
cmp al, bh
jnz  checkbp_if_7_B_2
jz   isdigitbp_B_2


checkbp_if_7_B_2:
mov bh, 37h
cmp al, bh
jnz  checkbp_if_8_B_2
jz   isdigitbp_B_2


checkbp_if_8_B_2:
mov bh, 38h
cmp al, bh
jnz  checkbp_if_9_B_2
jz   isdigitbp_B_2


checkbp_if_9_B_2:
mov bh, 39h
cmp al, bh
jnz  isletterbp_B_2
jz   isdigitbp_B_2



isdigitbp_B_2:; reg_Ax_1 + 4 is tens
sub al, 30h
mov bl, 10h
mul bl
mov cl, al


jmp  checkbp_4th_char_B


isletterbp_B_2:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov cl, al


checkbp_4th_char_B:

mov al, value + 5
mov bh, 30h
cmp al, bh
jnz  checkbp_if_1_B_3
jz   isdigitbp_B_3


checkbp_if_1_B_3:
mov bh, 31h
cmp al, bh
jnz  checkbp_if_2_B_3
jz   isdigitbp_B_3


checkbp_if_2_B_3:
mov bh, 32h
cmp al, bh
jnz  checkbp_if_3_B_3
jz   isdigitbp_B_3


checkbp_if_3_B_3:
mov bh, 33h
cmp al, bh
jnz  checkbp_if_4_B_3
jz   isdigitbp_B_3


checkbp_if_4_B_3:
mov bh, 34h
cmp al, bh
jnz  checkbp_if_5_B_3
jz   isdigitbp_B_3


checkbp_if_5_B_3:
mov bh, 35h
cmp al, bh
jnz  checkbp_if_6_B_3
jz   isdigitbp_B_3


checkbp_if_6_B_3:
mov bh, 36h
cmp al, bh
jnz  checkbp_if_7_B_3
jz   isdigitbp_B_3

checkbp_if_7_B_3:
mov bh, 37h
cmp al, bh
jnz  checkbp_if_8_B_3
jz   isdigitbp_B_3


checkbp_if_8_B_3:
mov bh, 38h
cmp al, bh
jnz  checkbp_if_9_B_3
jz   isdigitbp_B_3

checkbp_if_9_B_3:
mov bh, 39h
cmp al, bh
jnz  isletterbp_B_3
jz   isdigitbp_B_3



isdigitbp_B_3:; reg_Ax_1 + 5 is unit
sub al, 30h
add cl, al


jmp  finish_checkbp_digits_and_letters_of_input_Bp

isletterbp_B_3:
sub al, 60h
add al, 9h
add cl, al


finish_checkbp_digits_and_letters_of_input_Bp:

mov ax, cx
 
       
  mov bx,real_reg_bp_2
  sub bx,ax
  mov real_reg_bp_2,bx     
  jmp continue 
 

getRegisterName_bp_sub_op2:

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



;checkbp if register is ax or al or ah         
mov si,offset [operand_2+2]
mov bl,61h  ;ascii of a 
cmp bl,[si]
jz AX_checkbp_7
jnz another_register_name_checkbp_1_7


Ax_checkbp_7:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz bp_sub_ax
jnz another_BPcompare_of_ax_1_7

bp_sub_ax:
mov ax, real_reg_bp_2
mov bp,real_reg_Ax_2
sub ax,bp
mov real_reg_bp_2,ax 
jmp continue 

another_BPcompare_of_ax_1_7:
mov bl,68h  ;ascii of h
cmp bl,[si]
jz sizemismatch
jnz another_BPcompare_of_ax_2_7

another_BPcompare_of_ax_2_7:
mov bl,6ch  ;ascii of l
cmp bl,[si]
jz sizemismatch
jnz error_register_name


another_register_name_checkbp_1_7:
;checkbp if register is bp          
mov si,offset [operand_2+2]
mov bl,62h  ;ascii of b 
cmp bl,[si]
jz bx_checkbp_7
jnz another_register_name_checkbp_2_7

bx_checkbp_7:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz bp_sub_bx
jnz another_BPcompare_of_bp_1_7


bp_sub_bx:
mov ax,real_reg_bp_2
mov bx,real_reg_bx_2
sub ax,bx 
mov real_reg_bp_2,ax
jmp continue

another_BPcompare_of_bp_1_7:
mov bl,68h ;ascii of h
cmp bl,[si]
jz sizemismatch
jnz another_BPcompare_of_bp_2_7

another_BPcompare_of_bp_2_7:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz sizemismatch
jnz BPcompare_BP_7

 


; to checkbp if register is BP or not
BPcompare_BP_7:
mov bl,70h ;ascii of p
cmp bl,[si]
jz bp_sub_BP
jnz error_register_name

bp_sub_BP:
mov ax,real_reg_bp_2
mov bx,real_reg_BP_2
sub ax,bx 
mov real_reg_bp_2,ax
jmp continue  
 
another_register_name_checkbp_2_7: 
;checkbp if register is cx         
mov si,offset [operand_2+2]
mov bl,63h  ;ascii of c 
cmp bl,[si]
jz cX_checkbp_7
jnz another_register_name_checkbp_3_7


cx_checkbp_7:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz bp_sub_cx
jnz error_register_name

bp_sub_cx:
mov ax,real_reg_bp_2
mov bx,real_reg_cx_2
sub ax,bx 
mov real_reg_bp_2,ax
jmp continue 

another_BPcompare_of_cx_1_7:
mov bl,68h ;ascii of h
cmp bl,[si]
jz sizemismatch
jnz another_BPcompare_of_cx_2_7
 
jmp continue

another_BPcompare_of_cx_2_7:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz sizemismatch
jnz error_register_name


another_register_name_checkbp_3_7:
;checkbp if register is dx or dl or dh         
mov si,offset [operand_2+2]
mov bl,64h  ;ascii of d 
cmp bl,[si]
jz dX_checkbp_7
jnz another_register_name_checkbp_4_7


dx_checkbp_7:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz bp_sub_dx
jnz another_BPcompare_of_dx_1_7

bp_sub_dx:
mov ax,real_reg_bp_2
mov bx,real_reg_dx_2
sub ax,bx
mov real_reg_bp_2,ax
jmp continue 

another_BPcompare_of_dx_1_7:
mov bl,68h ;ascii of h
cmp bl,[si]
jz sizemismatch
jnz another_BPcompare_of_dx_2_7

another_BPcompare_of_dx_2_7:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz sizemismatch
jnz BPcompare_DI_7

; to checkbp if register is DI or not
BPcompare_DI_7:
mov bl,69h ;ascii of i
cmp bl,[si]
jz bp_sub_DI
jnz error_register_name

bp_sub_DI:
mov ax,real_reg_bp_2
mov bx,real_reg_di_2
sub ax,bx 
mov real_reg_bp_2,ax
jmp continue  

another_register_name_checkbp_4_7:
mov bl,73h ; ascii of s
cmp bl,[si]
jz checkbp_si_7
jnz error_register_name

checkbp_si_7:
mov bl,69h ;ascii of  i
cmp bl,[si]
jz bp_sub_si
jnz checkbp_sp_7

bp_sub_si:
mov ax,real_reg_bp_2
mov bx,real_reg_si_2
sub ax,bx 
mov real_reg_bp_2,ax
jmp continue 

checkbp_sp_7:
mov bl,70h ;ascii of p
cmp bl,[si]
jz bp_sub_sp
jnz error_register_name

bp_sub_sp:
mov ax,real_reg_bp_2
mov bx,real_reg_sp_2
sub ax,bx 
mov real_reg_bp_2,ax
jmp continue

;;;;;;;;;;;;;;;;;;;;;bp_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;endofcode
;;;;;;;;;;;;;;;;;;;;;;cx_sub_what;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;startofcode
cx_sub_what:
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
        jz getRegisterName_cx_sub_op2
        cmp ah,bl 
        jz getValue_cx_sub_op2
        


getValue_cx_sub_op2:
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
jnz  check_if_cx_1_A
jz   isdigit_cx_A

check_if_cx_1_A:
mov bh, 31h
cmp al, bh
jnz  check_if_cx_2_A
jz   isdigit_cx_A

check_if_cx_2_A:
mov bh, 32h
cmp al, bh
jnz  check_if_cx_3_A
jz   isdigit_cx_A

check_if_cx_3_A:
mov bh, 33h
cmp al, bh
jnz  check_if_cx_4_A
jz   isdigit_cx_A

check_if_cx_4_A:
mov bh, 34h
cmp al, bh
jnz  check_if_cx_5_A
jz   isdigit_cx_A


check_if_cx_5_A:
mov bh, 35h
cmp al, bh
jnz  check_if_cx_6_A
jz   isdigit_cx_A


check_if_cx_6_A:
mov bh, 36h
cmp al, bh
jnz  check_if_cx_7_A
jz   isdigit_cx_A


check_if_cx_7_A:
mov bh, 37h
cmp al, bh
jnz  check_if_cx_8_A
jz   isdigit_cx_A


check_if_cx_8_A:
mov bh, 38h
cmp al, bh
jnz  check_if_cx_9_A
jz   isdigit_cx_A


check_if_cx_9_A:
mov bh, 39h
cmp al, bh
jnz   isletter_cx_A
jz   isdigit_cx_A




isdigit_cx_A:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  check_2nd_char_cx_A

 isletter_cx_A:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  check_2nd_char_cx_A


check_2nd_char_cx_A:
mov al, value + 3
mov bh, 30h
cmp al, bh
jnz  check_if_cx_1_A_1
jz   isdigit_cx_A_1


check_if_cx_1_A_1:
mov bh, 31h
cmp al, bh
jnz  check_if_cx_2_A_1
jz   isdigit_cx_A_1


check_if_cx_2_A_1:
mov bh, 32h
cmp al, bh
jnz  check_if_cx_3_A_1
jz   isdigit_cx_A_1


check_if_cx_3_A_1:
mov bh, 33h
cmp al, bh
jnz  check_if_cx_4_A_1
jz   isdigit_cx_A_1


check_if_cx_4_A_1:
mov bh, 34h
cmp al, bh
jnz  check_if_cx_5_A_1
jz   isdigit_cx_A_1


check_if_cx_5_A_1:
mov bh, 35h
cmp al, bh
jnz  check_if_cx_6_A_1
jz   isdigit_cx_A_1


check_if_cx_6_A_1:
mov bh, 36h
cmp al, bh
jnz  check_if_cx_7_A_1
jz   isdigit_cx_A_1


check_if_cx_7_A_1:
mov bh, 37h
cmp al, bh
jnz  check_if_cx_8_A_1
jz   isdigit_cx_A_1


check_if_cx_8_A_1:
mov bh, 38h
cmp al, bh
jnz  check_if_cx_9_A_1
jz   isdigit_cx_A_1


check_if_cx_9_A_1:
mov bh, 39h
cmp al, bh
jnz   isletter_cx_A_1
jz   isdigit_cx_A_1



isdigit_cx_A_1:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  check_3rd_char_cx_A


 isletter_cx_A_1:
sub al, 60h
add al, 9h
add ch, al

jmp  check_3rd_char_cx_A
check_3rd_char_cx_A:
mov al, value + 4
mov bh, 30h
cmp al, bh
jnz  check_if_cx_1_A_2
jz   isdigit_cx_A_2

check_if_cx_1_A_2:
mov bh, 31h
cmp al, bh
jnz  check_if_cx_2_A_2
jz   isdigit_cx_A_2

check_if_cx_2_A_2:
mov bh, 32h
cmp al, bh
jnz  check_if_cx_3_A_2
jz   isdigit_cx_A_2

check_if_cx_3_A_2:
mov bh, 33h
cmp al, bh
jnz  check_if_cx_4_A_2
jz   isdigit_cx_A_2

check_if_cx_4_A_2:
mov bh, 34h
cmp al, bh
jnz  check_if_cx_5_A_2
jz   isdigit_cx_A_2


check_if_cx_5_A_2:
mov bh, 35h
cmp al, bh
jnz  check_if_cx_6_A_2
jz   isdigit_cx_A_2

check_if_cx_6_A_2:
mov bh, 36h
cmp al, bh
jnz  check_if_cx_7_A_2
jz   isdigit_cx_A_2


check_if_cx_7_A_2:
mov bh, 37h
cmp al, bh
jnz  check_if_cx_8_A_2
jz   isdigit_cx_A_2


check_if_cx_8_A_2:
mov bh, 38h
cmp al, bh
jnz  check_if_cx_9_A_2
jz   isdigit_cx_A_2


check_if_cx_9_A_2:
mov bh, 39h
cmp al, bh
jnz   isletter_cx_A_2
jz   isdigit_cx_A_2



isdigit_cx_A_2:; reg_Ax_1 + 4 is tens
sub al, 30h
mov bl, 10h
mul bl
mov cl, al


jmp  cx_check_4th_char_cx_A


 isletter_cx_A_2:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov cl, al


cx_check_4th_char_cx_A:

mov al, value + 5
mov bh, 30h
cmp al, bh
jnz  check_if_cx_1_A_3
jz   isdigit_cx_A_3


check_if_cx_1_A_3:
mov bh, 31h
cmp al, bh
jnz  check_if_cx_2_A_3
jz   isdigit_cx_A_3


check_if_cx_2_A_3:
mov bh, 32h
cmp al, bh
jnz  check_if_cx_3_A_3
jz   isdigit_cx_A_3


check_if_cx_3_A_3:
mov bh, 33h
cmp al, bh
jnz  check_if_cx_4_A_3
jz   isdigit_cx_A_3


check_if_cx_4_A_3:
mov bh, 34h
cmp al, bh
jnz  check_if_cx_5_A_3
jz   isdigit_cx_A_3


check_if_cx_5_A_3:
mov bh, 35h
cmp al, bh
jnz  check_if_cx_6_A_3
jz   isdigit_cx_A_3


check_if_cx_6_A_3:
mov bh, 36h
cmp al, bh
jnz  check_if_cx_7_A_3
jz   isdigit_cx_A_3

check_if_cx_7_A_3:
mov bh, 37h
cmp al, bh
jnz  check_if_cx_8_A_3
jz   isdigit_cx_A_3


check_if_cx_8_A_3:
mov bh, 38h
cmp al, bh
jnz  check_if_cx_9_A_3
jz   isdigit_cx_A_3

check_if_cx_9_A_3:
mov bh, 39h
cmp al, bh
jnz   isletter_cx_A_3
jz   isdigit_cx_A_3



isdigit_cx_A_3:; reg_Ax_1 + 5 is unit
sub al, 30h
add cl, al


jmp  finish_check_digits_and_letters_of_input_cx

 isletter_cx_A_3:
sub al, 60h
add al, 9h
add cl, al


finish_check_digits_and_letters_of_input_cx:

mov ax, cx
 
       
  mov bx,real_reg_cx_2
  sub bx,ax
  mov real_reg_cx_2,bx     
  jmp continue 
 

getRegisterName_cx_sub_op2:
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
jz AX_cx_check_4
jnz another_register_name_check_cx_cx_1_4


Ax_cx_check_4:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz cx_sub_ax
jnz another_compare_cx_of_ax_1_7


cx_sub_ax:
mov ax, real_reg_cx_2
mov bx,real_reg_ax_2
sub ax,bx
mov real_reg_cx_2,ax 
jmp continue 

another_compare_cx_of_ax_1_7:
mov bl,68h ;ascii of h
cmp bl,[si]
jz sizemismatch
jnz another_compare_cx_of_ax_2_7

another_compare_cx_of_ax_2_7:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz sizemismatch
jnz another_register_name_check_cx_cx_1_4



another_register_name_check_cx_cx_1_4:
;check if register is bx          
mov si,offset [operand_2+2]
mov bl,62h  ;ascii of b 
cmp bl,[si]
jz bx_cx_check_4
jnz another_register_name_check_cx_2_4

bx_cx_check_4:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz cx_sub_bx
jnz another_compare_cx_of_cx_bx_1_4


cx_sub_bx:
mov ax,real_reg_cx_2
mov bx,real_reg_bx_2
sub ax,bx 
mov real_reg_cx_2,ax
jmp continue

another_compare_cx_of_cx_bx_1_4:
mov bl,68h ;ascii of h
cmp bl,[si]
jz sizemismatch
jnz another_compare_cx_of_cx_bx_2_4

another_compare_cx_of_cx_bx_2_4:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz sizemismatch
jnz compare_cx_BP_4

 


; to check if register is BP or not
compare_cx_BP_4:
mov bl,70h ;ascii of p
cmp bl,[si]
jz cx_sub_BP
jnz error_register_name

cx_sub_BP:
mov ax,real_reg_cx_2
mov bx,real_reg_BP_2
sub ax,bx 
mov real_reg_cx_2,ax
jmp continue  
 
another_register_name_check_cx_2_4: 
;check if register is cx         
mov si,offset [operand_2+2]
mov bl,63h  ;ascii of c 
cmp bl,[si]
jz cX_cx_check_4
jnz another_register_name_check_cx_3_4


cx_cx_check_4:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz cx_sub_cx
jnz error_register_name

cx_sub_cx:
mov ax,real_reg_cx_2
mov bx,real_reg_cx_2
sub ax,bx 
mov real_reg_cx_2,ax
jmp continue 

another_compare_cx_of_cx_cx_1_4:
mov bl,68h ;ascii of h
cmp bl,[si]
jz sizemismatch
jnz another_compare_cx_of_cx_cx_2_4
 
jmp continue

another_compare_cx_of_cx_cx_2_4:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz sizemismatch
jnz error_register_name


another_register_name_check_cx_3_4:
;check if register is dx or dl or dh         
mov si,offset [operand_2+2]
mov bl,64h  ;ascii of d 
cmp bl,[si]
jz dX_cx_check_4
jnz another_register_name_cx_check_4_4


dx_cx_check_4:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz cx_sub_dx
jnz another_compare_cx_of_cx_dx_1_4

cx_sub_dx:
mov ax,real_reg_cx_2
mov bx,real_reg_dx_2
sub ax,bx 
mov real_reg_cx_2,ax
jmp continue 

another_compare_cx_of_cx_dx_1_4:
mov bl,68h ;ascii of h
cmp bl,[si]
jz sizemismatch
jnz another_compare_cx_of_cx_dx_2_4

another_compare_cx_of_cx_dx_2_4:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz sizemismatch
jnz compare_cx_DI_4

; to check if register is DI or not
compare_cx_DI_4:
mov bl,69h ;ascii of i
cmp bl,[si]
jz cx_sub_DI
jnz error_register_name

cx_sub_DI:
mov ax,real_reg_cx_2
mov bx,real_reg_di_2
sub ax,bx 
mov real_reg_cx_2,ax
jmp continue  

another_register_name_cx_check_4_4:
mov bl,73h ; ascii of s
cmp bl,[si]
jz check_si_4
jnz error_register_name

check_cx_si_4:
mov bl,69h ;ascii of  i
inc si
cmp bl,[si]
jz cx_sub_si
jnz check_cx_sp_4

cx_sub_si:
mov ax,real_reg_cx_2
mov bx,real_reg_si_2
sub ax,bx 
mov real_reg_cx_2,ax
jmp continue 

check_cx_sp_4:
mov bl,70h ;ascii of p
cmp bl,[si]
jz cx_sub_sp
jnz error_register_name

cx_sub_sp:
mov ax,real_reg_cx_2
mov bx,real_reg_sp_2
sub ax,bx 
mov real_reg_cx_2,ax
jmp continue
;;;;;;;;;;;;;;;;;;;;;;cx_sub_what;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;endofcode

;;;;;;;;;;;;;;;;;;;;;;ch_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;startofcode
ch_sub_?:
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
        jz getRegisterName_ch_sub_op2
        cmp ah,bl 
        jz getValue_ch_sub_op2
        
         
        
        
getValue_ch_sub_op2:
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
       jnz  check_if_ch_1C
       jz   isdigitch
       
       check_if_ch_1C:
       mov bh,31h
       cmp al,bh
       jnz  check_if_ch_2C
       jz   isdigitch
       
        check_if_ch_2C:
       mov bh,32h
       cmp al,bh
       jnz  check_if_ch_3C
       jz   isdigitch 
       
        check_if_ch_3C:
       mov bh,33h
       cmp al,bh
       jnz  check_if_ch_4C
       jz   isdigitch
       
         check_if_ch_4C:
       mov bh,34h
       cmp al,bh
       jnz  check_if_ch_5C
       jz   isdigitch 
        
       
        check_if_ch_5C:
       mov bh,35h
       cmp al,bh
       jnz  check_if_ch_6C
       jz   isdigitch
       
	   
        check_if_ch_6C:
       mov bh,36h
       cmp al,bh
       jnz  check_if_ch_7C
       jz   isdigitch 
        
	
       check_if_ch_7C:
       mov bh,37h
       cmp al,bh
       jnz  check_if_ch_8C
       jz   isdigitch 
        
	
      check_if_ch_8C:
       mov bh,38h
       cmp al,bh
       jnz  check_if_ch_9C
       jz   isdigitch
       
	   
        check_if_ch_9C:
       mov bh,39h
       cmp al,bh
       jnz  isletterB
       jz   isdigitch
       

       
       
        isdigitch:
       sub al,30h
       mov bl,10h
       mul bl
       mov ch,al
       
       jmp  check_2nd_charch
       
        isletterchh:
       sub al,60h
       add al,9h
       mov bl,10h
       mul bl
       mov ch,al
       
       jmp  check_2nd_charch 
       
       
        check_2nd_charch:
       mov al,value2+3
       mov bh,30h
       cmp al,bh
       jnz  check_if_ch_1C1_
       jz   isdigitch1_
       
	   
        check_if_ch_1C1_:
       mov bh,31h
       cmp al,bh
       jnz  check_if_ch_2C1_
       jz   isdigitch1_
       
	   
        check_if_ch_2C1_:
       mov bh,32h
       cmp al,bh
       jnz  check_if_ch_3C1_
       jz   isdigitch1_ 
       
	   
        check_if_ch_3C1_:
       mov bh,33h
       cmp al,bh
       jnz  check_if_ch_4C1_
       jz   isdigitch1_
        
	
        check_if_ch_4C1_:
       mov bh,34h
       cmp al,bh
       jnz  check_if_ch_5C1_
       jz   isdigitch1_ 
        
        
       check_if_ch_5C1_:
       mov bh,35h
       cmp al,bh
       jnz  check_if_ch_6C1_
       jz   isdigitch1_
       
	   
       check_if_ch_6C1_:
       mov bh,36h
       cmp al,bh
       jnz  check_if_ch_7C1_
       jz   isdigitch1_ 
        
		
       check_if_ch_7C1_:
       mov bh,37h
       cmp al,bh
       jnz  check_if_ch_8C1_
       jz   isdigitch1_ 
        
		
       check_if_ch_8C1_:
       mov bh,38h
       cmp al,bh
       jnz  check_if_ch_9C1_
       jz   isdigitch1_
       
	   
       check_if_ch_9C1_:
       mov bh,39h
       cmp al,bh
       jnz  isletterB1_
       jz   isdigitch1_
       
       
       
        isdigitch1_: ;reg_Ax_1+3 is unit 
       sub al,30h
       add ch,al
       
       
       jmp  finish_ch_check_digits_and_letters_of_inputch
       
	   
       isletterch1_:
       sub al,60h
       add al,9h
       add ch,al
       
       jmp  finish_ch_check_digits_and_letters_of_inputch
        
       
       finish_ch_check_digits_and_letters_of_inputch:
       
       mov ax,cx
     
       mov bh,ah
       mov bl,byte ptr real_reg_cx_2+1
       sub bl,bh
       mov byte ptr real_reg_cx_2+1,bl 
       
       jmp continue   
      




getRegisterName_ch_sub_op2:

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
jz AX_ch_check_8
jnz another_register_name_ch_check_1_8


Ax_ch_check_8:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz sizemismatch
jnz another_ch_compare_ax_1_8

another_ch_compare_ax_1_8:
mov bl,68h ;ascii of h
cmp bl,[si]
jz ch_sub_ah
jnz another_ch_compare_of_ax_2_8


ch_sub_ah:
mov ah,byte ptr real_reg_cx_2+1
mov bh,byte ptr real_reg_Ax_2+1
sub ah,bh
mov byte ptr real_reg_cx_2+1,ah 
jmp continue

another_ch_compare_of_ax_2_8:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz ch_sub_al
jnz error_register_name 

ch_sub_al:
mov ah, byte ptr real_reg_cx_2+1
mov bh,byte ptr real_reg_Ax_2
sub ah,bh
mov byte ptr real_reg_cx_2+1,ah 
jmp continue


another_register_name_ch_check_1_8:
;check if register is bx          
mov si,offset [operand_2+2]
mov bl,62h  ;ascii of b 
cmp bl,[si]
jz bx_ch_check_8
jnz another_register_name_ch_check_2_8

bx_ch_check_8:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz sizemismatch
jnz another_ch_compare_of_bx_1_8


another_ch_compare_of_bx_1_8:
mov bl,68h ;ascii of h
cmp bl,[si]
jz ch_sub_bh
jnz another_ch_compare_of_bx_2_8

ch_sub_bh:
mov ah,byte ptr real_reg_cx_2+1
mov bh,byte ptr real_reg_bx_2+1
sub ah,bh
mov byte ptr real_reg_cx_2+1,ah 
jmp continue


another_ch_compare_of_bx_2_8:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz ch_sub_bl
jnz chcompare_BP_8 


ch_sub_bl:
mov ah,byte ptr real_reg_cx_2+1
mov bh,byte ptr real_reg_bx_2
sub ah,bh
mov byte ptr real_reg_cx_2+1,ah 
jmp continue

; to check if register is BP or not
chcompare_BP_8:
mov bl,70h ;ascii of p
cmp bl,[si]
jz sizemismatch
jnz error_register_name
  
 
another_register_name_ch_check_2_8: 
;check if register is cx         
mov si,offset [operand_2+2]
mov bl,63h  ;ascii of c 
cmp bl,[si]
jz cX_ch_check_8
jnz another_register_name_ch_check_3_8


cx_ch_check_8:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz sizemismatch
jnz another_ch_compare_of_cx_1_8
 

another_ch_compare_of_cx_1_8:
mov bl,68h ;ascii of h
cmp bl,[si]
jz ch_sub_ch
jnz another_ch_compare_of_cx_2_8

ch_sub_ch:
mov ah,byte ptr real_reg_cx_2+1
mov bh,byte ptr real_reg_cx_2+1
sub ah,bh
mov byte ptr real_reg_cx_2+1,ah 
jmp continue
 

another_ch_compare_of_cx_2_8:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz ch_sub_cl
jnz error_register_name

ch_sub_cl:
mov ah,byte ptr real_reg_cx_2+1
mov bh,byte ptr real_reg_cx_2
sub ah,bh
mov byte ptr real_reg_cx_2+1,ah 
jmp continue


another_register_name_ch_check_3_8:
;check if register is dx or dl or dh         
mov si,offset [operand_2+2]
mov bl,64h  ;ascii of d 
cmp bl,[si]
jz dX_ch_check_8
jnz another_register_name_ch_check_4_8


dx_ch_check_8:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz sizemismatch
jnz another_ch_compare_of_dx_1_8
 

another_ch_compare_of_dx_1_8:
mov bl,68h ;ascii of h
cmp bl,[si]
jz ch_sub_dh
jnz another_ch_compare_of_dx_2_8

ch_sub_dh:
mov ah,byte ptr real_reg_cx_2+1
mov bh,byte ptr real_reg_dx_2+1
sub ah,bh
mov byte ptr real_reg_cx_2+1,ah 
jmp continue

another_ch_compare_of_dx_2_8:
mov bl,6ch ; ascii of l
cmp bl ,[si]
jz ch_sub_dl
jnz Compare_ch_DI_8

ch_sub_dl:
mov ah,byte ptr real_reg_cx_2+1
mov bh,byte ptr real_reg_dx_2
sub ah,bh
mov byte ptr real_reg_cx_2+1,ah 
jmp continue

; to check if register is DI or not
compare_ch_DI_8:
mov bl,69h ;ascii of i
cmp bl,[si]
jz sizemismatch
jnz error_register_name
  

another_register_name_ch_check_4_8:
mov bl,73h ; ascii of s
cmp bl,[si]
jz check_ch_si_8
jnz error_register_name

check_ch_si_8:
mov bl,69h ;ascii of  i
inc si
cmp bl,[si]
jz sizemismatch
jnz check_ch_sp_8 

check_ch_sp_8:
mov bl,70h ;ascii of p
cmp bl,[si]
jz sizemismatch
jnz error_register_name
;;;;;;;;;;;;;;;;;;;;;ch_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;endoscode

;;;;;;;;;;;;;;;;;cl_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;startofcode
cl_sub_?:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset value_OR_register
int 21h
; receive input from user
mov ah, 0AH
mov dx, offset vORr
int 21h
mov ah, vORr + 2
mov al, 72h; ascii of r
mov bl, 76h; ascii of v
cmp ah, al
jz getRegisterName_cl_sub_op2
cmp ah, bl
jz getValue_cl_sub_op2
getValue_cl_sub_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_value
int 21h
mov ah, 0AH
mov dx, offset value2
int 21h
mov al, value2 + 2
mov bh, 30h
cmp al, bh
jnz  checkSubCl_if_1_
jz   isdigitSubCl_

checkSubCl_if_1_:
mov bh, 31h
cmp al, bh
jnz  checkSubCl_if_2_
jz   isdigitSubCl_

checkSubCl_if_2_:
mov bh, 32h
cmp al, bh
jnz  checkSubCl_if_3_
jz   isdigitSubCl_

checkSubCl_if_3_:
mov bh, 33h
cmp al, bh
jnz  checkSubCl_if_4_
jz   isdigitSubCl_

checkSubCl_if_4_:
mov bh, 34h
cmp al, bh
jnz  checkSubCl_if_5_
jz   isdigitSubCl_


checkSubCl_if_5_:
mov bh, 35h
cmp al, bh
jnz  checkSubCl_if_6_
jz   isdigitSubCl_


checkSubCl_if_6_:
mov bh, 36h
cmp al, bh
jnz  checkSubCl_if_7_
jz   isdigitSubCl_


checkSubCl_if_7_:
mov bh, 37h
cmp al, bh
jnz  checkSubCl_if_8_
jz   isdigitSubCl_


checkSubCl_if_8_:
mov bh, 38h
cmp al, bh
jnz  checkSubCl_if_9_
jz   isdigitSubCl_


checkSubCl_if_9_:
mov bh, 39h
cmp al, bh
jnz  isletterSubCl_
jz   isdigitSubCl_




isdigitSubCl_:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkSubCl_2nd_char_

isletterSubCl_:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkSubCl_2nd_char_


checkSubCl_2nd_char_:
mov al, value2 + 3
mov bh, 30h
cmp al, bh
jnz  checkSubCl_if_1_1_
jz   isdigitSubCl_1_


checkSubCl_if_1_1_:
mov bh, 31h
cmp al, bh
jnz  checkSubCl_if_2_1_
jz   isdigitSubCl_1_


checkSubCl_if_2_1_:
mov bh, 32h
cmp al, bh
jnz  checkSubCl_if_3_1_
jz   isdigitSubCl_1_


checkSubCl_if_3_1_:
mov bh, 33h
cmp al, bh
jnz  checkSubCl_if_4_1_
jz   isdigitSubCl_1_


checkSubCl_if_4_1_:
mov bh, 34h
cmp al, bh
jnz  checkSubCl_if_5_1_
jz   isdigitSubCl_1_


checkSubCl_if_5_1_:
mov bh, 35h
cmp al, bh
jnz  checkSubCl_if_6_1_
jz   isdigitSubCl_1_


checkSubCl_if_6_1_:
mov bh, 36h
cmp al, bh
jnz  checkSubCl_if_7_1_
jz   isdigitSubCl_1_


checkSubCl_if_7_1_:
mov bh, 37h
cmp al, bh
jnz  checkSubCl_if_8_1_
jz   isdigitSubCl_1_


checkSubCl_if_8_1_:
mov bh, 38h
cmp al, bh
jnz  checkSubCl_if_9_1_
jz   isdigitSubCl_1_


checkSubCl_if_9_1_:
mov bh, 39h
cmp al, bh
jnz  isletterSubCl_1_
jz   isdigitSubCl_1_



isdigitSubCl_1_:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  finish_checkSubCl_digits_and_letters_of_input_


isletterSubCl_1_:
sub al, 60h
add al, 9h
add ch, al

jmp  finish_checkSubCl_digits_and_letters_of_input_
finish_checkSubCl_digits_and_letters_of_input_:
mov ax, cx
mov dl,byte ptr real_reg_cx_2
sub dl,ah
mov byte ptr real_reg_cx_2,dl
jmp continue 
getRegisterName_cl_sub_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_operand_2
int 21h
; receive input from user
mov ah, 0AH
mov dx, offset operand_2
int 21h

; check if register is ax or al or ah
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkClSub_8
jnz another_register_name_checkClSub_1_8


Ax_checkClSub_8 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareClSub_ax_1_8

another_compareClSub_ax_1_8 :
mov bl, 68h; ascii of h
cmp bl, [si]
jz cl_sub_ah
jnz another_compareClSub_of_ax_2_8


cl_sub_ah :
mov ah, byte ptr real_reg_cx_2
mov bh, byte ptr real_reg_Ax_2 + 1
sub ah, bh
mov byte ptr real_reg_cx_2, ah
jmp continue

another_compareClSub_of_ax_2_8 :
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz cl_sub_al
	jnz error_register_name

	cl_sub_al :
mov ah, byte ptr real_reg_cx_2
mov bh, byte ptr real_reg_Ax_2
sub ah, bh
mov byte ptr real_reg_cx_2, ah
jmp continue


another_register_name_checkClSub_1_8 :
	; check if register is bx
	mov si, offset[operand_2 + 2]
	mov bl, 62h; ascii of b
	cmp bl, [si]
	jz bx_checkClSub_8
	jnz another_register_name_checkClSub_2_8

	bx_checkClSub_8 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareClSub_of_bx_1_8


another_compareClSub_of_bx_1_8 :
mov bl, 68h; ascii of h
cmp bl, [si]
jz cl_sub_bh
jnz another_compareClSub_of_bx_2_8

cl_sub_bh :
mov ah, byte ptr real_reg_cx_2
mov bh, byte ptr real_reg_bx_2 + 1
sub ah, bh
mov byte ptr real_reg_cx_2, ah
jmp continue


another_compareClSub_of_bx_2_8 :
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz cl_sub_bl
	jnz clcompare_BP_8


	cl_sub_bl :
mov ah, byte ptr real_reg_cx_2
mov bh, byte ptr real_reg_bx_2
sub ah, bh
mov byte ptr real_reg_cx_2, ah
jmp continue

; to check if register is BP or not
clcompare_BP_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkClSub_2_8 :
; check if register is cx
mov si, offset[operand_2 + 2]
mov bl, 63h; ascii of c
cmp bl, [si]
jz cX_checkClSub_8
jnz another_register_name_checkClSub_3_8


cx_checkClSub_8 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareClSub_of_cx_1_8


another_compareClSub_of_cx_1_8 :
mov bl, 68h; ascii of h
cmp bl, [si]
jz cl_sub_ch
jnz another_compareClSub_of_cx_2_8

cl_sub_ch :
mov ah, byte ptr real_reg_cx_2
mov bh, byte ptr real_reg_cx_2 + 1
sub ah, bh
mov byte ptr real_reg_cx_2, ah
jmp continue


another_compareClSub_of_cx_2_8 :
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz cl_sub_cl
	jnz error_register_name

	cl_sub_cl :
mov ah, byte ptr real_reg_cx_2
mov bh, byte ptr real_reg_cx_2
sub ah, bh
mov byte ptr real_reg_cx_2, ah
jmp continue


another_register_name_checkClSub_3_8 :
	; check if register is dx or dl or dh
	mov si, offset[operand_2 + 2]
	mov bl, 64h; ascii of d
	cmp bl, [si]
	jz dX_checkClSub_8
	jnz another_register_name_checkClSub_4_8


	dx_checkClSub_8 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareClSub_of_dx_1_8


another_compareClSub_of_dx_1_8 :
mov bl, 68h; ascii of h
cmp bl, [si]
jz cl_sub_dh
jnz another_compareClSub_of_dx_2_8

cl_sub_dh :
mov ah, byte ptr real_reg_cx_2
mov bh, byte ptr real_reg_dx_2 + 1
sub ah, bh
mov byte ptr real_reg_cx_2, ah
jmp continue

another_compareClSub_of_dx_2_8 :
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz cl_sub_dl
	jnz Compare_cl_DI_8

	cl_sub_dl :
mov ah, byte ptr real_reg_cx_2
mov bh, byte ptr real_reg_dx_2
sub ah, bh
mov byte ptr real_reg_cx_2, ah
jmp continue

; to check if register is DI or not
compare_cl_DI_8:
mov bl, 69h; ascii of i
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkClSub_4_8 :
mov bl, 73h; ascii of s
cmp bl, [si]
jz check_cl_si_8
jnz error_register_name

check_cl_si_8 :
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz sizemismatch
jnz check_ch_sp_8

check_cl_sp_8 :
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_register_name
;;;;;;;;;;;;;cl_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;endOfcode
;;;;;;;;;;;;dh_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;startofcode
dh_sub_?:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset value_OR_register
int 21h
; receive input from user
mov ah, 0AH
mov dx, offset vORr
int 21h
mov ah, vORr + 2
mov al, 72h; ascii of r
mov bl, 76h; ascii of v
cmp ah, al
jz getRegisterName_dh_sub_op2
cmp ah, bl
jz getValue_dh_sub_op2

getValue_dh_sub_op2:
mov ah, 9
mov dx, offset newline
int 21h

mov ah, 9
mov dx, offset Mess_value
int 21h

mov ah, 0AH
mov dx, offset value2
int 21h

mov al, value2 + 2
mov bh, 30h
cmp al, bh
jnz  checkSubDh_if_1_
jz   isdigitSubDh_

checkSubDh_if_1_:
mov bh, 31h
cmp al, bh
jnz  checkSubDh_if_2_
jz   isdigitSubDh_

checkSubDh_if_2_:
mov bh, 32h
cmp al, bh
jnz  checkSubDh_if_3_
jz   isdigitSubDh_

checkSubDh_if_3_:
mov bh, 33h
cmp al, bh
jnz  checkSubDh_if_4_
jz   isdigitSubDh_

checkSubDh_if_4_:
mov bh, 34h
cmp al, bh
jnz  checkSubDh_if_5_
jz   isdigitSubDh_


checkSubDh_if_5_:
mov bh, 35h
cmp al, bh
jnz  checkSubDh_if_6_
jz   isdigitSubDh_


checkSubDh_if_6_:
mov bh, 36h
cmp al, bh
jnz  checkSubDh_if_7_
jz   isdigitSubDh_


checkSubDh_if_7_:
mov bh, 37h
cmp al, bh
jnz  checkSubDh_if_8_
jz   isdigitSubDh_


checkSubDh_if_8_:
mov bh, 38h
cmp al, bh
jnz  checkSubDh_if_9_
jz   isdigitSubDh_


checkSubDh_if_9_:
mov bh, 39h
cmp al, bh
jnz  isletterSubDh_
jz   isdigitSubDh_




isdigitSubDh_:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkSubDh_2nd_char_

isletterSubDh_:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkSubDh_2nd_char_


checkSubDh_2nd_char_:
mov al, value2 + 3
mov bh, 30h
cmp al, bh
jnz  checkSubDh_if_1_1_
jz   isdigitSubDh_1_


checkSubDh_if_1_1_:
mov bh, 31h
cmp al, bh
jnz  checkSubDh_if_2_1_
jz   isdigitSubDh_1_


checkSubDh_if_2_1_:
mov bh, 32h
cmp al, bh
jnz  checkSubDh_if_3_1_
jz   isdigitSubDh_1_


checkSubDh_if_3_1_:
mov bh, 33h
cmp al, bh
jnz  checkSubDh_if_4_1_
jz   isdigitSubDh_1_


checkSubDh_if_4_1_:
mov bh, 34h
cmp al, bh
jnz  checkSubDh_if_5_1_
jz   isdigitSubDh_1_


checkSubDh_if_5_1_:
mov bh, 35h
cmp al, bh
jnz  checkSubDh_if_6_1_
jz   isdigitSubDh_1_


checkSubDh_if_6_1_:
mov bh, 36h
cmp al, bh
jnz  checkSubDh_if_7_1_
jz   isdigitSubDh_1_


checkSubDh_if_7_1_:
mov bh, 37h
cmp al, bh
jnz  checkSubDh_if_8_1_
jz   isdigitSubDh_1_


checkSubDh_if_8_1_:
mov bh, 38h
cmp al, bh
jnz  checkSubDh_if_9_1_
jz   isdigitSubDh_1_


checkSubDh_if_9_1_:
mov bh, 39h
cmp al, bh
jnz  isletterSubDh_1_
jz   isdigitSubDh_1_



isdigitSubDh_1_:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al
jmp  finish_checkSubDh_digits_and_letters_of_input_
isletterSubDh_1_:
sub al, 60h
add al, 9h
add ch, al
jmp  finish_checkSubDh_digits_and_letters_of_input_
finish_checkSubDh_digits_and_letters_of_input_:
mov ax, cx
mov dl, byte ptr real_reg_dx_2+1
sub dl,ah
mov byte ptr real_reg_dx_2+1,dl
jmp continue
getRegisterName_dh_sub_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_operand_2
int 21h
; receive input from user
mov ah, 0AH
mov dx, offset operand_2
int 21h
; check if register is ax or al or ah
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkDhSub_8
jnz another_register_name_checkDhSub_1_8


Ax_checkDhSub_8 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareDhSub_ax_1_8

another_compareDhSub_ax_1_8 :
mov bl, 68h; ascii of h
cmp bl, [si]
jz dh_sub_ah
jnz another_compareDhSub_of_ax_2_8


dh_sub_ah:
mov ah, byte ptr real_reg_dx_2+1
mov bh, byte ptr real_reg_Ax_2 + 1
sub ah, bh
mov byte ptr real_reg_dx_2+1, ah
jmp continue

another_compareDhSub_of_ax_2_8 :
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz dh_sub_al
    jnz error_register_name

    dh_sub_al :
mov ah, byte ptr real_reg_dx_2+1
mov bh, byte ptr real_reg_Ax_2
sub ah, bh
mov byte ptr real_reg_dx_2+1, ah
jmp continue


another_register_name_checkDhSub_1_8 :
    ; check if register is bx
    mov si, offset[operand_2 + 2]
    mov bl, 62h; ascii of b
    cmp bl, [si]
    jz bx_checkDhSub_8
    jnz another_register_name_checkDhSub_2_8

    bx_checkDhSub_8 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareDhSub_of_bx_1_8


another_compareDhSub_of_bx_1_8 :
mov bl, 68h; ascii of h
cmp bl, [si]
jz dh_sub_bh
jnz another_compareDhSub_of_bx_2_8

dh_sub_bh :
mov ah, byte ptr real_reg_dx_2+1
mov bh, byte ptr real_reg_bx_2 + 1
sub ah, bh
mov byte ptr real_reg_dx_2+1, ah
jmp continue


another_compareDhSub_of_bx_2_8 :
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz dh_sub_bl
    jnz compareDhSub_BP_8


    dh_sub_bl :
mov ah, byte ptr real_reg_dx_2+1
mov bh, byte ptr real_reg_bx_2
sub ah, bh
mov byte ptr real_reg_dx_2+1, ah
jmp continue

; to check if register is BP or not
compareDhSub_BP_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkDhSub_2_8 :
; check if register is cx
mov si, offset[operand_2 + 2]
mov bl, 63h; ascii of c
cmp bl, [si]
jz cX_checkDhSub_8
jnz another_register_name_checkDhSub_3_8


cx_checkDhSub_8 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareDhSub_of_cx_1_8


another_compareDhSub_of_cx_1_8 :
mov bl, 68h; ascii of h
cmp bl, [si]
jz dh_sub_ch
jnz another_compareDhSub_of_cx_2_8

dh_sub_ch :
mov ah, byte ptr real_reg_dx_2+1
mov bh, byte ptr real_reg_cx_2 + 1
sub ah, bh
mov byte ptr real_reg_dx_2+1, ah
jmp continue


another_compareDhSub_of_cx_2_8 :
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz dh_sub_cl
    jnz error_register_name

    dh_sub_cl :
mov ah, byte ptr real_reg_dx_2+1
mov bh, byte ptr real_reg_cx_2
sub ah, bh
mov byte ptr real_reg_dx_2+1, ah
jmp continue


another_register_name_checkDhSub_3_8 :
    ; check if register is dx or dl or dh
    mov si, offset[operand_2 + 2]
    mov bl, 64h; ascii of d
    cmp bl, [si]
    jz dX_checkDhSub_8
    jnz another_register_name_checkDhSub_4_8


    dx_checkDhSub_8 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareDhSub_of_dx_1_8


another_compareDhSub_of_dx_1_8 :
mov bl, 68h; ascii of h
cmp bl, [si]
jz dh_sub_dh
jnz another_compareDhSub_of_dx_2_8

dh_sub_dh :
mov ah, byte ptr real_reg_dx_2+1
mov bh, byte ptr real_reg_cx_2+1
sub ah, bh
mov byte ptr real_reg_dx_2+1, ah
jmp continue

another_compareDhSub_of_dx_2_8 :
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz dh_sub_dl
    jnz CompareDhSub_DI_8

    dh_sub_dl :
mov ah, byte ptr real_reg_dx_2+1
mov bh, byte ptr real_reg_dx_2
sub ah, bh
mov byte ptr real_reg_dx_2+1, ah
jmp continue

; to check if register is DI or not
compareDhSub_DI_8:
mov bl, 69h; ascii of i
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkDhSub_4_8 :
mov bl, 73h; ascii of s
cmp bl, [si]
jz checkDhSub_si_8
jnz error_register_name

checkDhSub_si_8 :
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz sizemismatch
jnz checkDhSub_sp_8

checkDhSub_sp_8 :
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_register_name
;;;;;;;;;;;dh_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;endofcode

;;;;;;;;;;;;;;;;;;;;;dx_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;startofcode
dx_sub_?:
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
        jz getRegisterName_dx_sub_op2
        cmp ah,bl 
        jz getValue_dx_sub_op2
        


getValue_dx_sub_op2:
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
jnz  checkdx_if_1_B
jz   isdigitdx_B

checkdx_if_1_B:
mov bh, 31h
cmp al, bh
jnz  checkdx_if_2_B
jz   isdigitdx_B

checkdx_if_2_B:
mov bh, 32h
cmp al, bh
jnz  checkdx_if_3_B
jz   isdigitdx_B

checkdx_if_3_B:
mov bh, 33h
cmp al, bh
jnz  checkdx_if_4_B
jz   isdigitdx_B

checkdx_if_4_B:
mov bh, 34h
cmp al, bh
jnz  checkdx_if_5_B
jz   isdigitdx_B


checkdx_if_5_B:
mov bh, 35h
cmp al, bh
jnz  checkdx_if_6_B
jz   isdigitdx_B


checkdx_if_6_B:
mov bh, 36h
cmp al, bh
jnz  checkdx_if_7_B
jz   isdigitdx_B


checkdx_if_7_B:
mov bh, 37h
cmp al, bh
jnz  checkdx_if_8_B
jz   isdigitdx_B


checkdx_if_8_B:
mov bh, 38h
cmp al, bh
jnz  checkdx_if_9_B
jz   isdigitdx_B


checkdx_if_9_B:
mov bh, 39h
cmp al, bh
jnz  isletterdx_B
jz   isdigitdx_B




isdigitdx_B:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkdx_2nd_char_B

isletterdx_B:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkdx_2nd_char_B


checkdx_2nd_char_B:
mov al, value + 3
mov bh, 30h
cmp al, bh
jnz  checkdx_if_1_B_1
jz   isdigitdx_B_1


checkdx_if_1_B_1:
mov bh, 31h
cmp al, bh
jnz  checkdx_if_2_B_1
jz   isdigitdx_B_1


checkdx_if_2_B_1:
mov bh, 32h
cmp al, bh
jnz  checkdx_if_3_B_1
jz   isdigitdx_B_1


checkdx_if_3_B_1:
mov bh, 33h
cmp al, bh
jnz  checkdx_if_4_B_1
jz   isdigitdx_B_1


checkdx_if_4_B_1:
mov bh, 34h
cmp al, bh
jnz  checkdx_if_5_B_1
jz   isdigitdx_B_1


checkdx_if_5_B_1:
mov bh, 35h
cmp al, bh
jnz  checkdx_if_6_B_1
jz   isdigitdx_B_1


checkdx_if_6_B_1:
mov bh, 36h
cmp al, bh
jnz  checkdx_if_7_B_1
jz   isdigitdx_B_1


checkdx_if_7_B_1:
mov bh, 37h
cmp al, bh
jnz  checkdx_if_8_B_1
jz   isdigitdx_B_1


checkdx_if_8_B_1:
mov bh, 38h
cmp al, bh
jnz  checkdx_if_9_B_1
jz   isdigitdx_B_1


checkdx_if_9_B_1:
mov bh, 39h
cmp al, bh
jnz  isletterdx_B_1
jz   isdigitdx_B_1



isdigitdx_B_1:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  checkdx_3rd_char_B


isletterdx_B_1:
sub al, 60h
add al, 9h
add ch, al

jmp  checkdx_3rd_char_B
checkdx_3rd_char_B:
mov al, value + 4
mov bh, 30h
cmp al, bh
jnz  checkdx_if_1_B_2
jz   isdigitdx_B_2

checkdx_if_1_B_2:
mov bh, 31h
cmp al, bh
jnz  checkdx_if_2_B_2
jz   isdigitdx_B_2

checkdx_if_2_B_2:
mov bh, 32h
cmp al, bh
jnz  checkdx_if_3_B_2
jz   isdigitdx_B_2

checkdx_if_3_B_2:
mov bh, 33h
cmp al, bh
jnz  checkdx_if_4_B_2
jz   isdigitdx_B_2

checkdx_if_4_B_2:
mov bh, 34h
cmp al, bh
jnz  checkdx_if_5_B_2
jz   isdigitdx_B_2


checkdx_if_5_B_2:
mov bh, 35h
cmp al, bh
jnz  checkdx_if_6_B_2
jz   isdigitdx_B_2

checkdx_if_6_B_2:
mov bh, 36h
cmp al, bh
jnz  checkdx_if_7_B_2
jz   isdigitdx_B_2


checkdx_if_7_B_2:
mov bh, 37h
cmp al, bh
jnz  checkdx_if_8_B_2
jz   isdigitdx_B_2


checkdx_if_8_B_2:
mov bh, 38h
cmp al, bh
jnz  checkdx_if_9_B_2
jz   isdigitdx_B_2


checkdx_if_9_B_2:
mov bh, 39h
cmp al, bh
jnz  isletterdx_B_2
jz   isdigitdx_B_2



isdigitdx_B_2:; reg_Ax_1 + 4 is tens
sub al, 30h
mov bl, 10h
mul bl
mov cl, al


jmp  checkdx_4th_char_B


isletterdx_B_2:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov cl, al


checkdx_4th_char_B:

mov al, value + 5
mov bh, 30h
cmp al, bh
jnz  checkdx_if_1_B_3
jz   isdigitdx_B_3


checkdx_if_1_B_3:
mov bh, 31h
cmp al, bh
jnz  checkdx_if_2_B_3
jz   isdigitdx_B_3


checkdx_if_2_B_3:
mov bh, 32h
cmp al, bh
jnz  checkdx_if_3_B_3
jz   isdigitdx_B_3


checkdx_if_3_B_3:
mov bh, 33h
cmp al, bh
jnz  checkdx_if_4_B_3
jz   isdigitdx_B_3


checkdx_if_4_B_3:
mov bh, 34h
cmp al, bh
jnz  checkdx_if_5_B_3
jz   isdigitdx_B_3


checkdx_if_5_B_3:
mov bh, 35h
cmp al, bh
jnz  checkdx_if_6_B_3
jz   isdigitdx_B_3


checkdx_if_6_B_3:
mov bh, 36h
cmp al, bh
jnz  checkdx_if_7_B_3
jz   isdigitdx_B_3

checkdx_if_7_B_3:
mov bh, 37h
cmp al, bh
jnz  checkdx_if_8_B_3
jz   isdigitdx_B_3


checkdx_if_8_B_3:
mov bh, 38h
cmp al, bh
jnz  checkdx_if_9_B_3
jz   isdigitdx_B_3

checkdx_if_9_B_3:
mov bh, 39h
cmp al, bh
jnz  isletterdx_B_3
jz   isdigitdx_B_3



isdigitdx_B_3:; reg_Ax_1 + 5 is unit
sub al, 30h
add cl, al


jmp  finish_checkdx_digits_and_letters_of_input_dx

isletterdx_B_3:
sub al, 60h
add al, 9h
add cl, al


finish_checkdx_digits_and_letters_of_input_dx:

mov ax, cx
 
       
  mov bx,real_reg_dx_2
  sub bx,ax
  mov real_reg_dx_2,bx     
  jmp continue 

  getRegisterName_dx_sub_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_operand_2
int 21h
; receive input from user
mov ah, 0AH
mov dx, offset operand_2
int 21h
; check if register is ax or al or ah
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkDxSub_4
jnz another_register_name_checkDxSub_1_4


Ax_checkDxSub_4 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz dx_sub_ax
jnz another_compareDxSub_of_ax_1_7


dx_sub_ax :
mov ax, real_reg_dx_2
mov bx, real_reg_ax_2
sub ax, bx
mov real_reg_dx_2, ax
jmp continue

another_compareDxSub_of_ax_1_7 :
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareDxSub_of_ax_2_7

    another_compareDxSub_of_ax_2_7 :
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz another_register_name_checkDxSub_1_4



another_register_name_checkDxSub_1_4:
; check if register is bx
mov si, offset[operand_2 + 2]
mov bl, 62h; ascii of b
cmp bl, [si]
jz bx_checkDxSub_4
jnz another_register_name_checkDxSub_2_4

bx_checkDxSub_4 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz dx_sub_bx
jnz another_compareDxSub_of_cx_bx_1_4


dx_sub_bx :
mov ax, real_reg_dx_2
mov bx, real_reg_bx_2
sub ax, bx
mov real_reg_dx_2, ax
jmp continue

another_compareDxSub_of_cx_bx_1_4 :
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareDxSub_of_bx_2_4

    another_compareDxSub_of_bx_2_4 :
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareDxSub_BP_4




; to check if register is BP or not
compareDxSub_BP_4:
mov bl, 70h; ascii of p
cmp bl, [si]
jz dx_sub_BP
jnz error_register_name

dx_sub_BP :
mov ax, real_reg_dx_2
mov bx, real_reg_BP_2
sub ax, bx
mov real_reg_dx_2, ax
jmp continue

another_register_name_checkDxSub_2_4 :
    ; check if register is cx
    mov si, offset[operand_2 + 2]
    mov bl, 63h; ascii of c
    cmp bl, [si]
    jz cX_checkDxSub_4
    jnz another_register_name_checkDxSub_3_4


    cx_checkDxSub_4 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz dx_sub_cx
jnz error_register_name

dx_sub_cx :
mov ax, real_reg_dx_2
mov bx, real_reg_cx_2
sub ax, bx
mov real_reg_dx_2, ax
jmp continue

another_compareDxSub_of_cx_1_4 :
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareDxSub_of_cx_2_4

    jmp continue

    another_compareDxSub_of_cx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkDxSub_3_4 :
; check if register is dx or dl or dh
mov si, offset[operand_2 + 2]
mov bl, 64h; ascii of d
cmp bl, [si]
jz dX_checkDxSub_4
jnz another_register_name_checkDxSub_4_4


dx_checkDxSub_4 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz dx_sub_dx
jnz another_compareDxSub_of_dx_1_4

dx_sub_dx :
mov ax, real_reg_dx_2
mov bx, real_reg_dx_2
sub ax, bx
mov real_reg_dx_2, ax
jmp continue

another_compareDxSub_of_dx_1_4 :
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareDxSub_of_dx_2_4

    another_compareDxSub_of_dx_2_4 :
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareDxSub_DI_4

; to check if register is DI or not
compareDxSub_DI_4:
mov bl, 69h; ascii of i
cmp bl, [si]
jz dx_sub_DI
jnz error_register_name

dx_sub_DI :
mov ax, real_reg_dx_2
mov bx, real_reg_di_2
sub ax, bx
mov real_reg_dx_2, ax
jmp continue

another_register_name_checkDxSub_4_4 :
    mov bl, 73h; ascii of s
    cmp bl, [si]
    jz checkDxSub_si_4
    jnz error_register_name

    checkDxSub_si_4 :
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz dx_sub_si
jnz checkDxSub_sp_4

dx_sub_si :
mov ax, real_reg_dx_2
mov bx, real_reg_si_2
sub ax, bx
mov real_reg_dx_2, ax
jmp continue

checkDxSub_sp_4 :
    mov bl, 70h; ascii of p
    cmp bl, [si]
    jz dx_sub_sp
    jnz error_register_name

    dx_sub_sp :
mov ax, real_reg_dx_2
mov bx, real_reg_sp_2
sub ax, bx
mov real_reg_dx_2, ax
jmp continue
;;;;;;;;;;;;;;;;;;;;;dx_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;endofcode
;;;;;;;;;;;;;;;;;;dl_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;startofcode
dl_sub_?:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset value_OR_register
int 21h
; receive input from user
mov ah, 0AH
mov dx, offset vORr
int 21h
mov ah, vORr + 2
mov al, 72h; ascii of r
mov bl, 76h; ascii of v
cmp ah, al
jz getRegisterName_dl_sub_op2
cmp ah, bl
jz getValue_dl_sub_op2
getValue_dl_sub_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_value
int 21h
mov ah, 0AH
mov dx, offset value2
int 21h
mov al, value2 + 2
mov bh, 30h
cmp al, bh
jnz  checkSubDl_if_1_
jz   isdigitSubDl_

checkSubDl_if_1_:
mov bh, 31h
cmp al, bh
jnz  checkSubDl_if_2_
jz   isdigitSubDl_

checkSubDl_if_2_:
mov bh, 32h
cmp al, bh
jnz  checkSubDl_if_3_
jz   isdigitSubDl_

checkSubDl_if_3_:
mov bh, 33h
cmp al, bh
jnz  checkSubDl_if_4_
jz   isdigitSubDl_

checkSubDl_if_4_:
mov bh, 34h
cmp al, bh
jnz  checkSubDl_if_5_
jz   isdigitSubDl_


checkSubDl_if_5_:
mov bh, 35h
cmp al, bh
jnz  checkSubDl_if_6_
jz   isdigitSubDl_


checkSubDl_if_6_:
mov bh, 36h
cmp al, bh
jnz  checkSubDl_if_7_
jz   isdigitSubDl_


checkSubDl_if_7_:
mov bh, 37h
cmp al, bh
jnz  checkSubDl_if_8_
jz   isdigitSubDl_


checkSubDl_if_8_:
mov bh, 38h
cmp al, bh
jnz  checkSubDl_if_9_
jz   isdigitSubDl_


checkSubDl_if_9_:
mov bh, 39h
cmp al, bh
jnz  isletterSubDl_
jz   isdigitSubDl_




isdigitSubDl_:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkSubDl_2nd_char_

isletterSubDl_:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkSubDl_2nd_char_


checkSubDl_2nd_char_:
mov al, value2 + 3
mov bh, 30h
cmp al, bh
jnz  checkSubDl_if_1_1_
jz   isdigitSubDl_1_


checkSubDl_if_1_1_:
mov bh, 31h
cmp al, bh
jnz  checkSubDl_if_2_1_
jz   isdigitSubDl_1_


checkSubDl_if_2_1_:
mov bh, 32h
cmp al, bh
jnz  checkSubDl_if_3_1_
jz   isdigitSubDl_1_


checkSubDl_if_3_1_:
mov bh, 33h
cmp al, bh
jnz  checkSubDl_if_4_1_
jz   isdigitSubDl_1_


checkSubDl_if_4_1_:
mov bh, 34h
cmp al, bh
jnz  checkSubDl_if_5_1_
jz   isdigitSubDl_1_


checkSubDl_if_5_1_:
mov bh, 35h
cmp al, bh
jnz  checkSubDl_if_6_1_
jz   isdigitSubDl_1_


checkSubDl_if_6_1_:
mov bh, 36h
cmp al, bh
jnz  checkSubDl_if_7_1_
jz   isdigitSubDl_1_


checkSubDl_if_7_1_:
mov bh, 37h
cmp al, bh
jnz  checkSubDl_if_8_1_
jz   isdigitSubDl_1_


checkSubDl_if_8_1_:
mov bh, 38h
cmp al, bh
jnz  checkSubDl_if_9_1_
jz   isdigitSubDl_1_


checkSubDl_if_9_1_:
mov bh, 39h
cmp al, bh
jnz  isletterSubDl_1_
jz   isdigitSubDl_1_



isdigitSubDl_1_:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  finish_checkSubDl_digits_and_letters_of_input_


isletterSubDl_1_:
sub al, 60h
add al, 9h
add ch, al

jmp  finish_checkSubDl_digits_and_letters_of_input_


finish_checkSubDl_digits_and_letters_of_input_:

mov ax, cx
mov dl,byte ptr real_reg_dx_2
sub dl,ah
mov byte ptr real_reg_dx_2,dl
jmp continue
getRegisterName_dl_sub_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_operand_2
int 21h
; receive input from user
mov ah, 0AH
mov dx, offset operand_2
int 21h
; check if register is ax or al or ah
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkDlSub_8
jnz another_register_name_checkDlSub_1_8


Ax_checkDlSub_8 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareDlSub_ax_1_8

another_compareDlSub_ax_1_8 :
mov bl, 68h; ascii of h
cmp bl, [si]
jz dl_sub_ah
jnz another_compareDlSub_of_ax_2_8


dl_sub_ah:
mov ah, byte ptr real_reg_dx_2
mov bh, byte ptr real_reg_Ax_2 + 1
sub ah, bh
mov byte ptr real_reg_dx_2, ah
jmp continue

another_compareDlSub_of_ax_2_8 :
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz dl_sub_al
    jnz error_register_name

    dl_sub_al :
mov ah, byte ptr real_reg_dx_2
mov bh, byte ptr real_reg_Ax_2
sub ah, bh
mov byte ptr real_reg_dx_2, ah
jmp continue


another_register_name_checkDlSub_1_8 :
    ; check if register is bx
    mov si, offset[operand_2 + 2]
    mov bl, 62h; ascii of b
    cmp bl, [si]
    jz bx_checkDlSub_8
    jnz another_register_name_checkDlSub_2_8

    bx_checkDlSub_8 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareDlSub_of_bx_1_8


another_compareDlSub_of_bx_1_8 :
mov bl, 68h; ascii of h
cmp bl, [si]
jz dl_sub_bh
jnz another_compareDlSub_of_bx_2_8

dl_sub_bh :
mov ah, byte ptr real_reg_dx_2
mov bh, byte ptr real_reg_bx_2 + 1
sub ah, bh
mov byte ptr real_reg_dx_2, ah
jmp continue


another_compareDlSub_of_bx_2_8 :
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz dl_sub_bl
    jnz compareDlSub_BP_8


    dl_sub_bl :
mov ah, byte ptr real_reg_dx_2
mov bh, byte ptr real_reg_bx_2
sub ah, bh
mov byte ptr real_reg_dx_2, ah
jmp continue

; to check if register is BP or not
compareDlSub_BP_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkDlSub_2_8 :
; check if register is cx
mov si, offset[operand_2 + 2]
mov bl, 63h; ascii of c
cmp bl, [si]
jz cX_checkDlSub_8
jnz another_register_name_checkDlSub_3_8


cx_checkDlSub_8 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareDlSub_of_cx_1_8


another_compareDlSub_of_cx_1_8 :
mov bl, 68h; ascii of h
cmp bl, [si]
jz dl_sub_ch
jnz another_compareDlSub_of_cx_2_8

dl_sub_ch :
mov ah, byte ptr real_reg_dx_2
mov bh, byte ptr real_reg_cx_2 + 1
sub ah, bh
mov byte ptr real_reg_dx_2, ah
jmp continue


another_compareDlSub_of_cx_2_8 :
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz dl_sub_cl
    jnz error_register_name

    dl_sub_cl :
mov ah, byte ptr real_reg_dx_2
mov bh, byte ptr real_reg_cx_2
sub ah, bh
mov byte ptr real_reg_dx_2, ah
jmp continue


another_register_name_checkDlSub_3_8 :
    ; check if register is dx or dl or dh
    mov si, offset[operand_2 + 2]
    mov bl, 64h; ascii of d
    cmp bl, [si]
    jz dX_checkDlSub_8
    jnz another_register_name_checkDlSub_4_8


    dx_checkDlSub_8 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareDlSub_of_dx_1_8


another_compareDlSub_of_dx_1_8 :
mov bl, 68h; ascii of h
cmp bl, [si]
jz dl_sub_dh
jnz another_compareDlSub_of_dx_2_8

dl_sub_dh :
mov ah, byte ptr real_reg_dx_2
mov bh, byte ptr real_reg_dx_2+1
sub ah, bh
mov byte ptr real_reg_dx_2, ah
jmp continue

another_compareDlSub_of_dx_2_8 :
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz dl_sub_dl
    jnz compareDlSubDI_8

    dl_sub_dl :
mov ah, byte ptr real_reg_dx_2
mov bh, byte ptr real_reg_dx_2
sub ah, bh
mov byte ptr real_reg_dx_2, ah
jmp continue

; to check if register is DI or not
compareDlSubDI_8:
mov bl, 69h; ascii of i
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkDlSub_4_8 :
mov bl, 73h; ascii of s
cmp bl, [si]
jz checkDlSub_si_8
jnz error_register_name

checkDlSub_si_8 :
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz sizemismatch
jnz checkDlSub_sp_8

checkDlSub_sp_8 :
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_register_name
;;;;;;;;;;;;;;dl_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;endofcode
;;;;;;;;;;;;;di_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;startofcode
di_sub_?:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset value_OR_register
int 21h
; receive input from user
mov ah, 0AH
mov dx, offset vORr
int 21h
mov ah, vORr + 2
mov al, 72h; ascii of r
mov bl, 76h; ascii of v
cmp ah, al
jz getRegisterName_di_sub_op2
cmp ah, bl
jz getValue_di_sub_op2
getValue_di_sub_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_value
int 21h
mov ah, 0AH
mov dx, offset value
int 21h
mov al, value2 + 2
mov bh, 30h
cmp al, bh
jnz  checkSubDi_if_1_
jz   isdigitSubDi_

checkSubDi_if_1_:
mov bh, 31h
cmp al, bh
jnz  checkSubDi_if_2_
jz   isdigitSubDi_

checkSubDi_if_2_:
mov bh, 32h
cmp al, bh
jnz  checkSubDi_if_3_
jz   isdigitSubDi_

checkSubDi_if_3_:
mov bh, 33h
cmp al, bh
jnz  checkSubDi_if_4_
jz   isdigitSubDi_

checkSubDi_if_4_:
mov bh, 34h
cmp al, bh
jnz  checkSubDi_if_5_
jz   isdigitSubDi_


checkSubDi_if_5_:
mov bh, 35h
cmp al, bh
jnz  checkSubDi_if_6_
jz   isdigitSubDi_


checkSubDi_if_6_:
mov bh, 36h
cmp al, bh
jnz  checkSubDi_if_7_
jz   isdigitSubDi_


checkSubDi_if_7_:
mov bh, 37h
cmp al, bh
jnz  checkSubDi_if_8_
jz   isdigitSubDi_


checkSubDi_if_8_:
mov bh, 38h
cmp al, bh
jnz  checkSubDi_if_9_
jz   isdigitSubDi_


checkSubDi_if_9_:
mov bh, 39h
cmp al, bh
jnz  isletterSubDi_
jz   isdigitSubDi_




isdigitSubDi_:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkSubDi_2nd_char_

isletterSubDi_:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkSubDi_2nd_char_


checkSubDi_2nd_char_:
mov al, value2 + 3
mov bh, 30h
cmp al, bh
jnz  checkSubDi_if_1_1_
jz   isdigitSubDi_1_


checkSubDi_if_1_1_:
mov bh, 31h
cmp al, bh
jnz  checkSubDi_if_2_1_
jz   isdigitSubDi_1_


checkSubDi_if_2_1_:
mov bh, 32h
cmp al, bh
jnz  checkSubDi_if_3_1_
jz   isdigitSubDi_1_


checkSubDi_if_3_1_:
mov bh, 33h
cmp al, bh
jnz  checkSubDi_if_4_1_
jz   isdigitSubDi_1_


checkSubDi_if_4_1_:
mov bh, 34h
cmp al, bh
jnz  checkSubDi_if_5_1_
jz   isdigitSubDi_1_


checkSubDi_if_5_1_:
mov bh, 35h
cmp al, bh
jnz  checkSubDi_if_6_1_
jz   isdigitSubDi_1_


checkSubDi_if_6_1_:
mov bh, 36h
cmp al, bh
jnz  checkSubDi_if_7_1_
jz   isdigitSubDi_1_


checkSubDi_if_7_1_:
mov bh, 37h
cmp al, bh
jnz  checkSubDi_if_8_1_
jz   isdigitSubDi_1_


checkSubDi_if_8_1_:
mov bh, 38h
cmp al, bh
jnz  checkSubDi_if_9_1_
jz   isdigitSubDi_1_


checkSubDi_if_9_1_:
mov bh, 39h
cmp al, bh
jnz  isletterSubDi_1_
jz   isdigitSubDi_1_
isdigitSubDi_1_:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al
jmp  finish_checkSubDi_digits_and_letters_of_input_
isletterSubDi_1_:
sub al, 60h
add al, 9h
add ch, al
jmp  finish_checkSubDi_digits_and_letters_of_input_
finish_checkSubDi_digits_and_letters_of_input_:
mov ax, cx
mov dx,real_reg_di_2
sub dx,ax
mov real_reg_di_2,dx
jmp continue
getRegisterName_di_sub_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_operand_2
int 21h
; receive input from user
mov ah, 0AH
mov dx, offset operand_2
int 21h
; check if register is ax or al or ah
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkDiSub_4
jnz another_register_name_checkDiSub_1_4
Ax_checkDiSub_4 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz di_sub_ax
jnz another_compareDiSub_of_ax_1_7
di_sub_ax :
mov ax, real_reg_di_2
mov bx, real_reg_ax_2
sub ax, bx
mov real_reg_di_2, ax
jmp continue

another_compareDiSub_of_ax_1_7 :
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareDiSub_of_ax_2_7

    another_compareDiSub_of_ax_2_7 :
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz another_register_name_checkDiSub_1_4



another_register_name_checkDiSub_1_4:
; check if register is bx
mov si, offset[operand_2 + 2]
mov bl, 62h; ascii of b
cmp bl, [si]
jz bx_checkDiSub_4
jnz another_register_name_checkDiSub_2_4

bx_checkDiSub_4 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz di_sub_bx
jnz another_compareDiSub_of_cx_bx_1_4


di_sub_bx :
mov ax, real_reg_di_2
mov bx, real_reg_bx_2
sub ax, bx
mov real_reg_di_2, ax
jmp continue

another_compareDiSub_of_cx_bx_1_4 :
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareDiSub_of_bx_2_4

    another_compareDiSub_of_bx_2_4 :
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareDiSub_BP_4




; to check if register is BP or not
compareDiSub_BP_4:
mov bl, 70h; ascii of p
cmp bl, [si]
jz di_sub_BP
jnz error_register_name

di_sub_BP :
mov ax, real_reg_di_2
mov bx, real_reg_BP_2
sub ax, bx
mov real_reg_di_2, ax
jmp continue

another_register_name_checkDiSub_2_4 :
    ; check if register is cx
    mov si, offset[operand_2 + 2]
    mov bl, 63h; ascii of c
    cmp bl, [si]
    jz cX_checkDiSub_4
    jnz another_register_name_checkDiSub_3_4


    cx_checkDiSub_4 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz di_sub_cx
jnz error_register_name

di_sub_cx :
mov ax, real_reg_di_2
mov bx, real_reg_cx_2
sub ax, bx
mov real_reg_di_2, ax
jmp continue

another_compareDiSub_of_cx_1_4 :
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareDiSub_of_cx_2_4

    jmp continue

    another_compareDiSub_of_cx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkDiSub_3_4 :
; check if register is dx or dl or dh
mov si, offset[operand_2 + 2]
mov bl, 64h; ascii of d
cmp bl, [si]
jz dX_checkDiSub_4
jnz another_register_name_checkDiSub_4_4


dx_checkDiSub_4 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz di_sub_dx
jnz another_compareDiSub_of_dx_1_4

di_sub_dx :
mov ax, real_reg_di_2
mov bx, real_reg_dx_2
sub ax, bx
mov real_reg_di_2, ax
jmp continue

another_compareDiSub_of_dx_1_4 :
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareDiSub_of_dx_2_4

    another_compareDiSub_of_dx_2_4 :
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareDiSub_DI_4

; to check if register is DI or not
compareDiSub_DI_4:
mov bl, 69h; ascii of i
cmp bl, [si]
jz di_sub_DI
jnz error_register_name

di_sub_DI :
mov ax, real_reg_di_2
mov bx, real_reg_di_2
sub ax, bx
mov real_reg_di_2, ax
jmp continue

another_register_name_checkDiSub_4_4 :
    mov bl, 73h; ascii of s
    cmp bl, [si]
    jz checkDiSub_si_4
    jnz error_register_name

    checkDiSub_si_4 :
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz di_sub_si
jnz checkDiSub_sp_4

di_sub_si :
mov ax, real_reg_di_2
mov bx, real_reg_si_2
sub ax, bx
mov real_reg_di_2, ax
jmp continue

checkDiSub_sp_4 :
    mov bl, 70h; ascii of p
    cmp bl, [si]
    jz di_sub_sp
    jnz error_register_name

    di_sub_sp :
mov ax, real_reg_di_2
mov bx, real_reg_sp_2
sub ax, bx
mov real_reg_di_2, ax
jmp continue
;;;;;;;;;;;;di_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;endofcode

;;;;;;;;;;;si_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;startofcode
si_sub_?:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset value_OR_register
int 21h
; receive input from user
mov ah, 0AH
mov dx, offset vORr
int 21h
mov ah, vORr + 2
mov al, 72h; ascii of r
mov bl, 76h; ascii of v
cmp ah, al
jz getRegisterName_si_sub_op2
cmp ah, bl
jz getValue_si_sub_op2
getValue_si_sub_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_value
int 21h
mov ah, 0AH
mov dx, offset value
int 21h

mov al, value + 2
mov bh, 30h
cmp al, bh
jnz  checkSubSi_if_1_B
jz   isdigitSubSi_B

checkSubSi_if_1_B :
mov bh, 31h
cmp al, bh
jnz  checkSubSi_if_2_B
jz   isdigitSubSi_B

checkSubSi_if_2_B :
mov bh, 32h
cmp al, bh
jnz  checkSubSi_if_3_B
jz   isdigitSubSi_B

checkSubSi_if_3_B :
mov bh, 33h
cmp al, bh
jnz  checkSubSi_if_4_B
jz   isdigitSubSi_B

checkSubSi_if_4_B :
mov bh, 34h
cmp al, bh
jnz  checkSubSi_if_5_B
jz   isdigitSubSi_B


checkSubSi_if_5_B :
mov bh, 35h
cmp al, bh
jnz  checkSubSi_if_6_B
jz   isdigitSubSi_B


checkSubSi_if_6_B :
mov bh, 36h
cmp al, bh
jnz  checkSubSi_if_7_B
jz   isdigitSubSi_B


checkSubSi_if_7_B :
mov bh, 37h
cmp al, bh
jnz  checkSubSi_if_8_B
jz   isdigitSubSi_B


checkSubSi_if_8_B :
mov bh, 38h
cmp al, bh
jnz  checkSubSi_if_9_B
jz   isdigitSubSi_B


checkSubSi_if_9_B :
mov bh, 39h
cmp al, bh
jnz  isletterSubSi_B
jz   isdigitSubSi_B




isdigitSubSi_B:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkSubSi_2nd_char_B

isletterSubSi_B :
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkSubSi_2nd_char_B


checkSubSi_2nd_char_B :
mov al, value + 3
mov bh, 30h
cmp al, bh
jnz  checkSubSi_if_1_B_1
jz   isdigitSubSi_B_1


checkSubSi_if_1_B_1 :
mov bh, 31h
cmp al, bh
jnz  checkSubSi_if_2_B_1
jz   isdigitSubSi_B_1


checkSubSi_if_2_B_1 :
mov bh, 32h
cmp al, bh
jnz  checkSubSi_if_3_B_1
jz   isdigitSubSi_B_1


checkSubSi_if_3_B_1 :
mov bh, 33h
cmp al, bh
jnz  checkSubSi_if_4_B_1
jz   isdigitSubSi_B_1


checkSubSi_if_4_B_1 :
mov bh, 34h
cmp al, bh
jnz  checkSubSi_if_5_B_1
jz   isdigitSubSi_B_1


checkSubSi_if_5_B_1 :
mov bh, 35h
cmp al, bh
jnz  checkSubSi_if_6_B_1
jz   isdigitSubSi_B_1


checkSubSi_if_6_B_1 :
mov bh, 36h
cmp al, bh
jnz  checkSubSi_if_7_B_1
jz   isdigitSubSi_B_1


checkSubSi_if_7_B_1 :
mov bh, 37h
cmp al, bh
jnz checkSubSi_if_8_B_1
jz  isdigitSubSi_B_1


checkSubSi_if_8_B_1 :
mov bh, 38h
cmp al, bh
jnz  checkSubSi_if_9_B_1
jz   isdigitSubSi_B_1


checkSubSi_if_9_B_1 :
mov bh, 39h
cmp al, bh
jnz  isletterSubSi_B_1
jz   isdigitSubSi_B_1



isdigitSubSi_B_1:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  checkSubSi_3rd_char_B


isletterSubSi_B_1 :
sub al, 60h
add al, 9h
add ch, al

jmp  checkSubSi_3rd_char_B
checkSubSi_3rd_char_B :
mov al, value + 4
mov bh, 30h
cmp al, bh
jnz  checkSubSi_if_1_B_2
jz   isdigitSubSi_B_2

checkSubSi_if_1_B_2 :
mov bh, 31h
cmp al, bh
jnz  checkSubSi_if_2_B_2
jz   isdigitSubSi_B_2

checkSubSi_if_2_B_2 :
mov bh, 32h
cmp al, bh
jnz  checkSubSi_if_3_B_2
jz   isdigitSubSi_B_2

checkSubSi_if_3_B_2 :
mov bh, 33h
cmp al, bh
jnz  checkSubSi_if_4_B_2
jz   isdigitSubSi_B_2

checkSubSi_if_4_B_2 :
mov bh, 34h
cmp al, bh
jnz  checkSubSi_if_5_B_2
jz   isdigitSubSi_B_2


checkSubSi_if_5_B_2 :
mov bh, 35h
cmp al, bh
jnz  checkSubSi_if_6_B_2
jz   isdigitSubSi_B_2

checkSubSi_if_6_B_2 :
mov bh, 36h
cmp al, bh
jnz  checkSubSi_if_7_B_2
jz   isdigitSubSi_B_2


checkSubSi_if_7_B_2 :
mov bh, 37h
cmp al, bh
jnz  checkSubSi_if_8_B_2
jz   isdigitSubSi_B_2


checkSubSi_if_8_B_2 :
mov bh, 38h
cmp al, bh
jnz  checkSubSi_if_9_B_2
jz   isdigitSubSi_B_2


checkSubSi_if_9_B_2 :
mov bh, 39h
cmp al, bh
jnz  isletterSubSi_B_2
jz   isdigitSubSi_B_2



isdigitSubSi_B_2:; reg_Ax_1 + 4 is tens
sub al, 30h
mov bl, 10h
mul bl
mov cl, al


jmp  checkSubSi_4th_char_B


isletterSubSi_B_2 :
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov cl, al


checkSubSi_4th_char_B :

mov al, value + 5
mov bh, 30h
cmp al, bh
jnz  checkSubSi_if_1_B_3
jz   isdigitSubSi_B_3


checkSubSi_if_1_B_3 :
mov bh, 31h
cmp al, bh
jnz  checkSubSi_if_2_B_3
jz   isdigitSubSi_B_3


checkSubSi_if_2_B_3 :
mov bh, 32h
cmp al, bh
jnz  checkSubSi_if_3_B_3
jz   isdigitSubSi_B_3


checkSubSi_if_3_B_3 :
mov bh, 33h
cmp al, bh
jnz  checkSubSi_if_4_B_3
jz   isdigitSubSi_B_3


checkSubSi_if_4_B_3 :
mov bh, 34h
cmp al, bh
jnz  checkSubSi_if_5_B_3
jz   isdigitSubSi_B_3


checkSubSi_if_5_B_3 :
mov bh, 35h
cmp al, bh
jnz  checkSubSi_if_6_B_3
jz   isdigitSubSi_B_3


checkSubSi_if_6_B_3 :
mov bh, 36h
cmp al, bh
jnz  checkSubSi_if_7_B_3
jz   isdigitSubSi_B_3

checkSubSi_if_7_B_3 :
mov bh, 37h
cmp al, bh
jnz  checkSubSi_if_8_B_3
jz   isdigitSubSi_B_3


checkSubSi_if_8_B_3 :
mov bh, 38h
cmp al, bh
jnz  checkSubSi_if_9_B_3
jz   isdigitSubSi_B_3

checkSubSi_if_9_B_3 :
mov bh, 39h
cmp al, bh
jnz  isletterSubSi_B_3
jz   isdigitSubSi_B_3



isdigitSubSi_B_3:; reg_Ax_1 + 5 is unit
sub al, 30h
add cl, al


jmp  finish_checkSubSi_digits_and_letters_of_input_B

isletterSubSi_B_3 :
sub al, 60h
add al, 9h
add cl, al
finish_checkSubSi_digits_and_letters_of_input_B :
mov ax, cx
mov dx,real_reg_si_2
sub dx,ax
mov real_reg_si_2,dx
jmp continue
getRegisterName_si_sub_op2:

mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_operand_2
int 21h
; receive input from user
mov ah, 0AH
mov dx, offset operand_2
int 21h
; check if register is ax or al or ah
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkSiSub_4
jnz another_register_name_checkSiSub_1_4


Ax_checkSiSub_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz si_sub_ax
jnz another_compareSiSub_of_ax_1_7


si_sub_ax :
mov ax, real_reg_si_2
mov bx, real_reg_ax_2
sub ax, bx
mov real_reg_si_2, ax
jmp continue
another_compareSiSub_of_ax_1_7 :
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareSiSub_of_ax_2_7

    another_compareSiSub_of_ax_2_7 :
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz another_register_name_checkSiSub_1_4



another_register_name_checkSiSub_1_4:
; check if register is bx
mov si, offset[operand_2 + 2]
mov bl, 62h; ascii of b
cmp bl, [si]
jz bx_checkSiSub_4
jnz another_register_name_checkSiSub_2_4

bx_checkSiSub_4 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz si_sub_bx
jnz another_compareSiSub_of_cx_bx_1_4


si_sub_bx :
mov ax, real_reg_si_2
mov bx, real_reg_bx_2
sub ax, bx
mov real_reg_si_2, ax
jmp continue

another_compareSiSub_of_cx_bx_1_4 :
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareSiSub_of_bx_2_4

    another_compareSiSub_of_bx_2_4 :
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareSiSub_BP_4




; to check if register is BP or not
compareSiSub_BP_4:
mov bl, 70h; ascii of p
cmp bl, [si]
jz si_sub_BP
jnz error_register_name

si_sub_BP :
mov ax, real_reg_si_2
mov bx, real_reg_BP_2
sub ax, bx
mov real_reg_si_2, ax
jmp continue

another_register_name_checkSiSub_2_4 :
    ; check if register is cx
    mov si, offset[operand_2 + 2]
    mov bl, 63h; ascii of c
    cmp bl, [si]
    jz cX_checkSiSub_4
    jnz another_register_name_checkSiSub_3_4


    cx_checkSiSub_4 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz si_sub_cx
jnz error_register_name

si_sub_cx :
mov ax, real_reg_si_2
mov bx, real_reg_cx_2
sub ax, bx
mov real_reg_si_2, ax
jmp continue

another_compareSiSub_of_cx_1_4 :
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareSiSub_of_cx_2_4

    jmp continue

    another_compareSiSub_of_cx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkSiSub_3_4 :
; check if register is dx or dl or dh
mov si, offset[operand_2 + 2]
mov bl, 64h; ascii of d
cmp bl, [si]
jz dX_checkSiSub_4
jnz another_register_name_checkSiSub_4_4


dx_checkSiSub_4 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz si_sub_dx
jnz another_compareSiSub_of_dx_1_4

si_sub_dx :
mov ax, real_reg_si_2
mov bx, real_reg_dx_2
sub ax, bx
mov real_reg_si_2, ax
jmp continue

another_compareSiSub_of_dx_1_4 :
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareSiSub_of_dx_2_4

    another_compareSiSub_of_dx_2_4 :
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareSiSub_DI_4

; to check if register is DI or not
compareSiSub_DI_4:
mov bl, 69h; ascii of i
cmp bl, [si]
jz si_sub_DI
jnz error_register_name

si_sub_DI :
mov ax, real_reg_si_2
mov bx, real_reg_di_2
sub ax, bx
mov real_reg_si_2, ax
jmp continue

another_register_name_checkSiSub_4_4 :
    mov bl, 73h; ascii of s
    cmp bl, [si]
    jz checkSiSub_si_4
    jnz error_register_name

    checkSiSub_si_4 :
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz si_sub_si
jnz checkSiSub_sp_4

si_sub_si :
mov ax, real_reg_si_2
mov bx, real_reg_si_2
sub ax, bx
mov real_reg_si_2, ax
jmp continue

checkSiSub_sp_4 :
    mov bl, 70h; ascii of p
    cmp bl, [si]
    jz si_sub_sp
    jnz error_register_name

    si_sub_sp :
mov ax, real_reg_si_2
mov bx, real_reg_sp_2
sub ax, bx
mov real_reg_si_2, ax
jmp continue
;;;;;;;;;si_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;endofcode

;;;;;;;;sp_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;startofcode
sp_sub_?:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset value_OR_register
int 21h
; receive input from user
mov ah, 0AH
mov dx, offset vORr
int 21h
mov ah, vORr + 2
mov al, 72h; ascii of r
mov bl, 76h; ascii of v
cmp ah, al
jz getRegisterName_sp_sub_op2
cmp ah, bl
jz getValue_sp_sub_op2
getValue_sp_sub_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_value
int 21h
mov ah, 0AH
mov dx, offset value
int 21h
mov al, value + 2
mov bh, 30h
cmp al, bh
jnz  checkSubSp_if_1_B
jz   isdigitSubSp_B

checkSubSp_if_1_B :
mov bh, 31h
cmp al, bh
jnz  checkSubSp_if_2_B
jz   isdigitSubSp_B

checkSubSp_if_2_B :
mov bh, 32h
cmp al, bh
jnz  checkSubSp_if_3_B
jz   isdigitSubSp_B

checkSubSp_if_3_B :
mov bh, 33h
cmp al, bh
jnz  checkSubSp_if_4_B
jz   isdigitSubSp_B

checkSubSp_if_4_B :
mov bh, 34h
cmp al, bh
jnz  checkSubSp_if_5_B
jz   isdigitSubSp_B


checkSubSp_if_5_B :
mov bh, 35h
cmp al, bh
jnz  checkSubSp_if_6_B
jz   isdigitSubSp_B


checkSubSp_if_6_B :
mov bh, 36h
cmp al, bh
jnz  checkSubSp_if_7_B
jz   isdigitSubSp_B


checkSubSp_if_7_B :
mov bh, 37h
cmp al, bh
jnz  checkSubSp_if_8_B
jz   isdigitSubSp_B


checkSubSp_if_8_B :
mov bh, 38h
cmp al, bh
jnz  checkSubSp_if_9_B
jz   isdigitSubSp_B


checkSubSp_if_9_B :
mov bh, 39h
cmp al, bh
jnz  isletterSubSp_B
jz   isdigitSubSp_B




isdigitSubSp_B:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkSubSp_2nd_char_B

isletterSubSp_B :
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkSubSp_2nd_char_B


checkSubSp_2nd_char_B :
mov al, value + 3
mov bh, 30h
cmp al, bh
jnz  checkSubSp_if_1_B_1
jz   isdigitSubSp_B_1


checkSubSp_if_1_B_1 :
mov bh, 31h
cmp al, bh
jnz  checkSubSp_if_2_B_1
jz   isdigitSubSp_B_1


checkSubSp_if_2_B_1 :
mov bh, 32h
cmp al, bh
jnz  checkSubSp_if_3_B_1
jz   isdigitSubSp_B_1


checkSubSp_if_3_B_1 :
mov bh, 33h
cmp al, bh
jnz  checkSubSp_if_4_B_1
jz   isdigitSubSp_B_1


checkSubSp_if_4_B_1 :
mov bh, 34h
cmp al, bh
jnz  checkSubSp_if_5_B_1
jz   isdigitSubSp_B_1


checkSubSp_if_5_B_1 :
mov bh, 35h
cmp al, bh
jnz  checkSubSp_if_6_B_1
jz   isdigitSubSp_B_1


checkSubSp_if_6_B_1 :
mov bh, 36h
cmp al, bh
jnz  checkSubSp_if_7_B_1
jz   isdigitSubSp_B_1


checkSubSp_if_7_B_1 :
mov bh, 37h
cmp al, bh
jnz checkSubSp_if_8_B_1
jz  isdigitSubSp_B_1


checkSubSp_if_8_B_1 :
mov bh, 38h
cmp al, bh
jnz  checkSubSp_if_9_B_1
jz   isdigitSubSp_B_1


checkSubSp_if_9_B_1 :
mov bh, 39h
cmp al, bh
jnz  isletterSubSp_B_1
jz   isdigitSubSp_B_1



isdigitSubSp_B_1:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  checkSubSp_3rd_char_B


isletterSubSp_B_1 :
sub al, 60h
add al, 9h
add ch, al

jmp  checkSubSp_3rd_char_B
checkSubSp_3rd_char_B :
mov al, value + 4
mov bh, 30h
cmp al, bh
jnz  checkSubSp_if_1_B_2
jz   isdigitSubSp_B_2

checkSubSp_if_1_B_2 :
mov bh, 31h
cmp al, bh
jnz  checkSubSp_if_2_B_2
jz   isdigitSubSp_B_2

checkSubSp_if_2_B_2 :
mov bh, 32h
cmp al, bh
jnz  checkSubSp_if_3_B_2
jz   isdigitSubSp_B_2

checkSubSp_if_3_B_2 :
mov bh, 33h
cmp al, bh
jnz  checkSubSp_if_4_B_2
jz   isdigitSubSp_B_2

checkSubSp_if_4_B_2 :
mov bh, 34h
cmp al, bh
jnz  checkSubSp_if_5_B_2
jz   isdigitSubSp_B_2


checkSubSp_if_5_B_2 :
mov bh, 35h
cmp al, bh
jnz  checkSubSp_if_6_B_2
jz   isdigitSubSp_B_2

checkSubSp_if_6_B_2 :
mov bh, 36h
cmp al, bh
jnz  checkSubSp_if_7_B_2
jz   isdigitSubSp_B_2


checkSubSp_if_7_B_2 :
mov bh, 37h
cmp al, bh
jnz  checkSubSp_if_8_B_2
jz   isdigitSubSp_B_2


checkSubSp_if_8_B_2 :
mov bh, 38h
cmp al, bh
jnz  checkSubSp_if_9_B_2
jz   isdigitSubSp_B_2


checkSubSp_if_9_B_2 :
mov bh, 39h
cmp al, bh
jnz  isletterSubSp_B_2
jz   isdigitSubSp_B_2



isdigitSubSp_B_2:; reg_Ax_1 + 4 is tens
sub al, 30h
mov bl, 10h
mul bl
mov cl, al


jmp  checkSubSp_4th_char_B


isletterSubSp_B_2 :
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov cl, al


checkSubSp_4th_char_B :

mov al, value + 5
mov bh, 30h
cmp al, bh
jnz  checkSubSp_if_1_B_3
jz   isdigitSubSp_B_3


checkSubSp_if_1_B_3 :
mov bh, 31h
cmp al, bh
jnz  checkSubSp_if_2_B_3
jz   isdigitSubSp_B_3


checkSubSp_if_2_B_3 :
mov bh, 32h
cmp al, bh
jnz  checkSubSp_if_3_B_3
jz   isdigitSubSp_B_3


checkSubSp_if_3_B_3 :
mov bh, 33h
cmp al, bh
jnz  checkSubSp_if_4_B_3
jz   isdigitSubSp_B_3


checkSubSp_if_4_B_3 :
mov bh, 34h
cmp al, bh
jnz  checkSubSp_if_5_B_3
jz   isdigitSubSp_B_3


checkSubSp_if_5_B_3 :
mov bh, 35h
cmp al, bh
jnz  checkSubSp_if_6_B_3
jz   isdigitSubSp_B_3


checkSubSp_if_6_B_3 :
mov bh, 36h
cmp al, bh
jnz  checkSubSp_if_7_B_3
jz   isdigitSubSp_B_3

checkSubSp_if_7_B_3 :
mov bh, 37h
cmp al, bh
jnz  checkSubSp_if_8_B_3
jz   isdigitSubSp_B_3


checkSubSp_if_8_B_3 :
mov bh, 38h
cmp al, bh
jnz  checkSubSp_if_9_B_3
jz   isdigitSubSp_B_3

checkSubSp_if_9_B_3 :
mov bh, 39h
cmp al, bh
jnz  isletterSubSp_B_3
jz   isdigitSubSp_B_3
isdigitSubSp_B_3:; reg_Ax_1 + 5 is unit
sub al, 30h
add cl, al
jmp  finish_checkSubSp_digits_and_letters_of_input_B
isletterSubSp_B_3 :
sub al, 60h
add al, 9h
add cl, al
finish_checkSubSp_digits_and_letters_of_input_B :
mov ax, cx
mov dx,real_reg_SP_2
sub dx,ax
mov real_reg_SP_2,dx
jmp continue
getRegisterName_sp_sub_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_operand_2
int 21h
; receive input from user
mov ah, 0AH
mov dx, offset operand_2
int 21h

;check if register is ax or al or ah
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkSpSub_4
jnz another_register_name_checkSpSub_1_4


Ax_checkSpSub_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sp_sub_ax
jnz another_compareSpSub_of_ax_1_7


sp_sub_ax :
mov ax, real_reg_sp_2
mov bx, real_reg_ax_2
sub ax, bx
mov real_reg_sp_2, ax
jmp continue

another_compareSpSub_of_ax_1_7 :
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareSpSub_of_ax_2_7

    another_compareSpSub_of_ax_2_7 :
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz another_register_name_checkSpSub_1_4



another_register_name_checkSpSub_1_4:
; check if register is bx
mov si, offset[operand_2 + 2]
mov bl, 62h; ascii of b
cmp bl, [si]
jz bx_checkSpSub_4
jnz another_register_name_checkSpSub_2_4

bx_checkSpSub_4 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sp_sub_bx
jnz another_compareSpSub_of_cx_bx_1_4


sp_sub_bx :
mov ax, real_reg_sp_2
mov bx, real_reg_bx_2
sub ax, bx
mov real_reg_sp_2, ax
jmp continue

another_compareSpSub_of_cx_bx_1_4 :
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareSpSub_of_bx_2_4

    another_compareSpSub_of_bx_2_4 :
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareSpSub_BP_4




; to check if register is BP or not
compareSpSub_BP_4:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sp_sub_BP
jnz error_register_name

sp_sub_BP :
mov ax, real_reg_sp_2
mov bx, real_reg_BP_2
sub ax, bx
mov real_reg_sp_2, ax
jmp continue

another_register_name_checkSpSub_2_4 :
    ; check if register is cx
    mov si, offset[operand_2 + 2]
    mov bl, 63h; ascii of c
    cmp bl, [si]
    jz cX_checkSpSub_4
    jnz another_register_name_checkSpSub_3_4


    cx_checkSpSub_4 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sp_sub_cx
jnz error_register_name

sp_sub_cx :
mov ax, real_reg_sp_2
mov bx, real_reg_cx_2
sub ax, bx
mov real_reg_sp_2, ax
jmp continue

another_compareSpSub_of_cx_1_4 :
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareSpSub_of_cx_2_4

    jmp continue

    another_compareSpSub_of_cx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkSpSub_3_4 :
; check if register is dx or dl or dh
mov si, offset[operand_2 + 2]
mov bl, 64h; ascii of d
cmp bl, [si]
jz dX_checkSpSub_4
jnz another_register_name_checkSpSub_4_4


dx_checkSpSub_4 :
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sp_sub_dx
jnz another_compareSpSub_of_dx_1_4

sp_sub_dx :
mov ax, real_reg_sp_2
mov bx, real_reg_dx_2
sub ax, bx
mov real_reg_sp_2, ax
jmp continue

another_compareSpSub_of_dx_1_4 :
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareSpSub_of_dx_2_4

    another_compareSpSub_of_dx_2_4 :
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareSpSub_DI_4

; to check if register is DI or not
compareSpSub_DI_4:
mov bl, 69h; ascii of i
cmp bl, [si]
jz sp_sub_DI
jnz error_register_name

sp_sub_DI :
mov ax, real_reg_sp_2
mov bx, real_reg_di_2
sub ax, bx
mov real_reg_sp_2, ax
jmp continue

another_register_name_checkSpSub_4_4 :
    mov bl, 73h; ascii of s
    cmp bl, [si]
    jz checkSpSub_si_4
    jnz error_register_name

    checkSpSub_si_4 :
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz sp_sub_si
jnz checkSpSub_sp_4

sp_sub_si :
mov ax, real_reg_sp_2
mov bx, real_reg_si_2
sub ax, bx
mov real_reg_sp_2, ax
jmp continue

checkSpSub_sp_4 :
mov bl, 70h; ascii of p
cmp bl, [si]
jz sp_sub_sp
jnz error_register_name

sp_sub_sp :
mov ax, real_reg_sp_2
mov bx, real_reg_sp_2
sub ax, bx
mov real_reg_sp_2, ax
jmp continue

;;;;;;;;sp_sub_?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;endofcode
jmp continue
 
            





  
    






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;command_SUB;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;mov_command;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;startofcode
mov_command:
getRegistername_Mov_Op1:
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
mov si,offset [operand_1+2]
mov bl,61h  ;ascii of a 
cmp bl,[si]
jz AXCheckMov
jnz AnotherRegisterNameCheckMov

AnotherRegisterNameCheckMov:
mov bl,62h ;ascii of b
cmp bl,[si]
jz  bxCheckMov
jnz AnotherRegisterNameCheckMov1

AXCheckMov:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz axMovOp2
jnz AnotherCompareOfaxMov

AnotherCompareOfaxMov:
mov bl,68h ;ascii of h
cmp bl,[si]
jz ahMovOp2
jnz AnotherCompareOfaxMov2

AnotherCompareOfaxMov2:
mov bl,6ch ;ascii of l
cmp bl,[si]
jz alMovOp2
jnz error_Register_name

bxCheckMov:
mov bl,78h  ;ascii of x
inc si
cmp bl,[si]
jz bxMovOp2
jnz AnotherCompareOfbxMov

AnotherCompareOfbxMov:
mov bl,68h ;ascii of h
cmp bl,[si]
jz bhMovOp2
jnz AnotherCompareOfbxMov2

AnotherCompareOfbxMov2:
mov bl,6ch ;ascii of l
cmp bl,[si]
jz blMovOp2
jnz MovcompareBP

MovcompareBP:
mov bl,70h ;ascii of p
cmp bl,[si]
jz BPMovOp2
jnz error_Register_name

AnotherRegisterNameCheckMov1:
mov bl,63h ;ascii of c
cmp bl,[si]
jz CxChecKMov
jnz AnotherRegisterNameCheckMov2
CxCheckMov:
mov bl,78h ;ascii of x
inc si
cmp bl,[si]
jz CxMovOp2
jnz AnotherCompareOfcxMov

AnotherCompareOfcxMov:
mov bl,68h ;ascii of h
cmp bl,[si]
jz ChMovOp2
jnz AnotherCompareOfcxMov1


AnotherCompareOfcxMov1:
mov bl,6ch ;ascii of l
cmp bl,[si]
jz ClMovOp2
jnz error_Register_name

AnotherRegisterNameCheckMov2:
mov bl,64h ;ascii of d
cmp bl,[si]
jz DxCheckMov
jnz AnotherRegisterNameCheckMov3

DxCheckMov:
mov bl,78h ;ascii of x
inc si 
cmp bl,[si]
jz dxMovOp2
jnz AnotherCompareOfdxMov1

AnotherCompareOfdxMov1:
mov bl,68h ;ascii of h
cmp bl,[si]
jz dhMovOp2
jnz AnotherCompareOfdxMov2

AnotherCompareOfdxMov2:
mov bl,6ch ;ascii of l
cmp bl,[si]
jz dlMovOp2
jnz MovCompareDI

MovCompareDI:
mov bl,69h ;ascii of i
cmp bl,[si]
jz diMovOp2
jnz error_Register_name

AnotherRegisterNameCheckMov3:
mov bl,73h ;ascii of s
cmp bl,[si]
jz SiCheckMov
jnz error_Register_name

SiCheckMov:
mov bl,69h ;ascii of i
inc si
cmp bl,[si]
jz siMovOp2
jnz SpCheckMov

SpCheckMov:
mov bl,70h ;ascii of p
cmp bl,[si]
jz spMovOp2
jnz error_Register_name


axMovOp2:
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
        jz getRegisterName_mov_op2
        cmp ah,bl 
        jz getValue_ax_mov_op2
        


getValue_ax_mov_op2:
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
jnz  checkMovAx_if_1_B
jz   isdigitMovAx_B

checkMovAx_if_1_B:
mov bh, 31h
cmp al, bh
jnz  checkMovAx_if_2_B
jz   isdigitMovAx_B

checkMovAx_if_2_B:
mov bh, 32h
cmp al, bh
jnz  checkMovAx_if_3_B
jz   isdigitMovAx_B

checkMovAx_if_3_B:
mov bh, 33h
cmp al, bh
jnz  checkMovAx_if_4_B
jz   isdigitMovAx_B

checkMovAx_if_4_B:
mov bh, 34h
cmp al, bh
jnz  checkMovAx_if_5_B
jz   isdigitMovAx_B


checkMovAx_if_5_B:
mov bh, 35h
cmp al, bh
jnz  checkMovAx_if_6_B
jz   isdigitMovAx_B


checkMovAx_if_6_B:
mov bh, 36h
cmp al, bh
jnz  checkMovAx_if_7_B
jz   isdigitMovAx_B


checkMovAx_if_7_B:
mov bh, 37h
cmp al, bh
jnz  checkMovAx_if_8_B
jz   isdigitMovAx_B


checkMovAx_if_8_B:
mov bh, 38h
cmp al, bh
jnz  checkMovAx_if_9_B
jz   isdigitMovAx_B


checkMovAx_if_9_B:
mov bh, 39h
cmp al, bh
jnz  isletterMovAx_B
jz   isdigitMovAx_B




isdigitMovAx_B:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovAx_2nd_char_B

isletterMovAx_B:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovAx_2nd_char_B


checkMovAx_2nd_char_B:
mov al, value + 3
mov bh, 30h
cmp al, bh
jnz  checkMovAx_if_1_B_1
jz   isdigitMovAx_B_1


checkMovAx_if_1_B_1:
mov bh, 31h
cmp al, bh
jnz  checkMovAx_if_2_B_1
jz   isdigitMovAx_B_1


checkMovAx_if_2_B_1:
mov bh, 32h
cmp al, bh
jnz  checkMovAx_if_3_B_1
jz   isdigitMovAx_B_1


checkMovAx_if_3_B_1:
mov bh, 33h
cmp al, bh
jnz  checkMovAx_if_4_B_1
jz   isdigitMovAx_B_1


checkMovAx_if_4_B_1:
mov bh, 34h
cmp al, bh
jnz  checkMovAx_if_5_B_1
jz   isdigitMovAx_B_1


checkMovAx_if_5_B_1:
mov bh, 35h
cmp al, bh
jnz  checkMovAx_if_6_B_1
jz   isdigitMovAx_B_1


checkMovAx_if_6_B_1:
mov bh, 36h
cmp al, bh
jnz  checkMovAx_if_7_B_1
jz   isdigitMovAx_B_1


checkMovAx_if_7_B_1:
mov bh, 37h
cmp al, bh
jnz  checkMovAx_if_8_B_1
jz   isdigitMovAx_B_1


checkMovAx_if_8_B_1:
mov bh, 38h
cmp al, bh
jnz  checkMovAx_if_9_B_1
jz   isdigitMovAx_B_1


checkMovAx_if_9_B_1:
mov bh, 39h
cmp al, bh
jnz  isletterMovAx_B_1
jz   isdigitMovAx_B_1



isdigitMovAx_B_1:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  checkMovAx_3rd_char_B


isletterMovAx_B_1:
sub al, 60h
add al, 9h
add ch, al

jmp  checkMovAx_3rd_char_B
checkMovAx_3rd_char_B:
mov al, value + 4
mov bh, 30h
cmp al, bh
jnz  checkMovAx_if_1_B_2
jz   isdigitMovAx_B_2

checkMovAx_if_1_B_2:
mov bh, 31h
cmp al, bh
jnz  checkMovAx_if_2_B_2
jz   isdigitMovAx_B_2

checkMovAx_if_2_B_2:
mov bh, 32h
cmp al, bh
jnz  checkMovAx_if_3_B_2
jz   isdigitMovAx_B_2

checkMovAx_if_3_B_2:
mov bh, 33h
cmp al, bh
jnz  checkMovAx_if_4_B_2
jz   isdigitMovAx_B_2

checkMovAx_if_4_B_2:
mov bh, 34h
cmp al, bh
jnz  checkMovAx_if_5_B_2
jz   isdigitMovAx_B_2


checkMovAx_if_5_B_2:
mov bh, 35h
cmp al, bh
jnz  checkMovAx_if_6_B_2
jz   isdigitMovAx_B_2

checkMovAx_if_6_B_2:
mov bh, 36h
cmp al, bh
jnz  checkMovAx_if_7_B_2
jz   isdigitMovAx_B_2


checkMovAx_if_7_B_2:
mov bh, 37h
cmp al, bh
jnz  checkMovAx_if_8_B_2
jz   isdigitMovAx_B_2


checkMovAx_if_8_B_2:
mov bh, 38h
cmp al, bh
jnz  checkMovAx_if_9_B_2
jz   isdigitMovAx_B_2


checkMovAx_if_9_B_2:
mov bh, 39h
cmp al, bh
jnz  isletterMovAx_B_2
jz   isdigitMovAx_B_2



isdigitMovAx_B_2:; reg_Ax_1 + 4 is tens
sub al, 30h
mov bl, 10h
mul bl
mov cl, al


jmp  checkMovAx_4th_char_B


isletterMovAx_B_2:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov cl, al


checkMovAx_4th_char_B:

mov al, value + 5
mov bh, 30h
cmp al, bh
jnz  checkMovAx_if_1_B_3
jz   isdigitMovAx_B_3


checkMovAx_if_1_B_3:
mov bh, 31h
cmp al, bh
jnz  checkMovAx_if_2_B_3
jz   isdigitMovAx_B_3


checkMovAx_if_2_B_3:
mov bh, 32h
cmp al, bh
jnz  checkMovAx_if_3_B_3
jz   isdigitMovAx_B_3


checkMovAx_if_3_B_3:
mov bh, 33h
cmp al, bh
jnz  checkMovAx_if_4_B_3
jz   isdigitMovAx_B_3


checkMovAx_if_4_B_3:
mov bh, 34h
cmp al, bh
jnz  checkMovAx_if_5_B_3
jz   isdigitMovAx_B_3


checkMovAx_if_5_B_3:
mov bh, 35h
cmp al, bh
jnz  checkMovAx_if_6_B_3
jz   isdigitMovAx_B_3


checkMovAx_if_6_B_3:
mov bh, 36h
cmp al, bh
jnz  checkMovAx_if_7_B_3
jz   isdigitMovAx_B_3

checkMovAx_if_7_B_3:
mov bh, 37h
cmp al, bh
jnz  checkMovAx_if_8_B_3
jz   isdigitMovAx_B_3


checkMovAx_if_8_B_3:
mov bh, 38h
cmp al, bh
jnz  checkMovAx_if_9_B_3
jz   isdigitMovAx_B_3

checkMovAx_if_9_B_3:
mov bh, 39h
cmp al, bh
jnz  isletterMovAx_B_3
jz   isdigitMovAx_B_3



isdigitMovAx_B_3:; reg_Ax_1 + 5 is unit
sub al, 30h
add cl, al


jmp  finish_checkMovAx_digits_and_letters_of_input_B

isletterMovAx_B_3:
sub al, 60h
add al, 9h
add cl, al


finish_checkMovAx_digits_and_letters_of_input_B:

mov ax, cx

mov real_reg_Ax_2,ax
jmp continue

getRegisterName_mov_op2:
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



mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkMovAx_4
jnz another_register_name_checkMovAx_1_4


Ax_checkMovAx_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz ax_mov_ax
jnz  another_compareMovAx_of_ax_1_4

ax_mov_ax:
mov ax, real_reg_Ax_2
mov bx, real_reg_Ax_2
mov ax, bx
mov real_reg_Ax_2, ax
jmp continue

another_compareMovAx_of_ax_1_4:
	mov bl, 68h; ascii of h
	cmp bl, [si]
	jz sizemismatch
	jnz another_compareMovAx_of_ax_2_4

another_compareMovAx_of_ax_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_Register_name




another_register_name_checkMovAx_1_4:
; checkMovAx if register is bx
mov si, offset[operand_2 + 2]
mov bl, 62h; ascii of b
cmp bl, [si]
jz bx_checkMovAx_4
jnz another_register_name_checkMovAx_2_4

bx_checkMovAx_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz ax_mov_bx
jnz another_compareMovAx_of_bx_1_4


ax_mov_bx:
mov ax, real_reg_ax_2
mov bx, real_reg_bx_2
mov ax, bx
mov real_reg_ax_2, ax
jmp continue

another_compareMovAx_of_bx_1_4:
mov bl, 68h; ascii of h
cmp bl, [si]
jz sizemismatch
jnz another_compareMovAx_of_bx_2_4

another_compareMovAx_of_bx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareMovAx_BP_4




; to checkMovAx if register is BP or not
compareMovAx_BP_4:
mov bl, 70h; ascii of p
cmp bl, [si]
jz ax_mov_BP
jnz error_Register_name

ax_mov_BP:
mov ax, real_reg_ax_2
mov bx, real_reg_BP_2
mov ax, bx
mov real_reg_ax_2, ax
jmp continue

another_register_name_checkMovAx_2_4:
; checkMovAx if register is cx
mov si, offset[operand_2 + 2]
mov bl, 63h; ascii of c
cmp bl, [si]
jz cX_checkMovAx_4
jnz another_register_name_checkMovAx_3_4


cx_checkMovAx_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz ax_mov_cx
jnz error_Register_name

ax_mov_cx:
mov ax, real_reg_ax_2
mov bx, real_reg_cx_2
mov ax, bx
mov real_reg_ax_2, ax
jmp continue

another_compareMovAx_of_cx_1_4:
mov bl, 68h; ascii of h
cmp bl, [si]
jz sizemismatch
jnz another_compareMovAx_of_cx_2_4
jmp continue

another_compareMovAx_of_cx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkMovAx_3_4:
; checkMovAx if register is dx or dl or dh
mov si, offset[operand_2 + 2]
mov bl, 64h; ascii of d
cmp bl, [si]
jz dX_checkMovAx_4
jnz another_register_name_checkMovAx_4_4


dx_checkMovAx_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz ax_mov_dx
jnz another_compareMovAx_of_dx_1_4

ax_mov_dx:
mov ax, real_reg_ax_2
mov bx, real_reg_dx_2
mov ax, bx
mov real_reg_ax_2, ax
jmp continue

another_compareMovAx_of_dx_1_4:
mov bl, 68h; ascii of h
cmp bl, [si]
jz sizemismatch
jnz another_compareMovAx_of_dx_2_4

another_compareMovAx_of_dx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareMovAx_DI_4

; to checkMovAx if register is DI or not
compareMovAx_DI_4:
mov bl, 69h; ascii of i
cmp bl, [si]
jz ax_mov_DI
jnz error_Register_name

ax_mov_DI:
mov ax, real_reg_ax_2
mov bx, real_reg_di_2
mov ax, bx
mov real_reg_ax_2, ax
jmp continue

another_register_name_checkMovAx_4_4:
mov bl, 73h; ascii of s
cmp bl, [si]
jz checkMovAx_si_4
jnz error_Register_name

checkMovAx_si_4:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz ax_mov_si
jnz checkMovAx_sp_4

ax_mov_si:
mov ax, real_reg_ax_2
mov bx, real_reg_si_2
mov ax, bx
mov real_reg_ax_2, ax
jmp continue

checkMovAx_sp_4:
mov bl, 70h; ascii of p
cmp bl, [si]
jz ax_mov_sp
jnz error_Register_name

ax_mov_sp:
mov ax, real_reg_ax_2
mov bx, real_reg_sp_2
mov ax, bx
mov real_reg_ax_2, ax
jmp continue

;;;;;;;;;;;;;;;;;;;;;;;AxMovOp2;;;;;;;;;;;;;;;;;;endofcode

;;;;;;;;;;;;;;;;;;Ahmovop2:;;;;;;;;;;;;;;;;;;;;;startofcode
ahMovOp2:
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
        jz getRegisterName_ah_mov_op2
        cmp ah,bl 
        jz getValue_ah_mov_op2
        
         
        
        
getValue_ah_mov_op2:
mov ah,9
 mov dx,offset newline
 int 21h 
 
mov ah,9
mov dx,offset Mess_value
int 21h

mov ah,0AH 
mov dx,offset value2        
int 21h 

mov al, value2 + 2
mov bh, 30h
cmp al, bh
jnz  checkMovAh_if_1_
jz   isdigitMovAh_

checkMovAh_if_1_:
mov bh, 31h
cmp al, bh
jnz  checkMovAh_if_2_
jz   isdigitMovAh_

checkMovAh_if_2_:
mov bh, 32h
cmp al, bh
jnz  checkMovAh_if_3_
jz   isdigitMovAh_

checkMovAh_if_3_:
mov bh, 33h
cmp al, bh
jnz  checkMovAh_if_4_
jz   isdigitMovAh_

checkMovAh_if_4_:
mov bh, 34h
cmp al, bh
jnz  checkMovAh_if_5_
jz   isdigitMovAh_


checkMovAh_if_5_:
mov bh, 35h
cmp al, bh
jnz  checkMovAh_if_6_
jz   isdigitMovAh_


checkMovAh_if_6_:
mov bh, 36h
cmp al, bh
jnz  checkMovAh_if_7_
jz   isdigitMovAh_


checkMovAh_if_7_:
mov bh, 37h
cmp al, bh
jnz  checkMovAh_if_8_
jz   isdigitMovAh_


checkMovAh_if_8_:
mov bh, 38h
cmp al, bh
jnz  checkMovAh_if_9_
jz   isdigitMovAh_


checkMovAh_if_9_:
mov bh, 39h
cmp al, bh
jnz  isletterMovAh_
jz   isdigitMovAh_




isdigitMovAh_:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovAh_2nd_char_

isletterMovAh_:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovAh_2nd_char_


checkMovAh_2nd_char_:
mov al, value2 + 3
mov bh, 30h
cmp al, bh
jnz  checkMovAh_if_1_1_
jz   isdigitMovAh_1_


checkMovAh_if_1_1_:
mov bh, 31h
cmp al, bh
jnz  checkMovAh_if_2_1_
jz   isdigitMovAh_1_


checkMovAh_if_2_1_:
mov bh, 32h
cmp al, bh
jnz  checkMovAh_if_3_1_
jz   isdigitMovAh_1_


checkMovAh_if_3_1_:
mov bh, 33h
cmp al, bh
jnz  checkMovAh_if_4_1_
jz   isdigitMovAh_1_


checkMovAh_if_4_1_:
mov bh, 34h
cmp al, bh
jnz  checkMovAh_if_5_1_
jz   isdigitMovAh_1_


checkMovAh_if_5_1_:
mov bh, 35h
cmp al, bh
jnz  checkMovAh_if_6_1_
jz   isdigitMovAh_1_


checkMovAh_if_6_1_:
mov bh, 36h
cmp al, bh
jnz  checkMovAh_if_7_1_
jz   isdigitMovAh_1_


checkMovAh_if_7_1_:
mov bh, 37h
cmp al, bh
jnz  checkMovAh_if_8_1_
jz   isdigitMovAh_1_


checkMovAh_if_8_1_:
mov bh, 38h
cmp al, bh
jnz  checkMovAh_if_9_1_
jz   isdigitMovAh_1_


checkMovAh_if_9_1_:
mov bh, 39h
cmp al, bh
jnz  isletterMovAh_1_
jz   isdigitMovAh_1_



isdigitMovAh_1_:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  finish_checkMovAh_digits_and_letters_of_input_


isletterMovAh_1_:
sub al, 60h
add al, 9h
add ch, al

jmp  finish_checkMovAh_digits_and_letters_of_input_


finish_checkMovAh_digits_and_letters_of_input_:

mov ax, cx
mov byte ptr real_reg_ax_2+1, ah
jmp continue

getRegisterName_ah_mov_op2:
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

 mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkAhMov_5
jnz another_register_name_checkAhMov_1_5


Ax_checkAhMov_5:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovAh_ax_1_5

another_compareMovAh_ax_1_5:
mov bl, 68h; ascii of h
cmp bl, [si]
jz ah_mov_ah
jnz another_compareMovAh_of_ax_2_5


ah_mov_ah:
mov ah, byte ptr real_reg_Ax_2 + 1
mov bh, byte ptr real_reg_Ax_2 + 1
mov ah, bh
mov byte ptr real_reg_Ax_2 + 1, ah
jmp continue

another_compareMovAh_of_ax_2_5:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz ah_mov_al
jnz error_Register_name

ah_mov_al:
mov ah, byte ptr real_reg_Ax_2 + 1
mov bh, byte ptr real_reg_Ax_2
mov ah, bh
mov byte ptr real_reg_Ax_2 + 1, ah
jmp continue


another_register_name_checkAhMov_1_5:
;checkAhMov if register is bx
mov si, offset[operand_2 + 2]
mov bl, 62h; ascii of b
cmp bl, [si]
jz bx_checkAhMov_5
jnz another_register_name_checkAhMov_2_5

bx_checkAhMov_5:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovAh_of_bx_1_5


another_compareMovAh_of_bx_1_5:
mov bl, 68h; ascii of h
cmp bl, [si]
jz ah_mov_bh
jnz another_compareMovAh_of_bx_2_5

ah_mov_bh:
mov ah, byte ptr real_reg_Ax_2 + 1
mov bh, byte ptr real_reg_bx_2 + 1
mov ah, bh
mov byte ptr real_reg_Ax_2 + 1, ah
jmp continue


another_compareMovAh_of_bx_2_5:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz ah_mov_bl
jnz compareMovAh_BP_5


ah_mov_bl:
mov ah, byte ptr real_reg_Ax_2 + 1
mov bh, byte ptr real_reg_bx_2
mov ah, bh
mov byte ptr real_reg_Ax_2 + 1, ah
jmp continue

; to checkAhMov if register is BP or not
compareMovAh_BP_5:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkAhMov_2_5:
; checkAhMov if register is cx
mov si, offset[operand_2 + 2]
mov bl, 63h; ascii of c
cmp bl, [si]
jz cX_checkAhMov_5
jnz another_register_name_checkAhMov_3_5


cx_checkAhMov_5:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovAh_of_cx_1_5


another_compareMovAh_of_cx_1_5:
mov bl, 68h; ascii of h
cmp bl, [si]
jz ah_mov_ch
jnz another_compareMovAh_of_cx_2_5

ah_mov_ch:
mov ah, byte ptr real_reg_Ax_2 + 1
mov bh, byte ptr real_reg_cx_2 + 1
mov ah, bh
mov byte ptr real_reg_Ax_2 + 1, ah
jmp continue


another_compareMovAh_of_cx_2_5:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz ah_mov_cl
jnz error_Register_name

ah_mov_cl:
mov ah, byte ptr real_reg_Ax_2 + 1
mov bh, byte ptr real_reg_cx_2
mov ah, bh
mov byte ptr real_reg_Ax_2 + 1, ah
jmp continue


another_register_name_checkAhMov_3_5:
;checkAhMov if register is dx or dl or dh
mov si, offset[operand_2 + 2]
mov bl, 64h; ascii of d
cmp bl, [si]
jz dX_checkAhMov_5
jnz another_register_name_checkAhMov_4_5


dx_checkAhMov_5:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovAh_of_dx_1_5


another_compareMovAh_of_dx_1_5:
mov bl, 68h; ascii of h
cmp bl, [si]
jz ah_mov_dh
jnz another_compareMovAh_of_dx_2_5

ah_mov_dh:
mov ah, byte ptr real_reg_Ax_2 + 1
mov bh, byte ptr real_reg_dx_2 + 1
mov ah, bh
mov byte ptr real_reg_Ax_2 + 1, ah
jmp continue

another_compareMovAh_of_dx_2_5:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz ah_mov_dl
jnz compareMovAh_DI_5

ah_mov_dl:
mov ah, byte ptr real_reg_Ax_2 + 1
mov bh, byte ptr real_reg_dx_2
mov ah, bh
mov byte ptr real_reg_Ax_2 + 1, ah
jmp continue

; to checkAhMov if register is DI or not
compareMovAh_DI_5:
mov bl, 69h; ascii of i
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkAhMov_4_5:
mov bl, 73h; ascii of s
cmp bl, [si]
jz checkAhMov_si_5
jnz error_Register_name

checkAhMov_si_5:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz sizemismatch
jnz checkAhMov_sp_5

checkAhMov_sp_5:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_Register_name       

;;;;;;;;;;;;;;;;AhmovOp2;;;;;;;;;;;;;;;;;;;;;endofcode

;;;;;;;;;;;;;;;;AlmovOp2;;;;;;;;;;;;;;;;;;;;startofcode
alMovOp2:
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
        jz getRegisterName_al_mov_op2
        cmp ah,bl 
        jz getValue_al_mov_op2
        
         
        
        
getValue_al_mov_op2:
mov ah,9
 mov dx,offset newline
 int 21h 
 
mov ah,9
mov dx,offset Mess_value
int 21h

mov ah,0AH 
mov dx,offset value2        
int 21h

mov al, value2 + 2
mov bh, 30h
cmp al, bh
jnz  checkMovAl_if_1_
jz   isdigitMovAl_

checkMovAl_if_1_:
mov bh, 31h
cmp al, bh
jnz  checkMovAl_if_2_
jz   isdigitMovAl_

checkMovAl_if_2_:
mov bh, 32h
cmp al, bh
jnz  checkMovAl_if_3_
jz   isdigitMovAl_

checkMovAl_if_3_:
mov bh, 33h
cmp al, bh
jnz  checkMovAl_if_4_
jz   isdigitMovAl_

checkMovAl_if_4_:
mov bh, 34h
cmp al, bh
jnz  checkMovAl_if_5_
jz   isdigitMovAl_


checkMovAl_if_5_:
mov bh, 35h
cmp al, bh
jnz  checkMovAl_if_6_
jz   isdigitMovAl_


checkMovAl_if_6_:
mov bh, 36h
cmp al, bh
jnz  checkMovAl_if_7_
jz   isdigitMovAl_


checkMovAl_if_7_:
mov bh, 37h
cmp al, bh
jnz  checkMovAl_if_8_
jz   isdigitMovAl_


checkMovAl_if_8_:
mov bh, 38h
cmp al, bh
jnz  checkMovAl_if_9_
jz   isdigitMovAl_


checkMovAl_if_9_:
mov bh, 39h
cmp al, bh
jnz  isletterMovAl_
jz   isdigitMovAl_




isdigitMovAl_:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovAl_2nd_char_

isletterMovAl_:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovAl_2nd_char_


checkMovAl_2nd_char_:
mov al, value2 + 3
mov bh, 30h
cmp al, bh
jnz  checkMovAl_if_1_1_
jz   isdigitMovAl_1_


checkMovAl_if_1_1_:
mov bh, 31h
cmp al, bh
jnz  checkMovAl_if_2_1_
jz   isdigitMovAl_1_


checkMovAl_if_2_1_:
mov bh, 32h
cmp al, bh
jnz  checkMovAl_if_3_1_
jz   isdigitMovAl_1_


checkMovAl_if_3_1_:
mov bh, 33h
cmp al, bh
jnz  checkMovAl_if_4_1_
jz   isdigitMovAl_1_


checkMovAl_if_4_1_:
mov bh, 34h
cmp al, bh
jnz  checkMovAl_if_5_1_
jz   isdigitMovAl_1_


checkMovAl_if_5_1_:
mov bh, 35h
cmp al, bh
jnz  checkMovAl_if_6_1_
jz   isdigitMovAl_1_


checkMovAl_if_6_1_:
mov bh, 36h
cmp al, bh
jnz  checkMovAl_if_7_1_
jz   isdigitMovAl_1_


checkMovAl_if_7_1_:
mov bh, 37h
cmp al, bh
jnz  checkMovAl_if_8_1_
jz   isdigitMovAl_1_


checkMovAl_if_8_1_:
mov bh, 38h
cmp al, bh
jnz  checkMovAl_if_9_1_
jz   isdigitMovAl_1_


checkMovAl_if_9_1_:
mov bh, 39h
cmp al, bh
jnz  isletterMovAl_1_
jz   isdigitMovAl_1_



isdigitMovAl_1_:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  finish_checkMovAl_digits_and_letters_of_input_


isletterMovAl_1_:
sub al, 60h
add al, 9h
add ch, al

jmp  finish_checkMovAl_digits_and_letters_of_input_


finish_checkMovAl_digits_and_letters_of_input_:

mov ax, cx
mov byte ptr real_reg_ax_2,ah
jmp continue
getRegisterName_al_mov_op2:
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

; checkMovAl if register is ax or al or ah
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkMovAl_6
jnz another_register_name_checkMovAl_1_6


Ax_checkMovAl_6:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovAl_ax_1_6

another_compareMovAl_ax_1_6:
mov bl, 68h; ascii of h
cmp bl, [si]
jz al_mov_ah
jnz another_compareMovAl_of_ax_2_6


al_mov_ah:
mov ah, byte ptr real_reg_Ax_2
mov bh, byte ptr real_reg_Ax_2 + 1
mov ah, bh
mov byte ptr real_reg_Ax_2, ah
jmp continue

another_compareMovAl_of_ax_2_6:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz al_mov_al
	jnz error_Register_name

	al_mov_al:
mov ah, byte ptr real_reg_Ax_2
mov bh, byte ptr real_reg_Ax_2
mov ah, bh
mov byte ptr real_reg_Ax_2, ah
jmp continue


another_register_name_checkMovAl_1_6:
	; checkMovAl if register is bx
	mov si, offset[operand_2 + 2]
	mov bl, 62h; ascii of b
	cmp bl, [si]
	jz bx_checkMovAl_6
	jnz another_register_name_checkMovAl_2_6

	bx_checkMovAl_6:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovAl_of_bx_1_6


another_compareMovAl_of_bx_1_6:
mov bl, 68h; ascii of h
cmp bl, [si]
jz al_mov_bh
jnz another_compareMovAl_of_bx_2_6

al_mov_bh:
mov ah, byte ptr real_reg_Ax_2
mov bh, byte ptr real_reg_bx_2 + 1
mov ah, bh
mov byte ptr real_reg_Ax_2, ah
jmp continue


another_compareMovAl_of_bx_2_6:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz al_mov_bl
	jnz compareMovAl_BP_6


	al_mov_bl:
mov ah, byte ptr real_reg_Ax_2
mov bh, byte ptr real_reg_bx_2
mov ah, bh
mov byte ptr real_reg_Ax_2, ah
jmp continue

; to checkMovAl if register is BP or not
compareMovAl_BP_6:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkMovAl_2_6:
; checkMovAl if register is cx
mov si, offset[operand_2 + 2]
mov bl, 63h; ascii of c
cmp bl, [si]
jz cX_checkMovAl_6
jnz another_register_name_checkMovAl_3_6


cx_checkMovAl_6:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovAl_of_cx_1_6


another_compareMovAl_of_cx_1_6:
mov bl, 68h; ascii of h
cmp bl, [si]
jz al_mov_ch
jnz another_compareMovAl_of_cx_2_6

al_mov_ch:
mov ah, byte ptr real_reg_Ax_2
mov bh, byte ptr real_reg_cx_2 + 1
mov ah, bh
mov byte ptr real_reg_Ax_2, ah
jmp continue


another_compareMovAl_of_cx_2_6:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz al_mov_cl
	jnz error_Register_name

	al_mov_cl:
mov ah, byte ptr real_reg_Ax_2
mov bh, byte ptr real_reg_cx_2
mov ah, bh
mov byte ptr real_reg_Ax_2, ah
jmp continue


another_register_name_checkMovAl_3_6:
	; checkMovAl if register is dx or dl or dh
	mov si, offset[operand_2 + 2]
	mov bl, 64h; ascii of d
	cmp bl, [si]
	jz dX_checkMovAl_6
	jnz another_register_name_checkMovAl_4_6


	dx_checkMovAl_6:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovAl_of_dx_1_6


another_compareMovAl_of_dx_1_6:
mov bl, 68h; ascii of h
cmp bl, [si]
jz al_mov_dh
jnz another_compareMovAl_of_dx_2_6

al_mov_dh:
mov ah, byte ptr real_reg_Ax_2
mov bh, byte ptr real_reg_dx_2 + 1
mov ah, bh
mov byte ptr real_reg_Ax_2, ah
jmp continue

another_compareMovAl_of_dx_2_6:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz al_mov_dl
	jnz compareMovAl_DI_6

	al_mov_dl:
mov ah, byte ptr real_reg_Ax_2
mov bh, byte ptr real_reg_dx_2
mov ah, bh
mov byte ptr real_reg_Ax_2, ah
jmp continue

; to checkMovAl if register is DI or not
compareMovAl_DI_6:
mov bl, 69h; ascii of i
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkMovAl_4_6:
mov bl, 73h; ascii of s
cmp bl, [si]
jz checkMovAl_si_6
jnz error_Register_name

checkMovAl_si_6:
mov bl, 69h; ascii of  i
cmp bl, [si]
jz sizemismatch
jnz checkMovAl_sp_6

checkMovAl_sp_6:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_Register_name
;;;;;;;;;;;;;;AlmovOp2;;;;;;;;;;;;;;;;;;;;;;endofcode
;;;;;;;;;;;bxMovOp2;;;;;;;;;;;;;;;;;;;;;;startofcode
bxMovOp2:
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
        jz getRegisterName_bx_mov_op2
        cmp ah,bl 
        jz getValue_bx_mov_op2
        
         
        
        
getValue_bx_mov_op2:
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
jnz  checkMovBx_if_1_B
jz   isdigitMovBx_B

checkMovBx_if_1_B:
mov bh, 31h
cmp al, bh
jnz  checkMovBx_if_2_B
jz   isdigitMovBx_B

checkMovBx_if_2_B:
mov bh, 32h
cmp al, bh
jnz  checkMovBx_if_3_B
jz   isdigitMovBx_B

checkMovBx_if_3_B:
mov bh, 33h
cmp al, bh
jnz  checkMovBx_if_4_B
jz   isdigitMovBx_B

checkMovBx_if_4_B:
mov bh, 34h
cmp al, bh
jnz  checkMovBx_if_5_B
jz   isdigitMovBx_B


checkMovBx_if_5_B:
mov bh, 35h
cmp al, bh
jnz  checkMovBx_if_6_B
jz   isdigitMovBx_B


checkMovBx_if_6_B:
mov bh, 36h
cmp al, bh
jnz  checkMovBx_if_7_B
jz   isdigitMovBx_B


checkMovBx_if_7_B:
mov bh, 37h
cmp al, bh
jnz  checkMovBx_if_8_B
jz   isdigitMovBx_B


checkMovBx_if_8_B:
mov bh, 38h
cmp al, bh
jnz  checkMovBx_if_9_B
jz   isdigitMovBx_B


checkMovBx_if_9_B:
mov bh, 39h
cmp al, bh
jnz  isletterMovBx_B
jz   isdigitMovBx_B




isdigitMovBx_B:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovBx_2nd_char_B

isletterMovBx_B:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovBx_2nd_char_B


checkMovBx_2nd_char_B:
mov al, value + 3
mov bh, 30h
cmp al, bh
jnz  checkMovBx_if_1_B_1
jz   isdigitMovBx_B_1


checkMovBx_if_1_B_1:
mov bh, 31h
cmp al, bh
jnz  checkMovBx_if_2_B_1
jz   isdigitMovBx_B_1


checkMovBx_if_2_B_1:
mov bh, 32h
cmp al, bh
jnz  checkMovBx_if_3_B_1
jz   isdigitMovBx_B_1


checkMovBx_if_3_B_1:
mov bh, 33h
cmp al, bh
jnz  checkMovBx_if_4_B_1
jz   isdigitMovBx_B_1


checkMovBx_if_4_B_1:
mov bh, 34h
cmp al, bh
jnz  checkMovBx_if_5_B_1
jz   isdigitMovBx_B_1


checkMovBx_if_5_B_1:
mov bh, 35h
cmp al, bh
jnz  checkMovBx_if_6_B_1
jz   isdigitMovBx_B_1


checkMovBx_if_6_B_1:
mov bh, 36h
cmp al, bh
jnz  checkMovBx_if_7_B_1
jz   isdigitMovBx_B_1


checkMovBx_if_7_B_1:
mov bh, 37h
cmp al, bh
jnz  checkMovBx_if_8_B_1
jz   isdigitMovBx_B_1


checkMovBx_if_8_B_1:
mov bh, 38h
cmp al, bh
jnz  checkMovBx_if_9_B_1
jz   isdigitMovBx_B_1


checkMovBx_if_9_B_1:
mov bh, 39h
cmp al, bh
jnz  isletterMovBx_B_1
jz   isdigitMovBx_B_1



isdigitMovBx_B_1:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  checkMovBx_3rd_char_B


isletterMovBx_B_1:
sub al, 60h
add al, 9h
add ch, al

jmp  checkMovBx_3rd_char_B
checkMovBx_3rd_char_B:
mov al, value + 4
mov bh, 30h
cmp al, bh
jnz  checkMovBx_if_1_B_2
jz   isdigitMovBx_B_2

checkMovBx_if_1_B_2:
mov bh, 31h
cmp al, bh
jnz  checkMovBx_if_2_B_2
jz   isdigitMovBx_B_2

checkMovBx_if_2_B_2:
mov bh, 32h
cmp al, bh
jnz  checkMovBx_if_3_B_2
jz   isdigitMovBx_B_2

checkMovBx_if_3_B_2:
mov bh, 33h
cmp al, bh
jnz  checkMovBx_if_4_B_2
jz   isdigitMovBx_B_2

checkMovBx_if_4_B_2:
mov bh, 34h
cmp al, bh
jnz  checkMovBx_if_5_B_2
jz   isdigitMovBx_B_2


checkMovBx_if_5_B_2:
mov bh, 35h
cmp al, bh
jnz  checkMovBx_if_6_B_2
jz   isdigitMovBx_B_2

checkMovBx_if_6_B_2:
mov bh, 36h
cmp al, bh
jnz  checkMovBx_if_7_B_2
jz   isdigitMovBx_B_2


checkMovBx_if_7_B_2:
mov bh, 37h
cmp al, bh
jnz  checkMovBx_if_8_B_2
jz   isdigitMovBx_B_2


checkMovBx_if_8_B_2:
mov bh, 38h
cmp al, bh
jnz  checkMovBx_if_9_B_2
jz   isdigitMovBx_B_2


checkMovBx_if_9_B_2:
mov bh, 39h
cmp al, bh
jnz  isletterMovBx_B_2
jz   isdigitMovBx_B_2



isdigitMovBx_B_2:; reg_Ax_1 + 4 is tens
sub al, 30h
mov bl, 10h
mul bl
mov cl, al


jmp  checkMovBx_4th_char_B


isletterMovBx_B_2:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov cl, al


checkMovBx_4th_char_B:

mov al, value + 5
mov bh, 30h
cmp al, bh
jnz  checkMovBx_if_1_B_3
jz   isdigitMovBx_B_3


checkMovBx_if_1_B_3:
mov bh, 31h
cmp al, bh
jnz  checkMovBx_if_2_B_3
jz   isdigitMovBx_B_3


checkMovBx_if_2_B_3:
mov bh, 32h
cmp al, bh
jnz  checkMovBx_if_3_B_3
jz   isdigitMovBx_B_3


checkMovBx_if_3_B_3:
mov bh, 33h
cmp al, bh
jnz  checkMovBx_if_4_B_3
jz   isdigitMovBx_B_3


checkMovBx_if_4_B_3:
mov bh, 34h
cmp al, bh
jnz  checkMovBx_if_5_B_3
jz   isdigitMovBx_B_3


checkMovBx_if_5_B_3:
mov bh, 35h
cmp al, bh
jnz  checkMovBx_if_6_B_3
jz   isdigitMovBx_B_3


checkMovBx_if_6_B_3:
mov bh, 36h
cmp al, bh
jnz  checkMovBx_if_7_B_3
jz   isdigitMovBx_B_3

checkMovBx_if_7_B_3:
mov bh, 37h
cmp al, bh
jnz  checkMovBx_if_8_B_3
jz   isdigitMovBx_B_3


checkMovBx_if_8_B_3:
mov bh, 38h
cmp al, bh
jnz  checkMovBx_if_9_B_3
jz   isdigitMovBx_B_3

checkMovBx_if_9_B_3:
mov bh, 39h
cmp al, bh
jnz  isletterMovBx_B_3
jz   isdigitMovBx_B_3



isdigitMovBx_B_3:; reg_Ax_1 + 5 is unit
sub al, 30h
add cl, al


jmp  finish_checkMovBx_digits_and_letters_of_input_B

isletterMovBx_B_3:
sub al, 60h
add al, 9h
add cl, al


finish_checkMovBx_digits_and_letters_of_input_B:

mov ax, cx
mov real_reg_Bx_2,ax
jmp continue

getRegisterName_bx_mov_op2:
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
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkMovBx_7
jnz another_register_name_checkMovBx_1_7


Ax_checkMovBx_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz bx_mov_ax
jnz another_compareMovdx_of_ax_1_7

another_compareMovBx_of_ax_1_7:
mov bl, 68h; ascii of h
cmp bl, [si]
jz sizemismatch
jnz another_compareMovBx_of_ax_2_7

another_compareMovBx_of_ax_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_register_name

bx_mov_ax:
mov ax, real_reg_bx_2
mov bx, real_reg_Ax_2
mov ax, bx
mov real_reg_bx_2, ax
jmp continue




another_register_name_checkMovBx_1_7:
; checkMovBx if register is bx
mov si, offset[operand_2 + 2]
mov bl, 62h; ascii of b
cmp bl, [si]
jz bx_checkMovBx_7
jnz another_register_name_checkMovBx_2_7

bx_checkMovBx_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz bx_mov_bx
jnz another_compareMovBx_of_bx_1_7


bx_mov_bx:
mov ax, real_reg_bx_2
mov bx, real_reg_bx_2
mov ax, bx
mov real_reg_bx_2, ax
jmp continue

another_compareMovBx_of_bx_1_7:
mov bl, 68h; ascii of h
cmp bl, [si]
jz sizemismatch
jnz another_compareMovBx_of_bx_2_7

another_compareMovBx_of_bx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareMovBx_BP_7




; to checkMovBx if register is BP or not
compareMovBx_BP_7:
mov bl, 70h; ascii of p
cmp bl, [si]
jz bx_mov_BP
jnz error_Register_name

bx_mov_BP:
mov ax, real_reg_bx_2
mov bx, real_reg_BP_2
mov ax, bx
mov real_reg_bx_2, ax
jmp continue

another_register_name_checkMovBx_2_7:
	; checkMovBx if register is cx
	mov si, offset[operand_2 + 2]
	mov bl, 63h; ascii of c
	cmp bl, [si]
	jz cX_checkMovBx_7
	jnz another_register_name_checkMovBx_3_7


	cx_checkMovBx_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz bx_mov_cx
jnz error_Register_name

bx_mov_cx:
mov ax, real_reg_bx_2
mov bx, real_reg_cx_2
mov ax, bx
mov real_reg_bx_2, ax
jmp continue

another_compareMovBx_of_cx_1_7:
mov bl, 68h; ascii of h
cmp bl, [si]
jz sizemismatch
jnz another_compareMovBx_of_cx_2_7
jmp continue

another_compareMovBx_of_cx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkMovBx_3_7:
;checkMovBx if register is dx or dl or dh
mov si, offset[operand_2 + 2]
mov bl, 64h; ascii of d
cmp bl, [si]
jz dX_checkMovBx_7
jnz another_register_name_checkMovBx_4_7


dx_checkMovBx_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz bx_mov_dx
jnz another_compareMovBx_of_dx_1_7

bx_mov_dx:
mov ax, real_reg_bx_2
mov bx, real_reg_dx_2
mov ax, bx
mov real_reg_bx_2, ax
jmp continue

another_compareMovBx_of_dx_1_7:
	mov bl, 68h; ascii of h
	cmp bl, [si]
	jz sizemismatch
	jnz another_compareMovBx_of_dx_2_7

	another_compareMovBx_of_dx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareMovBx_DI_7

; to checkMovBx if register is DI or not
compareMovBx_DI_7:
mov bl, 69h; ascii of i
cmp bl, [si]
jz bx_mov_DI
jnz error_Register_name

bx_mov_DI:
mov ax, real_reg_bx_2
mov bx, real_reg_di_2
mov ax, bx
mov real_reg_bx_2, ax
jmp continue

another_register_name_checkMovBx_4_7:
	mov bl, 73h; ascii of s
	cmp bl, [si]
	jz checkMovBx_si_7
	jnz error_Register_name

checkMovBx_si_7:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz bx_mov_si
jnz checkMovBx_sp_7

bx_mov_si:
mov ax, real_reg_bx_2
mov bx, real_reg_si_2
mov ax, bx
mov real_reg_bx_2, ax
jmp continue

checkMovBx_sp_7:
	mov bl, 70h; ascii of p
	cmp bl, [si]
	jz bx_mov_sp
	jnz error_Register_name

bx_mov_sp:
mov ax, real_reg_bx_2
mov bx, real_reg_sp_2
mov ax, bx
mov real_reg_bx_2, ax
jmp continue        
;;;;;;;;;;bxMovOp2;;;;;;;;;;;;;;;;;;;;;;endofcode

;;;;;;;;;bhMovOp2;;;;;;;;;;;;;;;;;;;startofcode
bhMovOp2:
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
        jz getRegisterName_bh_mov_op2
        cmp ah,bl 
        jz getValue_bh_mov_op2


getValue_bh_mov_op2:
mov ah,9
 mov dx,offset newline
 int 21h 
 
mov ah,9
mov dx,offset Mess_value
int 21h

mov ah,0AH 
mov dx,offset value2        
int 21h 
mov al, value2 + 2
mov bh, 30h
cmp al, bh
jnz  checkMovBh_if_1_
jz   isdigitMovBh_

checkMovBh_if_1_:
mov bh, 31h
cmp al, bh
jnz  checkMovBh_if_2_
jz   isdigitMovBh_

checkMovBh_if_2_:
mov bh, 32h
cmp al, bh
jnz  checkMovBh_if_3_
jz   isdigitMovBh_

checkMovBh_if_3_:
mov bh, 33h
cmp al, bh
jnz  checkMovBh_if_4_
jz   isdigitMovBh_

checkMovBh_if_4_:
mov bh, 34h
cmp al, bh
jnz  checkMovBh_if_5_
jz   isdigitMovBh_


checkMovBh_if_5_:
mov bh, 35h
cmp al, bh
jnz  checkMovBh_if_6_
jz   isdigitMovBh_


checkMovBh_if_6_:
mov bh, 36h
cmp al, bh
jnz  checkMovBh_if_7_
jz   isdigitMovBh_


checkMovBh_if_7_:
mov bh, 37h
cmp al, bh
jnz  checkMovBh_if_8_
jz   isdigitMovBh_


checkMovBh_if_8_:
mov bh, 38h
cmp al, bh
jnz  checkMovBh_if_9_
jz   isdigitMovBh_


checkMovBh_if_9_:
mov bh, 39h
cmp al, bh
jnz  isletterMovBh_
jz   isdigitMovBh_




isdigitMovBh_:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovBh_2nd_char_

isletterMovBh_:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovBh_2nd_char_


checkMovBh_2nd_char_:
mov al, value2 + 3
mov bh, 30h
cmp al, bh
jnz  checkMovBh_if_1_1_
jz   isdigitMovBh_1_


checkMovBh_if_1_1_:
mov bh, 31h
cmp al, bh
jnz  checkMovBh_if_2_1_
jz   isdigitMovBh_1_


checkMovBh_if_2_1_:
mov bh, 32h
cmp al, bh
jnz  checkMovBh_if_3_1_
jz   isdigitMovBh_1_


checkMovBh_if_3_1_:
mov bh, 33h
cmp al, bh
jnz  checkMovBh_if_4_1_
jz   isdigitMovBh_1_


checkMovBh_if_4_1_:
mov bh, 34h
cmp al, bh
jnz  checkMovBh_if_5_1_
jz   isdigitMovBh_1_


checkMovBh_if_5_1_:
mov bh, 35h
cmp al, bh
jnz  checkMovBh_if_6_1_
jz   isdigitMovBh_1_


checkMovBh_if_6_1_:
mov bh, 36h
cmp al, bh
jnz  checkMovBh_if_7_1_
jz   isdigitMovBh_1_


checkMovBh_if_7_1_:
mov bh, 37h
cmp al, bh
jnz  checkMovBh_if_8_1_
jz   isdigitMovBh_1_


checkMovBh_if_8_1_:
mov bh, 38h
cmp al, bh
jnz  checkMovBh_if_9_1_
jz   isdigitMovBh_1_


checkMovBh_if_9_1_:
mov bh, 39h
cmp al, bh
jnz  isletterMovBh_1_
jz   isdigitMovBh_1_



isdigitMovBh_1_:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  finish_checkMovBh_digits_and_letters_of_input_


isletterMovBh_1_:
sub al, 60h
add al, 9h
add ch, al

jmp  finish_checkMovBh_digits_and_letters_of_input_


finish_checkMovBh_digits_and_letters_of_input_:

mov ax, cx
mov byte ptr real_reg_bx_2+1,ah
jmp continue
getRegisterName_bh_mov_op2:
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

mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkMovBh_8
jnz another_register_name_checkMovBh_1_8


Ax_checkMovBh_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovBh_ax_1_8

another_compareMovBh_ax_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz bh_mov_ah
jnz another_compareMovBh_of_ax_2_8


bh_mov_ah:
mov ah, byte ptr real_reg_bx_2 + 1
mov bh, byte ptr real_reg_Ax_2 + 1
mov ah, bh
mov byte ptr real_reg_bx_2 + 1, ah
jmp continue

another_compareMovBh_of_ax_2_8:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz bh_mov_al
	jnz error_Register_name

	bh_mov_al:
mov ah, byte ptr real_reg_bx_2 + 1
mov bh, byte ptr real_reg_Ax_2
mov ah, bh
mov byte ptr real_reg_bx_2 + 1, ah
jmp continue


another_register_name_checkMovBh_1_8:
	; checkMovBh if register is bx
	mov si, offset[operand_2 + 2]
	mov bl, 62h; ascii of b
	cmp bl, [si]
	jz bx_checkMovBh_8
	jnz another_register_name_checkMovBh_2_8

	bx_checkMovBh_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovBh_of_bx_1_8


another_compareMovBh_of_bx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz bh_mov_bh
jnz another_compareMovBh_of_bx_2_8

bh_mov_bh:
mov ah, byte ptr real_reg_bx_2 + 1
mov bh, byte ptr real_reg_bx_2 + 1
mov ah, bh
mov byte ptr real_reg_bx_2 + 1, ah
jmp continue


another_compareMovBh_of_bx_2_8:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz ah_mov_bl
	jnz compareMovBh_BP_8


	bh_mov_bl:
mov ah, byte ptr real_reg_bx_2 + 1
mov bh, byte ptr real_reg_bx_2
mov ah, bh
mov byte ptr real_reg_bx_2 + 1, ah
jmp continue

; to checkMovBh if register is BP or not
compareMovBh_BP_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkMovBh_2_8:
; checkMovBh if register is cx
mov si, offset[operand_2 + 2]
mov bl, 63h; ascii of c
cmp bl, [si]
jz cX_checkMovBh_8
jnz another_register_name_checkMovBh_3_8


cx_checkMovBh_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovBh_of_cx_1_8


another_compareMovBh_of_cx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz bh_mov_ch
jnz another_compareMovBh_of_cx_2_8

bh_mov_ch:
mov ah, byte ptr real_reg_bx_2 + 1
mov bh, byte ptr real_reg_cx_2 + 1
mov ah, bh
mov byte ptr real_reg_bx_2 + 1, ah
jmp continue


another_compareMovBh_of_cx_2_8:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz bh_mov_cl
	jnz error_Register_name

	bh_mov_cl:
mov ah, byte ptr real_reg_bx_2 + 1
mov bh, byte ptr real_reg_cx_2
mov ah, bh
mov byte ptr real_reg_bx_2 + 1, ah
jmp continue


another_register_name_checkMovBh_3_8:
	; checkMovBh if register is dx or dl or dh
	mov si, offset[operand_2 + 2]
	mov bl, 64h; ascii of d
	cmp bl, [si]
	jz dX_checkMovBh_8
	jnz another_register_name_checkMovBh_4_8


	dx_checkMovBh_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovBh_of_dx_1_8


another_compareMovBh_of_dx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz bh_mov_dh
jnz another_compareMovBh_of_dx_2_8

bh_mov_dh:
mov ah, byte ptr real_reg_bx_2 + 1
mov bh, byte ptr real_reg_dx_2 + 1
mov ah, bh
mov byte ptr real_reg_bx_2 + 1, ah
jmp continue

another_compareMovBh_of_dx_2_8:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz bh_mov_dl
	jnz compareMovBh_DI_8

	bh_mov_dl:
mov ah, byte ptr real_reg_bx_2 + 1
mov bh, byte ptr real_reg_dx_2
mov ah, bh
mov byte ptr real_reg_bx_2 + 1, ah
jmp continue

; to checkMovBh if register is DI or not
compareMovBh_DI_8:
mov bl, 69h; ascii of i
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkMovBh_4_8:
mov bl, 73h; ascii of s
cmp bl, [si]
jz checkMovBh_si_8
jnz error_Register_name

checkMovBh_si_8:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz sizemismatch
jnz checkMovBh_sp_8

checkMovBh_sp_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_Register_name
;;;;;;;bhMovOp2;;;;;;;;;;;;;;;;;;;;endofcode

;;;;;;;blmovOp2;;;;;;;;;;;;;;;;;;startofcode
blMovOp2:
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
        jz getRegisterName_bl_mov_op2
        cmp ah,bl 
        jz getValue_bl_mov_op2
        
         
        
        
getValue_bl_mov_op2:
mov ah,9
 mov dx,offset newline
 int 21h 
 
mov ah,9
mov dx,offset Mess_value
int 21h

mov ah,0AH 
mov dx,offset value2        
int 21h 
mov al, value2 + 2
mov bh, 30h
cmp al, bh
jnz  checkMovBl_if_1_
jz   isdigitMovBl_

checkMovBl_if_1_:
mov bh, 31h
cmp al, bh
jnz  checkMovBl_if_2_
jz   isdigitMovBl_

checkMovBl_if_2_:
mov bh, 32h
cmp al, bh
jnz  checkMovBl_if_3_
jz   isdigitMovBl_

checkMovBl_if_3_:
mov bh, 33h
cmp al, bh
jnz  checkMovBl_if_4_
jz   isdigitMovBl_

checkMovBl_if_4_:
mov bh, 34h
cmp al, bh
jnz  checkMovBl_if_5_
jz   isdigitMovBl_


checkMovBl_if_5_:
mov bh, 35h
cmp al, bh
jnz  checkMovBl_if_6_
jz   isdigitMovBl_


checkMovBl_if_6_:
mov bh, 36h
cmp al, bh
jnz  checkMovBl_if_7_
jz   isdigitMovBl_


checkMovBl_if_7_:
mov bh, 37h
cmp al, bh
jnz  checkMovBl_if_8_
jz   isdigitMovBl_


checkMovBl_if_8_:
mov bh, 38h
cmp al, bh
jnz  checkMovBl_if_9_
jz   isdigitMovBl_


checkMovBl_if_9_:
mov bh, 39h
cmp al, bh
jnz  isletterMovBl_
jz   isdigitMovBl_




isdigitMovBl_:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovBl_2nd_char_

isletterMovBl_:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovBl_2nd_char_


checkMovBl_2nd_char_:
mov al, value2 + 3
mov bh, 30h
cmp al, bh
jnz  checkMovBl_if_1_1_
jz   isdigitMovBl_1_


checkMovBl_if_1_1_:
mov bh, 31h
cmp al, bh
jnz  checkMovBl_if_2_1_
jz   isdigitMovBl_1_


checkMovBl_if_2_1_:
mov bh, 32h
cmp al, bh
jnz  checkMovBl_if_3_1_
jz   isdigitMovBl_1_


checkMovBl_if_3_1_:
mov bh, 33h
cmp al, bh
jnz  checkMovBl_if_4_1_
jz   isdigitMovBl_1_


checkMovBl_if_4_1_:
mov bh, 34h
cmp al, bh
jnz  checkMovBl_if_5_1_
jz   isdigitMovBl_1_


checkMovBl_if_5_1_:
mov bh, 35h
cmp al, bh
jnz  checkMovBl_if_6_1_
jz   isdigitMovBl_1_


checkMovBl_if_6_1_:
mov bh, 36h
cmp al, bh
jnz  checkMovBl_if_7_1_
jz   isdigitMovBl_1_


checkMovBl_if_7_1_:
mov bh, 37h
cmp al, bh
jnz  checkMovBl_if_8_1_
jz   isdigitMovBl_1_


checkMovBl_if_8_1_:
mov bh, 38h
cmp al, bh
jnz  checkMovBl_if_9_1_
jz   isdigitMovBl_1_


checkMovBl_if_9_1_:
mov bh, 39h
cmp al, bh
jnz  isletterMovBl_1_
jz   isdigitMovBl_1_



isdigitMovBl_1_:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  finish_checkMovBl_digits_and_letters_of_input_


isletterMovBl_1_:
sub al, 60h
add al, 9h
add ch, al

jmp  finish_checkMovBl_digits_and_letters_of_input_


finish_checkMovBl_digits_and_letters_of_input_:

mov ax, cx
mov byte ptr real_reg_bx_2,ah
jmp continue



getRegisterName_bl_mov_op2:
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
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkMovBl_8
jnz another_register_name_checkMovBl_1_8


Ax_checkMovBl_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovBl_ax_1_8

another_compareMovBl_ax_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz bl_mov_ah
jnz another_compareMovBl_of_ax_2_8


bl_mov_ah:
mov ah, byte ptr real_reg_bx_2
mov bh, byte ptr real_reg_Ax_2 + 1
mov ah, bh
mov byte ptr real_reg_bx_2, ah
jmp continue

another_compareMovBl_of_ax_2_8:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz bl_mov_al
	jnz error_Register_name

	bl_mov_al:
mov ah, byte ptr real_reg_bx_2
mov bh, byte ptr real_reg_Ax_2
mov ah, bh
mov byte ptr real_reg_bx_2, ah
jmp continue


another_register_name_checkMovBl_1_8:
	; checkMovBl if register is bx
	mov si, offset[operand_2 + 2]
	mov bl, 62h; ascii of b
	cmp bl, [si]
	jz bx_checkMovBl_8
	jnz another_register_name_checkMovBl_2_8

	bx_checkMovBl_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovBl_of_bx_1_8


another_compareMovBl_of_bx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz bl_mov_bh
jnz another_compareMovBl_of_bx_2_8

bl_mov_bh:
mov ah, byte ptr real_reg_bx_2
mov bh, byte ptr real_reg_bx_2+1
mov ah, bh
mov byte ptr real_reg_bx_2, ah
jmp continue


another_compareMovBl_of_bx_2_8:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz ah_mov_bl
	jnz compareMovBl_BP_8


bl_mov_bl:
mov ah, byte ptr real_reg_bx_2
mov bh, byte ptr real_reg_bx_2
mov ah, bh
mov byte ptr real_reg_bx_2, ah
jmp continue

; to checkMovBl if register is BP or not
compareMovBl_BP_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkMovBl_2_8:
; checkMovBl if register is cx
mov si, offset[operand_2 + 2]
mov bl, 63h; ascii of c
cmp bl, [si]
jz cX_checkMovBl_8
jnz another_register_name_checkMovBl_3_8


cx_checkMovBl_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovBl_of_cx_1_8


another_compareMovBl_of_cx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz bl_mov_ch
jnz another_compareMovBl_of_cx_2_8

bl_mov_ch:
mov ah, byte ptr real_reg_bx_2
mov bh, byte ptr real_reg_cx_2 + 1
mov ah, bh
mov byte ptr real_reg_bx_2, ah
jmp continue


another_compareMovBl_of_cx_2_8:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz bh_mov_cl
	jnz error_Register_name

	bl_mov_cl:
mov ah, byte ptr real_reg_bx_2
mov bh, byte ptr real_reg_cx_2
mov ah, bh
mov byte ptr real_reg_bx_2, ah
jmp continue


another_register_name_checkMovBl_3_8:
	; checkMovBl if register is dx or dl or dh
	mov si, offset[operand_2 + 2]
	mov bl, 64h; ascii of d
	cmp bl, [si]
	jz dX_checkMovBl_8
	jnz another_register_name_checkMovBl_4_8


dx_checkMovBl_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovBl_of_dx_1_8


another_compareMovBl_of_dx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz bl_mov_dh
jnz another_compareMovBl_of_dx_2_8

bl_mov_dh:
mov ah, byte ptr real_reg_bx_2
mov bh, byte ptr real_reg_dx_2 + 1
mov ah, bh
mov byte ptr real_reg_bx_2, ah
jmp continue

another_compareMovBl_of_dx_2_8:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz bl_mov_dl
	jnz compareMovBl_DI_8

	bl_mov_dl:
mov ah, byte ptr real_reg_bx_2
mov bh, byte ptr real_reg_dx_2
mov ah, bh
mov byte ptr real_reg_bx_2, ah
jmp continue

; to checkMovBl if register is DI or not
compareMovBl_DI_8:
mov bl, 69h; ascii of i
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkMovBl_4_8:
mov bl, 73h; ascii of s
cmp bl, [si]
jz checkMovBl_si_8
jnz error_Register_name

checkMovBl_si_8:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz sizemismatch
jnz checkMovBl_sp_8

checkMovBl_sp_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_Register_name

;;;;;;blmovOp2;;;;;;;;;;;;;;;;;;;endofcode 

;;;;;;bpMovOp2;;;;;;;;;;;;;;;;startofcode
BPMovOp2:
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
        jz getRegisterName_bp_mov_op2
        cmp ah,bl 
        jz getValue_bp_mov_op2
        


getValue_bp_mov_op2:
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
jnz  checkMovBp_if_1_B
jz   isdigitMovBp_B

checkMovBp_if_1_B:
mov bh, 31h
cmp al, bh
jnz  checkMovBp_if_2_B
jz   isdigitMovBp_B

checkMovBp_if_2_B:
mov bh, 32h
cmp al, bh
jnz  checkMovBp_if_3_B
jz   isdigitMovBp_B

checkMovBp_if_3_B:
mov bh, 33h
cmp al, bh
jnz  checkMovBp_if_4_B
jz   isdigitMovBp_B

checkMovBp_if_4_B:
mov bh, 34h
cmp al, bh
jnz  checkMovBp_if_5_B
jz   isdigitMovBp_B


checkMovBp_if_5_B:
mov bh, 35h
cmp al, bh
jnz  checkMovBp_if_6_B
jz   isdigitMovBp_B


checkMovBp_if_6_B:
mov bh, 36h
cmp al, bh
jnz  checkMovBp_if_7_B
jz   isdigitMovBp_B


checkMovBp_if_7_B:
mov bh, 37h
cmp al, bh
jnz  checkMovBp_if_8_B
jz   isdigitMovBp_B


checkMovBp_if_8_B:
mov bh, 38h
cmp al, bh
jnz  checkMovBp_if_9_B
jz   isdigitMovBp_B


checkMovBp_if_9_B:
mov bh, 39h
cmp al, bh
jnz  isletterMovBp_B
jz   isdigitMovBp_B




isdigitMovBp_B:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovBp_2nd_char_B

isletterMovBp_B:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovBp_2nd_char_B


checkMovBp_2nd_char_B:
mov al, value + 3
mov bh, 30h
cmp al, bh
jnz  checkMovBp_if_1_B_1
jz   isdigitMovBp_B_1


checkMovBp_if_1_B_1:
mov bh, 31h
cmp al, bh
jnz  checkMovBp_if_2_B_1
jz   isdigitMovBp_B_1


checkMovBp_if_2_B_1:
mov bh, 32h
cmp al, bh
jnz  checkMovBp_if_3_B_1
jz   isdigitMovBp_B_1


checkMovBp_if_3_B_1:
mov bh, 33h
cmp al, bh
jnz  checkMovBp_if_4_B_1
jz   isdigitMovBp_B_1


checkMovBp_if_4_B_1:
mov bh, 34h
cmp al, bh
jnz  checkMovBp_if_5_B_1
jz   isdigitMovBp_B_1


checkMovBp_if_5_B_1:
mov bh, 35h
cmp al, bh
jnz  checkMovBp_if_6_B_1
jz   isdigitMovBp_B_1


checkMovBp_if_6_B_1:
mov bh, 36h
cmp al, bh
jnz  checkMovBp_if_7_B_1
jz   isdigitMovBp_B_1


checkMovBp_if_7_B_1:
mov bh, 37h
cmp al, bh
jnz  checkMovBp_if_8_B_1
jz   isdigitMovBp_B_1


checkMovBp_if_8_B_1:
mov bh, 38h
cmp al, bh
jnz  checkMovBp_if_9_B_1
jz   isdigitMovBp_B_1


checkMovBp_if_9_B_1:
mov bh, 39h
cmp al, bh
jnz  isletterMovBp_B_1
jz   isdigitMovBp_B_1



isdigitMovBp_B_1:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  checkMovBp_3rd_char_B


isletterMovBp_B_1:
sub al, 60h
add al, 9h
add ch, al

jmp  checkMovBp_3rd_char_B
checkMovBp_3rd_char_B:
mov al, value + 4
mov bh, 30h
cmp al, bh
jnz  checkMovBp_if_1_B_2
jz   isdigitMovBp_B_2

checkMovBp_if_1_B_2:
mov bh, 31h
cmp al, bh
jnz  checkMovBp_if_2_B_2
jz   isdigitMovBp_B_2

checkMovBp_if_2_B_2:
mov bh, 32h
cmp al, bh
jnz  checkMovBp_if_3_B_2
jz   isdigitMovBp_B_2

checkMovBp_if_3_B_2:
mov bh, 33h
cmp al, bh
jnz  checkMovBp_if_4_B_2
jz   isdigitMovBp_B_2

checkMovBp_if_4_B_2:
mov bh, 34h
cmp al, bh
jnz  checkMovBp_if_5_B_2
jz   isdigitMovBp_B_2


checkMovBp_if_5_B_2:
mov bh, 35h
cmp al, bh
jnz  checkMovBp_if_6_B_2
jz   isdigitMovBp_B_2

checkMovBp_if_6_B_2:
mov bh, 36h
cmp al, bh
jnz  checkMovBp_if_7_B_2
jz   isdigitMovBp_B_2


checkMovBp_if_7_B_2:
mov bh, 37h
cmp al, bh
jnz  checkMovBp_if_8_B_2
jz   isdigitMovBp_B_2


checkMovBp_if_8_B_2:
mov bh, 38h
cmp al, bh
jnz  checkMovBp_if_9_B_2
jz   isdigitMovBp_B_2


checkMovBp_if_9_B_2:
mov bh, 39h
cmp al, bh
jnz  isletterMovBp_B_2
jz   isdigitMovBp_B_2



isdigitMovBp_B_2:; reg_Ax_1 + 4 is tens
sub al, 30h
mov bl, 10h
mul bl
mov cl, al


jmp  checkMovBp_4th_char_B


isletterMovBp_B_2:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov cl, al


checkMovBp_4th_char_B:

mov al, value + 5
mov bh, 30h
cmp al, bh
jnz  checkMovBp_if_1_B_3
jz   isdigitMovBp_B_3


checkMovBp_if_1_B_3:
mov bh, 31h
cmp al, bh
jnz  checkMovBp_if_2_B_3
jz   isdigitMovBp_B_3


checkMovBp_if_2_B_3:
mov bh, 32h
cmp al, bh
jnz  checkMovBp_if_3_B_3
jz   isdigitMovBp_B_3


checkMovBp_if_3_B_3:
mov bh, 33h
cmp al, bh
jnz  checkMovBp_if_4_B_3
jz   isdigitMovBp_B_3


checkMovBp_if_4_B_3:
mov bh, 34h
cmp al, bh
jnz  checkMovBp_if_5_B_3
jz   isdigitMovBp_B_3


checkMovBp_if_5_B_3:
mov bh, 35h
cmp al, bh
jnz  checkMovBp_if_6_B_3
jz   isdigitMovBp_B_3


checkMovBp_if_6_B_3:
mov bh, 36h
cmp al, bh
jnz  checkMovBp_if_7_B_3
jz   isdigitMovBp_B_3

checkMovBp_if_7_B_3:
mov bh, 37h
cmp al, bh
jnz  checkMovBp_if_8_B_3
jz   isdigitMovBp_B_3


checkMovBp_if_8_B_3:
mov bh, 38h
cmp al, bh
jnz  checkMovBp_if_9_B_3
jz   isdigitMovBp_B_3

checkMovBp_if_9_B_3:
mov bh, 39h
cmp al, bh
jnz  isletterMovBp_B_3
jz   isdigitMovBp_B_3



isdigitMovBp_B_3:; reg_Ax_1 + 5 is unit
sub al, 30h
add cl, al


jmp  finish_checkMovBp_digits_and_letters_of_input_B

isletterMovBp_B_3:
sub al, 60h
add al, 9h
add cl, al


finish_checkMovBp_digits_and_letters_of_input_B:

mov ax, cx
mov real_reg_bp_2,ax
jmp continue 

getRegisterName_bp_mov_op2:
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

mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkMovBp_7
jnz another_register_name_checkMovBp_1_7


Ax_checkMovBp_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz bp_mov_ax
jnz another_BPcompare_of_ax_1_7

bp_mov_ax:
mov ax, real_reg_bp_2
mov bx, real_reg_Ax_2
mov ax, bx
mov real_reg_bp_2, ax
jmp continue

another_compareMovBp_of_ax_1_7:
mov bl, 68h; ascii of h
cmp bl, [si]
jz sizemismatch
jnz another_compareMovBp_of_ax_2_7

another_compareMovBp_of_ax_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_Register_name





another_register_name_checkMovBp_1_7:
; checkMovBp if register is bx
mov si, offset[operand_2 + 2]
mov bl, 62h; ascii of b
cmp bl, [si]
jz bx_checkMovBp_7
jnz another_register_name_checkMovBp_2_7

bx_checkMovBp_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz bp_mov_bx
jnz another_compareMovBp_of_bx_1_7


bp_mov_bx:
mov ax, real_reg_bp_2
mov bx, real_reg_bx_2
mov ax, bx
mov real_reg_bp_2, ax
jmp continue

another_compareMovBp_of_bx_1_7:
mov bl, 68h; ascii of h
cmp bl, [si]
jz sizemismatch
jnz another_compareMovBp_of_bx_2_7

another_compareMovBp_of_bx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareMovBp_BP_7




; to checkMovBp if register is BP or not
compareMovBp_BP_7:
mov bl, 70h; ascii of p
cmp bl, [si]
jz bp_mov_BP
jnz error_Register_name

bp_mov_BP:
mov ax, real_reg_bp_2
mov bx, real_reg_BP_2
mov ax, bx
mov real_reg_bp_2, ax
jmp continue

another_register_name_checkMovBp_2_7:
; checkMovBp if register is cx
mov si, offset[operand_2 + 2]
mov bl, 63h; ascii of c
cmp bl, [si]
jz cX_checkMovBp_7
jnz another_register_name_checkMovBp_3_7


cx_checkMovBp_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz bp_mov_cx
jnz error_Register_name

bp_mov_cx:
mov ax, real_reg_bp_2
mov bx, real_reg_cx_2
mov ax, bx
mov real_reg_bp_2, ax
jmp continue

another_compareMovBp_of_cx_1_7:
mov bl, 68h; ascii of h
cmp bl, [si]
jz sizemismatch
jnz another_compareMovBp_of_cx_2_7
jmp continue

another_compareMovBp_of_cx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkMovBp_3_7:
; checkMovBp if register is dx or dl or dh
mov si, offset[operand_2 + 2]
mov bl, 64h; ascii of d
cmp bl, [si]
jz dX_checkMovBp_7
jnz another_register_name_checkMovBp_4_7


dx_checkMovBp_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz bp_mov_dx
jnz another_compareMovBp_of_dx_1_7

bp_mov_dx:
mov ax, real_reg_bp_2
mov bx, real_reg_dx_2
mov ax, bx
mov real_reg_bp_2, ax
jmp continue

another_compareMovBp_of_dx_1_7:
mov bl, 68h; ascii of h
cmp bl, [si]
jz sizemismatch
jnz another_compareMovBp_of_dx_2_7

another_compareMovBp_of_dx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareMovBp_DI_7

; to checkMovBp if register is DI or not
compareMovBp_DI_7:
mov bl, 69h; ascii of i
cmp bl, [si]
jz bp_mov_DI
jnz error_Register_name

bp_mov_DI:
mov ax, real_reg_bp_2
mov bx, real_reg_di_2
mov ax, bx
mov real_reg_bp_2, ax
jmp continue

another_register_name_checkMovBp_4_7:
mov bl, 73h; ascii of s
cmp bl, [si]
jz checkMovBp_si_7
jnz error_Register_name

checkMovBp_si_7:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz bp_mov_si
jnz checkMovBp_sp_7

bp_mov_si:
mov ax, real_reg_bp_2
mov bx, real_reg_si_2
mov ax, bx
mov real_reg_bp_2, ax
jmp continue

checkMovBp_sp_7:
mov bl, 70h; ascii of p
cmp bl, [si]
jz bp_mov_sp
jnz error_Register_name

bp_mov_sp:
mov ax, real_reg_bp_2
mov bx, real_reg_sp_2
mov ax, bx
mov real_reg_bp_2, ax
jmp continue
;;;;;;bpMovOp2;;;;;;;;;;;;;endofcode 
;;;;;;cxMovOp2;;;;;;;;;;;;startofcode
CxMovOp2:
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
        jz getRegisterName_cx_mov_op2
        cmp ah,bl 
        jz getValue_cx_mov_op2

getValue_cx_mov_op2:

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
jnz  checkMovcx_if_1_B
jz   isdigitMovcx_B

checkMovcx_if_1_B:
mov bh, 31h
cmp al, bh
jnz  checkMovcx_if_2_B
jz   isdigitMovcx_B

checkMovcx_if_2_B:
mov bh, 32h
cmp al, bh
jnz  checkMovcx_if_3_B
jz   isdigitMovcx_B

checkMovcx_if_3_B:
mov bh, 33h
cmp al, bh
jnz  checkMovcx_if_4_B
jz   isdigitMovcx_B

checkMovcx_if_4_B:
mov bh, 34h
cmp al, bh
jnz  checkMovcx_if_5_B
jz   isdigitMovcx_B


checkMovcx_if_5_B:
mov bh, 35h
cmp al, bh
jnz  checkMovcx_if_6_B
jz   isdigitMovcx_B


checkMovcx_if_6_B:
mov bh, 36h
cmp al, bh
jnz  checkMovcx_if_7_B
jz   isdigitMovcx_B


checkMovcx_if_7_B:
mov bh, 37h
cmp al, bh
jnz  checkMovcx_if_8_B
jz   isdigitMovcx_B


checkMovcx_if_8_B:
mov bh, 38h
cmp al, bh
jnz  checkMovcx_if_9_B
jz   isdigitMovcx_B


checkMovcx_if_9_B:
mov bh, 39h
cmp al, bh
jnz  isletterMovcx_B
jz   isdigitMovcx_B




isdigitMovcx_B:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovcx_2nd_char_B

isletterMovcx_B:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovcx_2nd_char_B


checkMovcx_2nd_char_B:
mov al, value + 3
mov bh, 30h
cmp al, bh
jnz  checkMovcx_if_1_B_1
jz   isdigitMovcx_B_1


checkMovcx_if_1_B_1:
mov bh, 31h
cmp al, bh
jnz  checkMovcx_if_2_B_1
jz   isdigitMovcx_B_1


checkMovcx_if_2_B_1:
mov bh, 32h
cmp al, bh
jnz  checkMovcx_if_3_B_1
jz   isdigitMovcx_B_1


checkMovcx_if_3_B_1:
mov bh, 33h
cmp al, bh
jnz  checkMovcx_if_4_B_1
jz   isdigitMovcx_B_1


checkMovcx_if_4_B_1:
mov bh, 34h
cmp al, bh
jnz  checkMovcx_if_5_B_1
jz   isdigitMovcx_B_1


checkMovcx_if_5_B_1:
mov bh, 35h
cmp al, bh
jnz  checkMovcx_if_6_B_1
jz   isdigitMovcx_B_1


checkMovcx_if_6_B_1:
mov bh, 36h
cmp al, bh
jnz  checkMovcx_if_7_B_1
jz   isdigitMovcx_B_1


checkMovcx_if_7_B_1:
mov bh, 37h
cmp al, bh
jnz  checkMovcx_if_8_B_1
jz   isdigitMovcx_B_1


checkMovcx_if_8_B_1:
mov bh, 38h
cmp al, bh
jnz  checkMovcx_if_9_B_1
jz   isdigitMovcx_B_1


checkMovcx_if_9_B_1:
mov bh, 39h
cmp al, bh
jnz  isletterMovcx_B_1
jz   isdigitMovcx_B_1



isdigitMovcx_B_1:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  checkMovcx_3rd_char_B


isletterMovcx_B_1:
sub al, 60h
add al, 9h
add ch, al

jmp  checkMovcx_3rd_char_B
checkMovcx_3rd_char_B:
mov al, value + 4
mov bh, 30h
cmp al, bh
jnz  checkMovcx_if_1_B_2
jz   isdigitMovcx_B_2

checkMovcx_if_1_B_2:
mov bh, 31h
cmp al, bh
jnz  checkMovcx_if_2_B_2
jz   isdigitMovcx_B_2

checkMovcx_if_2_B_2:
mov bh, 32h
cmp al, bh
jnz  checkMovcx_if_3_B_2
jz   isdigitMovcx_B_2

checkMovcx_if_3_B_2:
mov bh, 33h
cmp al, bh
jnz  checkMovcx_if_4_B_2
jz   isdigitMovcx_B_2

checkMovcx_if_4_B_2:
mov bh, 34h
cmp al, bh
jnz  checkMovcx_if_5_B_2
jz   isdigitMovcx_B_2


checkMovcx_if_5_B_2:
mov bh, 35h
cmp al, bh
jnz  checkMovcx_if_6_B_2
jz   isdigitMovcx_B_2

checkMovcx_if_6_B_2:
mov bh, 36h
cmp al, bh
jnz  checkMovcx_if_7_B_2
jz   isdigitMovcx_B_2


checkMovcx_if_7_B_2:
mov bh, 37h
cmp al, bh
jnz  checkMovcx_if_8_B_2
jz   isdigitMovcx_B_2


checkMovcx_if_8_B_2:
mov bh, 38h
cmp al, bh
jnz  checkMovcx_if_9_B_2
jz   isdigitMovcx_B_2


checkMovcx_if_9_B_2:
mov bh, 39h
cmp al, bh
jnz  isletterMovcx_B_2
jz   isdigitMovcx_B_2



isdigitMovcx_B_2:; reg_Ax_1 + 4 is tens
sub al, 30h
mov bl, 10h
mul bl
mov cl, al


jmp  checkMovcx_4th_char_B


isletterMovcx_B_2:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov cl, al


checkMovcx_4th_char_B:

mov al, value + 5
mov bh, 30h
cmp al, bh
jnz  checkMovcx_if_1_B_3
jz   isdigitMovcx_B_3


checkMovcx_if_1_B_3:
mov bh, 31h
cmp al, bh
jnz  checkMovcx_if_2_B_3
jz   isdigitMovcx_B_3


checkMovcx_if_2_B_3:
mov bh, 32h
cmp al, bh
jnz  checkMovcx_if_3_B_3
jz   isdigitMovcx_B_3


checkMovcx_if_3_B_3:
mov bh, 33h
cmp al, bh
jnz  checkMovcx_if_4_B_3
jz   isdigitMovcx_B_3


checkMovcx_if_4_B_3:
mov bh, 34h
cmp al, bh
jnz  checkMovcx_if_5_B_3
jz   isdigitMovcx_B_3


checkMovcx_if_5_B_3:
mov bh, 35h
cmp al, bh
jnz  checkMovcx_if_6_B_3
jz   isdigitMovcx_B_3


checkMovcx_if_6_B_3:
mov bh, 36h
cmp al, bh
jnz  checkMovcx_if_7_B_3
jz   isdigitMovcx_B_3

checkMovcx_if_7_B_3:
mov bh, 37h
cmp al, bh
jnz  checkMovcx_if_8_B_3
jz   isdigitMovcx_B_3


checkMovcx_if_8_B_3:
mov bh, 38h
cmp al, bh
jnz  checkMovcx_if_9_B_3
jz   isdigitMovcx_B_3

checkMovcx_if_9_B_3:
mov bh, 39h
cmp al, bh
jnz  isletterMovcx_B_3
jz   isdigitMovcx_B_3



isdigitMovcx_B_3:; reg_Ax_1 + 5 is unit
sub al, 30h
add cl, al


jmp  finish_checkMovcx_digits_and_letters_of_input_B

isletterMovcx_B_3:
sub al, 60h
add al, 9h
add cl, al


finish_checkMovcx_digits_and_letters_of_input_B:

mov ax, cx
mov real_reg_cx_2,ax
jmp continue
getRegisterName_cx_mov_op2:
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

mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkMovcx_7
jnz another_register_name_checkMovcx_1_7


Ax_checkMovcx_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz cx_mov_ax
jnz error_Register_name

cx_mov_ax:
mov ax, real_reg_cx_2
mov bx, real_reg_Ax_2
mov ax, bx
mov real_reg_cx_2, ax
jmp continue

another_compareMovcx_of_ax_1_7:
mov bl, 68h; ascii of h
cmp bl, [si]
jz sizemismatch
jnz another_compareMovcx_of_ax_2_7

another_compareMovcx_of_ax_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_Register_name





another_register_name_checkMovcx_1_7:
; checkMovcx if register is bx
mov si, offset[operand_2 + 2]
mov bl, 62h; ascii of b
cmp bl, [si]
jz bx_checkMovcx_7
jnz another_register_name_checkMovcx_2_7

bx_checkMovcx_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz cx_mov_bx
jnz another_compareMovcx_of_bx_1_7


cx_mov_bx:
mov ax, real_reg_cx_2
mov bx, real_reg_bx_2
mov ax, bx
mov real_reg_cx_2, ax
jmp continue

another_compareMovcx_of_bx_1_7:
	mov bl, 68h; ascii of h
	cmp bl, [si]
	jz sizemismatch
	jnz another_compareMovcx_of_bx_2_7

another_compareMovcx_of_bx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareMovcx_BP_7




; to checkMovcx if register is BP or not
compareMovcx_BP_7:
mov bl, 70h; ascii of p
cmp bl, [si]
jz cx_mov_BP
jnz error_Register_name

cx_mov_BP:
mov ax, real_reg_cx_2
mov bx, real_reg_bp_2
mov ax, bx
mov real_reg_cx_2, ax
jmp continue

another_register_name_checkMovcx_2_7:
	; checkMovcx if register is cx
	mov si, offset[operand_2 + 2]
	mov bl, 63h; ascii of c
	cmp bl, [si]
	jz cX_checkMovcx_7
	jnz another_register_name_checkMovcx_3_7


	cx_checkMovcx_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz cx_mov_cx
jnz error_Register_name

cx_mov_cx:
mov ax, real_reg_cx_2
mov bx, real_reg_cx_2
mov ax, bx
mov real_reg_cx_2, ax
jmp continue

another_compareMovcx_of_cx_1_7:
	mov bl, 68h; ascii of h
	cmp bl, [si]
	jz sizemismatch
	jnz another_compareMovcx_of_cx_2_7
	jmp continue

	another_compareMovcx_of_cx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkMovcx_3_7:
; checkMovcx if register is dx or dl or dh
mov si, offset[operand_2 + 2]
mov bl, 64h; ascii of d
cmp bl, [si]
jz dX_checkMovcx_7
jnz another_register_name_checkMovcx_4_7


dx_checkMovcx_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz cx_mov_dx
jnz another_compareMovcx_of_dx_1_7

cx_mov_dx:
mov ax, real_reg_cx_2
mov bx, real_reg_dx_2
mov ax, bx
mov real_reg_cx_2, ax
jmp continue

another_compareMovcx_of_dx_1_7:
	mov bl, 68h; ascii of h
	cmp bl, [si]
	jz sizemismatch
	jnz another_compareMovcx_of_dx_2_7

	another_compareMovcx_of_dx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareMovcx_DI_7

; to checkMovcx if register is DI or not
compareMovcx_DI_7:
mov bl, 69h; ascii of i
cmp bl, [si]
jz cx_mov_DI
jnz error_Register_name

cx_mov_DI:
mov ax, real_reg_cx_2
mov bx, real_reg_di_2
mov ax, bx
mov real_reg_cx_2, ax
jmp continue

another_register_name_checkMovcx_4_7:
	mov bl, 73h; ascii of s
	cmp bl, [si]
	jz checkMovcx_si_7
	jnz error_Register_name

	checkMovcx_si_7:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz cx_mov_si
jnz checkMovcx_sp_7

cx_mov_si:
mov ax, real_reg_cx_2
mov bx, real_reg_si_2
mov ax, bx
mov real_reg_cx_2, ax
jmp continue

checkMovcx_sp_7:
	mov bl, 70h; ascii of p
	cmp bl, [si]
	jz cx_mov_sp
	jnz error_Register_name

cx_mov_sp:
mov ax, real_reg_cx_2
mov bx, real_reg_sp_2
mov ax, bx
mov real_reg_cx_2, ax
jmp continue
;;;;cxMocop2;;;;;;;;;;;endofcode

;;;;;;chMovOp2;;;;;;;startOfCode
ChMovOp2:
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
        jz getRegisterName_ch_mov_op2
        cmp ah,bl 
        jz getValue_ch_mov_op2
        
         
        
        
getValue_ch_mov_op2:
mov ah,9
 mov dx,offset newline
 int 21h 
 
mov ah,9
mov dx,offset Mess_value
int 21h

mov ah,0AH 
mov dx,offset value2        
int 21h
mov al, value2 + 2
mov bh, 30h
cmp al, bh
jnz  checkMovCh_if_1_
jz   isdigitMovCh_

checkMovCh_if_1_:
mov bh, 31h
cmp al, bh
jnz  checkMovCh_if_2_
jz   isdigitMovCh_

checkMovCh_if_2_:
mov bh, 32h
cmp al, bh
jnz  checkMovCh_if_3_
jz   isdigitMovCh_

checkMovCh_if_3_:
mov bh, 33h
cmp al, bh
jnz  checkMovCh_if_4_
jz   isdigitMovCh_

checkMovCh_if_4_:
mov bh, 34h
cmp al, bh
jnz  checkMovCh_if_5_
jz   isdigitMovCh_


checkMovCh_if_5_:
mov bh, 35h
cmp al, bh
jnz  checkMovCh_if_6_
jz   isdigitMovCh_


checkMovCh_if_6_:
mov bh, 36h
cmp al, bh
jnz  checkMovCh_if_7_
jz   isdigitMovCh_


checkMovCh_if_7_:
mov bh, 37h
cmp al, bh
jnz  checkMovCh_if_8_
jz   isdigitMovCh_


checkMovCh_if_8_:
mov bh, 38h
cmp al, bh
jnz  checkMovCh_if_9_
jz   isdigitMovCh_


checkMovCh_if_9_:
mov bh, 39h
cmp al, bh
jnz  isletterMovCh_
jz   isdigitMovCh_




isdigitMovCh_:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovCh_2nd_char_

isletterMovCh_:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovCh_2nd_char_


checkMovCh_2nd_char_:
mov al, value2 + 3
mov bh, 30h
cmp al, bh
jnz  checkMovCh_if_1_1_
jz   isdigitMovCh_1_


checkMovCh_if_1_1_:
mov bh, 31h
cmp al, bh
jnz  checkMovCh_if_2_1_
jz   isdigitMovCh_1_


checkMovCh_if_2_1_:
mov bh, 32h
cmp al, bh
jnz  checkMovCh_if_3_1_
jz   isdigitMovCh_1_


checkMovCh_if_3_1_:
mov bh, 33h
cmp al, bh
jnz  checkMovCh_if_4_1_
jz   isdigitMovCh_1_


checkMovCh_if_4_1_:
mov bh, 34h
cmp al, bh
jnz  checkMovCh_if_5_1_
jz   isdigitMovCh_1_


checkMovCh_if_5_1_:
mov bh, 35h
cmp al, bh
jnz  checkMovCh_if_6_1_
jz   isdigitMovCh_1_


checkMovCh_if_6_1_:
mov bh, 36h
cmp al, bh
jnz  checkMovCh_if_7_1_
jz   isdigitMovCh_1_


checkMovCh_if_7_1_:
mov bh, 37h
cmp al, bh
jnz  checkMovCh_if_8_1_
jz   isdigitMovCh_1_


checkMovCh_if_8_1_:
mov bh, 38h
cmp al, bh
jnz  checkMovCh_if_9_1_
jz   isdigitMovCh_1_


checkMovCh_if_9_1_:
mov bh, 39h
cmp al, bh
jnz  isletterMovCh_1_
jz   isdigitMovCh_1_



isdigitMovCh_1_:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  finish_checkMovCh_digits_and_letters_of_input_


isletterMovCh_1_:
sub al, 60h
add al, 9h
add ch, al

jmp  finish_checkMovCh_digits_and_letters_of_input_


finish_checkMovCh_digits_and_letters_of_input_:

mov ax, cx
mov byte ptr real_reg_cx_2+1,ah
jmp continue

getRegisterName_ch_mov_op2:
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
 mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkMovCh_8
jnz another_register_name_checkMovCh_1_8


Ax_checkMovCh_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovCh_ax_1_8

another_compareMovCh_ax_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz Ch_mov_ah
jnz another_compareMovCh_of_ax_2_8


Ch_mov_ah:
mov ah, byte ptr real_reg_cx_2 + 1
mov bh, byte ptr real_reg_Ax_2 + 1
mov ah, bh
mov byte ptr real_reg_cx_2 + 1, ah
jmp continue

another_compareMovCh_of_ax_2_8:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz Ch_mov_al
	jnz error_Register_name

	Ch_mov_al:
mov ah, byte ptr real_reg_cx_2 + 1
mov bh, byte ptr real_reg_Ax_2
mov ah, bh
mov byte ptr real_reg_cx_2 + 1, ah
jmp continue


another_register_name_checkMovCh_1_8:
	; checkMovCh if register is bx
	mov si, offset[operand_2 + 2]
	mov bl, 62h; ascii of b
	cmp bl, [si]
	jz bx_checkMovCh_8
	jnz another_register_name_checkMovCh_2_8

bx_checkMovCh_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovCh_of_bx_1_8


another_compareMovCh_of_bx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz Ch_mov_bh
jnz another_compareMovCh_of_bx_2_8

Ch_mov_bh:
mov ah, byte ptr real_reg_cx_2 + 1
mov bh, byte ptr real_reg_bx_2 + 1
mov ah, bh
mov byte ptr real_reg_cx_2 + 1, ah
jmp continue


another_compareMovCh_of_bx_2_8:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz ch_mov_bl
	jnz compareMovCh_BP_8


Ch_mov_bl:
mov ah, byte ptr real_reg_cx_2 + 1
mov bh, byte ptr real_reg_bx_2
mov ah, bh
mov byte ptr real_reg_cx_2 + 1, ah
jmp continue

; to checkMovCh if register is BP or not
compareMovCh_BP_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkMovCh_2_8:
; checkMovCh if register is cx
mov si, offset[operand_2 + 2]
mov bl, 63h; ascii of c
cmp bl, [si]
jz cX_checkMovCh_8
jnz another_register_name_checkMovCh_3_8


cx_checkMovCh_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovCh_of_cx_1_8


another_compareMovCh_of_cx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz Ch_mov_ch
jnz another_compareMovCh_of_cx_2_8

Ch_mov_ch:
mov ah, byte ptr real_reg_cx_2 + 1
mov bh, byte ptr real_reg_cx_2 + 1
mov ah, bh
mov byte ptr real_reg_cx_2 + 1, ah
jmp continue


another_compareMovCh_of_cx_2_8:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz Ch_mov_cl
	jnz error_Register_name

Ch_mov_cl:
mov ah, byte ptr real_reg_cx_2 + 1
mov bh, byte ptr real_reg_cx_2
mov ah, bh
mov byte ptr real_reg_cx_2 + 1, ah
jmp continue


another_register_name_checkMovCh_3_8:
	; checkMovCh if register is dx or dl or dh
	mov si, offset[operand_2 + 2]
	mov bl, 64h; ascii of d
	cmp bl, [si]
	jz dX_checkMovCh_8
	jnz another_register_name_checkMovCh_4_8


dx_checkMovCh_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovCh_of_dx_1_8


another_compareMovCh_of_dx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz Ch_mov_dh
jnz another_compareMovCh_of_dx_2_8

Ch_mov_dh:
mov ah, byte ptr real_reg_cx_2 + 1
mov bh, byte ptr real_reg_dx_2 + 1
mov ah, bh
mov byte ptr real_reg_cx_2 + 1, ah
jmp continue

another_compareMovCh_of_dx_2_8:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz Ch_mov_dl
	jnz compareMovCh_DI_8

Ch_mov_dl:
mov ah, byte ptr real_reg_cx_2 + 1
mov bh, byte ptr real_reg_dx_2
mov ah, bh
mov byte ptr real_reg_cx_2 + 1, ah
jmp continue

;to checkMovCh if register is DI or not
compareMovCh_DI_8:
mov bl, 69h; ascii of i
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkMovCh_4_8:
mov bl, 73h; ascii of s
cmp bl, [si]
jz checkMovCh_si_8
jnz error_Register_name

checkMovCh_si_8:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz sizemismatch
jnz checkMovCh_sp_8

checkMovCh_sp_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_Register_name
;;;;;chMovOp2;;;;;;;;endOfcode
;;;;;;clMovOp2;;;;;;;startofcode
ClMovOp2:
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
        jz getRegisterName_cl_mov_op2
        cmp ah,bl 
        jz getValue_cl_mov_op2
getValue_cl_mov_op2:
mov ah,9
 mov dx,offset newline
 int 21h 
 
mov ah,9
mov dx,offset Mess_value
int 21h

mov ah,0AH 
mov dx,offset value2        
int 21h 



mov al, value2 + 2
mov bh, 30h
cmp al, bh
jnz  checkMovCl_if_1_
jz   isdigitMovCl_

checkMovCl_if_1_ :
mov bh, 31h
cmp al, bh
jnz  checkMovCl_if_2_
jz   isdigitMovCl_

checkMovCl_if_2_ :
mov bh, 32h
cmp al, bh
jnz  checkMovCl_if_3_
jz   isdigitMovCl_

checkMovCl_if_3_ :
mov bh, 33h
cmp al, bh
jnz  checkMovCl_if_4_
jz   isdigitMovCl_

checkMovCl_if_4_ :
mov bh, 34h
cmp al, bh
jnz  checkMovCl_if_5_
jz   isdigitMovCl_


checkMovCl_if_5_ :
mov bh, 35h
cmp al, bh
jnz  checkMovCl_if_6_
jz   isdigitMovCl_


checkMovCl_if_6_ :
mov bh, 36h
cmp al, bh
jnz  checkMovCl_if_7_
jz   isdigitMovCl_


checkMovCl_if_7_ :
mov bh, 37h
cmp al, bh
jnz  checkMovCl_if_8_
jz   isdigitMovCl_


checkMovCl_if_8_ :
mov bh, 38h
cmp al, bh
jnz  checkMovCl_if_9_
jz   isdigitMovCl_


checkMovCl_if_9_ :
mov bh, 39h
cmp al, bh
jnz  isletterMovCl_
jz   isdigitMovCl_




isdigitMovCl_:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovCl_2nd_char_

isletterMovCl_ :
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovCl_2nd_char_


checkMovCl_2nd_char_ :
mov al, value2 + 3
mov bh, 30h
cmp al, bh
jnz  checkMovCl_if_1_1_
jz   isdigitMovCl_1_


checkMovCl_if_1_1_ :
mov bh, 31h
cmp al, bh
jnz  checkMovCl_if_2_1_
jz   isdigitMovCl_1_


checkMovCl_if_2_1_ :
mov bh, 32h
cmp al, bh
jnz  checkMovCl_if_3_1_
jz   isdigitMovCl_1_


checkMovCl_if_3_1_ :
mov bh, 33h
cmp al, bh
jnz  checkMovCl_if_4_1_
jz   isdigitMovCl_1_


checkMovCl_if_4_1_ :
mov bh, 34h
cmp al, bh
jnz  checkMovCl_if_5_1_
jz   isdigitMovCl_1_


checkMovCl_if_5_1_ :
mov bh, 35h
cmp al, bh
jnz  checkMovCl_if_6_1_
jz   isdigitMovCl_1_


checkMovCl_if_6_1_ :
mov bh, 36h
cmp al, bh
jnz  checkMovCl_if_7_1_
jz   isdigitMovCl_1_


checkMovCl_if_7_1_ :
mov bh, 37h
cmp al, bh
jnz  checkMovCl_if_8_1_
jz   isdigitMovCl_1_


checkMovCl_if_8_1_ :
mov bh, 38h
cmp al, bh
jnz  checkMovCl_if_9_1_
jz   isdigitMovCl_1_


checkMovCl_if_9_1_ :
mov bh, 39h
cmp al, bh
jnz  isletterMovCl_1_
jz   isdigitMovCl_1_



isdigitMovCl_1_:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  finish_checkMovCl_digits_and_letters_of_input_


isletterMovCl_1_ :
sub al, 60h
add al, 9h
add ch, al

jmp  finish_checkMovCl_digits_and_letters_of_input_


finish_checkMovCl_digits_and_letters_of_input_ :

mov ax, cx
mov byte ptr real_reg_cx_2,ah
jmp continue

getRegisterName_cl_mov_op2:
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
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkMovCl_8
jnz another_register_name_checkMovCl_1_8


Ax_checkMovCl_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovCl_ax_1_8

another_compareMovCl_ax_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz Cl_mov_ah
jnz another_compareMovCl_of_ax_2_8


Cl_mov_ah:
mov ah, byte ptr real_reg_cx_2 
mov bh, byte ptr real_reg_Ax_2 + 1
mov ah, bh
mov byte ptr real_reg_cx_2 , ah
jmp continue

another_compareMovCl_of_ax_2_8:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz Cl_mov_al
	jnz error_Register_name

	Cl_mov_al:
mov ah, byte ptr real_reg_cx_2 
mov bh, byte ptr real_reg_Ax_2
mov ah, bh
mov byte ptr real_reg_cx_2 , ah
jmp continue


another_register_name_checkMovCl_1_8:
	; checkMovCl if register is bx
	mov si, offset[operand_2 + 2]
	mov bl, 62h; ascii of b
	cmp bl, [si]
	jz bx_checkMovCl_8
	jnz another_register_name_checkMovCl_2_8

	bx_checkMovCl_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovCl_of_bx_1_8


another_compareMovCl_of_bx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz Cl_mov_bh
jnz another_compareMovCl_of_bx_2_8

Cl_mov_bh:
mov ah, byte ptr real_reg_cx_2 
mov bh, byte ptr real_reg_bx_2 + 1
mov ah, bh
mov byte ptr real_reg_cx_2 , ah
jmp continue


another_compareMovCl_of_bx_2_8:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz cl_mov_bl
	jnz compareMovCl_BP_8


Cl_mov_bl:
mov ah, byte ptr real_reg_cx_2 
mov bh, byte ptr real_reg_bx_2
mov ah, bh
mov byte ptr real_reg_cx_2 , ah
jmp continue

; to checkMovCl if register is BP or not
compareMovCl_BP_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkMovCl_2_8:
; checkMovCl if register is cx
mov si, offset[operand_2 + 2]
mov bl, 63h; ascii of c
cmp bl, [si]
jz cX_checkMovCl_8
jnz another_register_name_checkMovCl_3_8


cx_checkMovCl_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovCl_of_cx_1_8


another_compareMovCl_of_cx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz Cl_mov_ch
jnz another_compareMovCl_of_cx_2_8

Cl_mov_ch:
mov ah, byte ptr real_reg_cx_2 
mov bh, byte ptr real_reg_cx_2 + 1
mov ah, bh
mov byte ptr real_reg_cx_2 , ah
jmp continue


another_compareMovCl_of_cx_2_8:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz Cl_mov_cl
	jnz error_Register_name

Cl_mov_cl:
mov ah, byte ptr real_reg_cx_2 
mov bh, byte ptr real_reg_cx_2
mov ah, bh
mov byte ptr real_reg_cx_2 , ah
jmp continue


another_register_name_checkMovCl_3_8:
	; checkMovCl if register is dx or dl or dh
	mov si, offset[operand_2 + 2]
	mov bl, 64h; ascii of d
	cmp bl, [si]
	jz dX_checkMovCl_8
	jnz another_register_name_checkMovCl_4_8


dx_checkMovCl_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovCl_of_dx_1_8


another_compareMovCl_of_dx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz Cl_mov_dh
jnz another_compareMovCl_of_dx_2_8

Cl_mov_dh:
mov ah, byte ptr real_reg_cx_2 
mov bh, byte ptr real_reg_dx_2 + 1
mov ah, bh
mov byte ptr real_reg_cx_2 , ah
jmp continue

another_compareMovCl_of_dx_2_8:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz Cl_mov_dl
	jnz compareMovCl_DI_8

	Cl_mov_dl:
mov ah, byte ptr real_reg_cx_2 
mov bh, byte ptr real_reg_dx_2
mov ah, bh
mov byte ptr real_reg_cx_2 , ah
jmp continue

; to checkMovCl if register is DI or not
compareMovCl_DI_8:
mov bl, 69h; ascii of i
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkMovCl_4_8:
mov bl, 73h; ascii of s
cmp bl, [si]
jz checkMovCl_si_8
jnz error_Register_name

checkMovCl_si_8:
mov bl, 69h; ascii of  i
cmp bl, [si]
jz sizemismatch
jnz checkMovCl_sp_8

checkMovCl_sp_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_Register_name
;;;;clMovOp2;;;;;;;;endofcode
;;;;dxMovOp2;;;;;;;startOfCode
dxMovOp2:
mov ah, 9
mov dx, offset newline
int 21h


mov ah, 9
mov dx, offset value_OR_register
int 21h

; receive input from user
mov ah, 0AH
mov dx, offset vORr
int 21h

mov ah, vORr + 2
mov al, 72h; ascii of r
mov bl, 76h; ascii of v
cmp ah, al
jz getRegisterName_dx_mov_op2
cmp ah, bl
jz getValue_dx_mov_op2




getValue_dx_mov_op2:
mov ah, 9
mov dx, offset newline
int 21h

mov ah, 9
mov dx, offset Mess_value
int 21h

mov ah, 0AH
mov dx, offset value
int 21h
mov al, value + 2
mov bh, 30h
cmp al, bh
jnz  checkMovdx_if_1_B
jz   isdigitMovdx_B

checkMovdx_if_1_B :
mov bh, 31h
cmp al, bh
jnz  checkMovdx_if_2_B
jz   isdigitMovdx_B

checkMovdx_if_2_B :
mov bh, 32h
cmp al, bh
jnz  checkMovdx_if_3_B
jz   isdigitMovdx_B

checkMovdx_if_3_B :
mov bh, 33h
cmp al, bh
jnz  checkMovdx_if_4_B
jz   isdigitMovdx_B

checkMovdx_if_4_B :
mov bh, 34h
cmp al, bh
jnz  checkMovdx_if_5_B
jz   isdigitMovdx_B


checkMovdx_if_5_B :
mov bh, 35h
cmp al, bh
jnz  checkMovdx_if_6_B
jz   isdigitMovdx_B


checkMovdx_if_6_B :
mov bh, 36h
cmp al, bh
jnz  checkMovdx_if_7_B
jz   isdigitMovdx_B


checkMovdx_if_7_B :
mov bh, 37h
cmp al, bh
jnz  checkMovdx_if_8_B
jz   isdigitMovdx_B


checkMovdx_if_8_B :
mov bh, 38h
cmp al, bh
jnz  checkMovdx_if_9_B
jz   isdigitMovdx_B


checkMovdx_if_9_B :
mov bh, 39h
cmp al, bh
jnz  isletterMovdx_B
jz   isdigitMovdx_B




isdigitMovdx_B:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovdx_2nd_char_B

isletterMovdx_B :
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovdx_2nd_char_B


checkMovdx_2nd_char_B :
mov al, value + 3
mov bh, 30h
cmp al, bh
jnz  checkMovdx_if_1_B_1
jz   isdigitMovdx_B_1


checkMovdx_if_1_B_1 :
mov bh, 31h
cmp al, bh
jnz  checkMovdx_if_2_B_1
jz   isdigitMovdx_B_1


checkMovdx_if_2_B_1 :
mov bh, 32h
cmp al, bh
jnz  checkMovdx_if_3_B_1
jz   isdigitMovdx_B_1


checkMovdx_if_3_B_1 :
mov bh, 33h
cmp al, bh
jnz  checkMovdx_if_4_B_1
jz   isdigitMovdx_B_1


checkMovdx_if_4_B_1 :
mov bh, 34h
cmp al, bh
jnz  checkMovdx_if_5_B_1
jz   isdigitMovdx_B_1


checkMovdx_if_5_B_1 :
mov bh, 35h
cmp al, bh
jnz  checkMovdx_if_6_B_1
jz   isdigitMovdx_B_1


checkMovdx_if_6_B_1 :
mov bh, 36h
cmp al, bh
jnz  checkMovdx_if_7_B_1
jz   isdigitMovdx_B_1


checkMovdx_if_7_B_1 :
mov bh, 37h
cmp al, bh
jnz  checkMovdx_if_8_B_1
jz   isdigitMovdx_B_1


checkMovdx_if_8_B_1 :
mov bh, 38h
cmp al, bh
jnz  checkMovdx_if_9_B_1
jz   isdigitMovdx_B_1


checkMovdx_if_9_B_1 :
mov bh, 39h
cmp al, bh
jnz  isletterMovdx_B_1
jz   isdigitMovdx_B_1



isdigitMovdx_B_1:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  checkMovdx_3rd_char_B


isletterMovdx_B_1 :
sub al, 60h
add al, 9h
add ch, al

jmp  checkMovdx_3rd_char_B
checkMovdx_3rd_char_B :
mov al, value + 4
mov bh, 30h
cmp al, bh
jnz  checkMovdx_if_1_B_2
jz   isdigitMovdx_B_2

checkMovdx_if_1_B_2 :
mov bh, 31h
cmp al, bh
jnz  checkMovdx_if_2_B_2
jz   isdigitMovdx_B_2

checkMovdx_if_2_B_2 :
mov bh, 32h
cmp al, bh
jnz  checkMovdx_if_3_B_2
jz   isdigitMovdx_B_2

checkMovdx_if_3_B_2 :
mov bh, 33h
cmp al, bh
jnz  checkMovdx_if_4_B_2
jz   isdigitMovdx_B_2

checkMovdx_if_4_B_2 :
mov bh, 34h
cmp al, bh
jnz  checkMovdx_if_5_B_2
jz   isdigitMovdx_B_2


checkMovdx_if_5_B_2 :
mov bh, 35h
cmp al, bh
jnz  checkMovdx_if_6_B_2
jz   isdigitMovdx_B_2

checkMovdx_if_6_B_2 :
mov bh, 36h
cmp al, bh
jnz  checkMovdx_if_7_B_2
jz   isdigitMovdx_B_2


checkMovdx_if_7_B_2 :
mov bh, 37h
cmp al, bh
jnz  checkMovdx_if_8_B_2
jz   isdigitMovdx_B_2


checkMovdx_if_8_B_2 :
mov bh, 38h
cmp al, bh
jnz  checkMovdx_if_9_B_2
jz   isdigitMovdx_B_2


checkMovdx_if_9_B_2 :
mov bh, 39h
cmp al, bh
jnz  isletterMovdx_B_2
jz   isdigitMovdx_B_2



isdigitMovdx_B_2:; reg_Ax_1 + 4 is tens
sub al, 30h
mov bl, 10h
mul bl
mov cl, al


jmp  checkMovdx_4th_char_B


isletterMovdx_B_2 :
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov cl, al


checkMovdx_4th_char_B :

mov al, value + 5
mov bh, 30h
cmp al, bh
jnz  checkMovdx_if_1_B_3
jz   isdigitMovdx_B_3


checkMovdx_if_1_B_3 :
mov bh, 31h
cmp al, bh
jnz  checkMovdx_if_2_B_3
jz   isdigitMovdx_B_3


checkMovdx_if_2_B_3 :
mov bh, 32h
cmp al, bh
jnz  checkMovdx_if_3_B_3
jz   isdigitMovdx_B_3


checkMovdx_if_3_B_3 :
mov bh, 33h
cmp al, bh
jnz  checkMovdx_if_4_B_3
jz   isdigitMovdx_B_3


checkMovdx_if_4_B_3 :
mov bh, 34h
cmp al, bh
jnz  checkMovdx_if_5_B_3
jz   isdigitMovdx_B_3


checkMovdx_if_5_B_3 :
mov bh, 35h
cmp al, bh
jnz  checkMovdx_if_6_B_3
jz   isdigitMovdx_B_3


checkMovdx_if_6_B_3 :
mov bh, 36h
cmp al, bh
jnz  checkMovdx_if_7_B_3
jz   isdigitMovdx_B_3

checkMovdx_if_7_B_3 :
mov bh, 37h
cmp al, bh
jnz  checkMovdx_if_8_B_3
jz   isdigitMovdx_B_3


checkMovdx_if_8_B_3 :
mov bh, 38h
cmp al, bh
jnz  checkMovdx_if_9_B_3
jz   isdigitMovdx_B_3

checkMovdx_if_9_B_3 :
mov bh, 39h
cmp al, bh
jnz  isletterMovdx_B_3
jz   isdigitMovdx_B_3



isdigitMovdx_B_3:; reg_Ax_1 + 5 is unit
sub al, 30h
add cl, al


jmp  finish_checkMovdx_digits_and_letters_of_input_B

isletterMovdx_B_3 :
sub al, 60h
add al, 9h
add cl, al


finish_checkMovdx_digits_and_letters_of_input_B :

mov ax, cx
mov real_reg_DX_2,ax
jmp continue

getRegisterName_dx_mov_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_operand_2
int 21h
; receive input from user
mov ah, 0AH
mov dx, offset operand_2
int 21h
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkMovdx_7
jnz another_register_name_checkMovdx_1_7


Ax_checkMovdx_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz dx_mov_ax
jnz another_compareMovdx_of_ax_1_7

dx_mov_ax:
mov ax, real_reg_dx_2
mov bx, real_reg_Ax_2
mov ax, bx
mov real_reg_dx_2, ax
jmp continue

another_compareMovdx_of_ax_1_7:
	mov bl, 68h; ascii of h
	cmp bl, [si]
	jz sizemismatch
	jnz another_compareMovdx_of_ax_2_7

	another_compareMovdx_of_ax_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_Register_name





another_register_name_checkMovdx_1_7:
; checkMovdx if register is bx
mov si, offset[operand_2 + 2]
mov bl, 62h; ascii of b
cmp bl, [si]
jz bx_checkMovdx_7
jnz another_register_name_checkMovdx_2_7

bx_checkMovdx_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz dx_mov_bx
jnz another_compareMovdx_of_bx_1_7


dx_mov_bx:
mov ax, real_reg_dx_2
mov bx, real_reg_bx_2
mov ax, bx
mov real_reg_dx_2, ax
jmp continue

another_compareMovdx_of_bx_1_7:
	mov bl, 68h; ascii of h
	cmp bl, [si]
	jz sizemismatch
	jnz another_compareMovdx_of_bx_2_7

	another_compareMovdx_of_bx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareMovdx_BP_7




; to checkMovdx if register is BP or not
compareMovdx_BP_7:
mov bl, 70h; ascii of p
cmp bl, [si]
jz dx_mov_BP
jnz error_Register_name

dx_mov_BP:
mov ax, real_reg_dx_2
mov bx, real_reg_bp_2
mov ax, bx
mov real_reg_dx_2, ax
jmp continue

another_register_name_checkMovdx_2_7:
	; checkMovdx if register is cx
	mov si, offset[operand_2 + 2]
	mov bl, 63h; ascii of c
	cmp bl, [si]
	jz cX_checkMovdx_7
	jnz another_register_name_checkMovdx_3_7


	cx_checkMovdx_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz dx_mov_cx
jnz error_Register_name

dx_mov_cx:
mov ax, real_reg_dx_2
mov bx, real_reg_cx_2
mov ax, bx
mov real_reg_dx_2, ax
jmp continue

another_compareMovdx_of_cx_1_7:
	mov bl, 68h; ascii of h
	cmp bl, [si]
	jz sizemismatch
	jnz another_compareMovdx_of_cx_2_7
	jmp continue

	another_compareMovdx_of_cx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkMovdx_3_7:
; checkMovdx if register is dx or dl or dh
mov si, offset[operand_2 + 2]
mov bl, 64h; ascii of d
cmp bl, [si]
jz dX_checkMovdx_7
jnz another_register_name_checkMovdx_4_7


dx_checkMovdx_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz dx_mov_dx
jnz another_compareMovdx_of_dx_1_7

dx_mov_dx:
mov ax, real_reg_dx_2
mov bx, real_reg_dx_2
mov ax, bx
mov real_reg_dx_2, ax
jmp continue

another_compareMovdx_of_dx_1_7:
	mov bl, 68h; ascii of h
	cmp bl, [si]
	jz sizemismatch
	jnz another_compareMovdx_of_dx_2_7

	another_compareMovdx_of_dx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareMovdx_DI_7

; to checkMovdx if register is DI or not
compareMovdx_DI_7:
mov bl, 69h; ascii of i
cmp bl, [si]
jz dx_mov_DI
jnz error_Register_name

dx_mov_DI:
mov ax, real_reg_dx_2
mov bx, real_reg_di_2
mov ax, bx
mov real_reg_dx_2, ax
jmp continue

another_register_name_checkMovdx_4_7:
	mov bl, 73h; ascii of s
	cmp bl, [si]
	jz checkMovdx_si_7
	jnz error_Register_name

	checkMovdx_si_7:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz dx_mov_si
jnz checkMovdx_sp_7

dx_mov_si:
mov ax, real_reg_dx_2
mov bx, real_reg_si_2
mov ax, bx
mov real_reg_dx_2, ax
jmp continue

checkMovdx_sp_7:
	mov bl, 70h; ascii of p
	cmp bl, [si]
	jz dx_mov_sp
	jnz error_Register_name

dx_mov_sp:
mov ax, real_reg_dx_2
mov bx, real_reg_sp_2
mov ax, bx
mov real_reg_dx_2, ax
jmp continue
;;;;dxMovOp2;;;;;endofcode
;;;;dhMovOp2;;;;;startOfcode
dhMovOp2:
mov ah, 9
mov dx, offset newline
int 21h


mov ah, 9
mov dx, offset value_OR_register
int 21h

; receive input from user
mov ah, 0AH
mov dx, offset vORr
int 21h

mov ah, vORr + 2
mov al, 72h; ascii of r
mov bl, 76h; ascii of v
cmp ah, al
jz getRegisterName_dh_mov_op2
cmp ah, bl
jz getValue_dh_mov_op2

getValue_dh_mov_op2:
mov ah, 9
mov dx, offset newline
int 21h

mov ah, 9
mov dx, offset Mess_value
int 21h

mov ah, 0AH
mov dx, offset value2
int 21h
mov al, value2 + 2
mov bh, 30h
cmp al, bh
jnz  checkMovDh_if_1_
jz   isdigitMovDh_

checkMovDh_if_1_:
mov bh, 31h
cmp al, bh
jnz  checkMovDh_if_2_
jz   isdigitMovDh_

checkMovDh_if_2_:
mov bh, 32h
cmp al, bh
jnz  checkMovDh_if_3_
jz   isdigitMovDh_

checkMovDh_if_3_:
mov bh, 33h
cmp al, bh
jnz  checkMovDh_if_4_
jz   isdigitMovDh_

checkMovDh_if_4_:
mov bh, 34h
cmp al, bh
jnz  checkMovDh_if_5_
jz   isdigitMovDh_


checkMovDh_if_5_:
mov bh, 35h
cmp al, bh
jnz  checkMovDh_if_6_
jz   isdigitMovDh_


checkMovDh_if_6_:
mov bh, 36h
cmp al, bh
jnz  checkMovDh_if_7_
jz   isdigitMovDh_


checkMovDh_if_7_:
mov bh, 37h
cmp al, bh
jnz  checkMovDh_if_8_
jz   isdigitMovDh_


checkMovDh_if_8_:
mov bh, 38h
cmp al, bh
jnz  checkMovDh_if_9_
jz   isdigitMovDh_


checkMovDh_if_9_:
mov bh, 39h
cmp al, bh
jnz  isletterMovDh_
jz   isdigitMovDh_




isdigitMovDh_:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovDh_2nd_char_

isletterMovDh_:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovDh_2nd_char_


checkMovDh_2nd_char_:
mov al, value2 + 3
mov bh, 30h
cmp al, bh
jnz  checkMovDh_if_1_1_
jz   isdigitMovDh_1_


checkMovDh_if_1_1_:
mov bh, 31h
cmp al, bh
jnz  checkMovDh_if_2_1_
jz   isdigitMovDh_1_


checkMovDh_if_2_1_:
mov bh, 32h
cmp al, bh
jnz  checkMovDh_if_3_1_
jz   isdigitMovDh_1_


checkMovDh_if_3_1_:
mov bh, 33h
cmp al, bh
jnz  checkMovDh_if_4_1_
jz   isdigitMovDh_1_


checkMovDh_if_4_1_:
mov bh, 34h
cmp al, bh
jnz  checkMovDh_if_5_1_
jz   isdigitMovDh_1_


checkMovDh_if_5_1_:
mov bh, 35h
cmp al, bh
jnz  checkMovDh_if_6_1_
jz   isdigitMovDh_1_


checkMovDh_if_6_1_:
mov bh, 36h
cmp al, bh
jnz  checkMovDh_if_7_1_
jz   isdigitMovDh_1_


checkMovDh_if_7_1_:
mov bh, 37h
cmp al, bh
jnz  checkMovDh_if_8_1_
jz   isdigitMovDh_1_


checkMovDh_if_8_1_:
mov bh, 38h
cmp al, bh
jnz  checkMovDh_if_9_1_
jz   isdigitMovDh_1_


checkMovDh_if_9_1_:
mov bh, 39h
cmp al, bh
jnz  isletterMovDh_1_
jz   isdigitMovDh_1_



isdigitMovDh_1_:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  finish_checkMovDh_digits_and_letters_of_input_


isletterMovDh_1_:
sub al, 60h
add al, 9h
add ch, al

jmp  finish_checkMovDh_digits_and_letters_of_input_


finish_checkMovDh_digits_and_letters_of_input_:

mov ax, cx
mov byte ptr real_reg_DX_2+1,ah
jmp continue

getRegisterName_dh_mov_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_operand_2
int 21h
; receive input from user
mov ah, 0AH
mov dx, offset operand_2
int 21h
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkMovDh_8
jnz another_register_name_checkMovDh_1_8


Ax_checkMovDh_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovDh_ax_1_8

another_compareMovDh_ax_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz Dh_mov_ah
jnz another_compareMovDh_of_ax_2_8


Dh_mov_ah:
mov ah, byte ptr real_reg_dx_2+1 
mov bh, byte ptr real_reg_Ax_2 + 1
mov ah, bh
mov byte ptr real_reg_dx_2+1 , ah
jmp continue

another_compareMovDh_of_ax_2_8:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz Dh_mov_al
	jnz error_Register_name

	Dh_mov_al:
mov ah, byte ptr real_reg_dx_2+1 
mov bh, byte ptr real_reg_Ax_2
mov ah, bh
mov byte ptr real_reg_dx_2+1 , ah
jmp continue


another_register_name_checkMovDh_1_8:
	; checkMovDh if register is bx
	mov si, offset[operand_2 + 2]
	mov bl, 62h; ascii of b
	cmp bl, [si]
	jz bx_checkMovDh_8
	jnz another_register_name_checkMovDh_2_8

	bx_checkMovDh_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovDh_of_bx_1_8


another_compareMovDh_of_bx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz Dh_mov_bh
jnz another_compareMovDh_of_bx_2_8

Dh_mov_bh:
mov ah, byte ptr real_reg_dx_2+1 
mov bh, byte ptr real_reg_bx_2 + 1
mov ah, bh
mov byte ptr real_reg_dx_2+1 , ah
jmp continue


another_compareMovDh_of_bx_2_8:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz dh_mov_bl
	jnz compareMovDh_BP_8


Dh_mov_bl:
mov ah, byte ptr real_reg_dx_2+1 
mov bh, byte ptr real_reg_bx_2
mov ah, bh
mov byte ptr real_reg_dx_2+1 , ah
jmp continue

; to checkMovDh if register is BP or not
compareMovDh_BP_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkMovDh_2_8:
; checkMovDh if register is cx
mov si, offset[operand_2 + 2]
mov bl, 63h; ascii of c
cmp bl, [si]
jz cX_checkMovDh_8
jnz another_register_name_checkMovDh_3_8


cx_checkMovDh_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovDh_of_cx_1_8


another_compareMovDh_of_cx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz Dh_mov_ch
jnz another_compareMovDh_of_cx_2_8

Dh_mov_ch:
mov ah, byte ptr real_reg_dx_2+1 
mov bh, byte ptr real_reg_cx_2 + 1
mov ah, bh
mov byte ptr real_reg_dx_2+1 , ah
jmp continue


another_compareMovDh_of_cx_2_8:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz Dh_mov_cl
	jnz error_Register_name

	Dh_mov_cl:
mov ah, byte ptr real_reg_dx_2+1 
mov bh, byte ptr real_reg_cx_2
mov ah, bh
mov byte ptr real_reg_dx_2+1 , ah
jmp continue


another_register_name_checkMovDh_3_8:
	; checkMovDh if register is dx or dl or dh
	mov si, offset[operand_2 + 2]
	mov bl, 64h; ascii of d
	cmp bl, [si]
	jz dX_checkMovDh_8
	jnz another_register_name_checkMovDh_4_8


	dx_checkMovDh_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovDh_of_dx_1_8


another_compareMovDh_of_dx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz Dh_mov_dh
jnz another_compareMovDh_of_dx_2_8

Dh_mov_dh:
mov ah, byte ptr real_reg_dx_2+1 
mov bh, byte ptr real_reg_dx_2 + 1
mov ah, bh
mov byte ptr real_reg_dx_2+1 , ah
jmp continue

another_compareMovDh_of_dx_2_8:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz Dh_mov_dl
	jnz compareMovDh_DI_8

	Dh_mov_dl:
mov ah, byte ptr real_reg_dx_2+1 
mov bh, byte ptr real_reg_dx_2
mov ah, bh
mov byte ptr real_reg_dx_2+1 , ah
jmp continue

; to checkMovDh if register is DI or not
compareMovDh_DI_8:
mov bl, 69h; ascii of i
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkMovDh_4_8:
mov bl, 73h; ascii of s
cmp bl, [si]
jz checkMovDh_si_8
jnz error_Register_name

checkMovDh_si_8:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz sizemismatch
jnz checkMovDh_sp_8

checkMovDh_sp_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_Register_name
;;;;dhMovOp2;;;;;endofcode

;;;;dlMovOp2;;;;;startOfcode
dlMovOp2:
mov ah, 9
mov dx, offset newline
int 21h


mov ah, 9
mov dx, offset value_OR_register
int 21h

; receive input from user
mov ah, 0AH
mov dx, offset vORr
int 21h

mov ah, vORr + 2
mov al, 72h; ascii of r
mov bl, 76h; ascii of v
cmp ah, al
jz getRegisterName_dl_mov_op2
cmp ah, bl
jz getValue_dl_mov_op2
getValue_dl_mov_op2:
mov ah, 9
mov dx, offset newline
int 21h

mov ah, 9
mov dx, offset Mess_value
int 21h

mov ah, 0AH
mov dx, offset value2
int 21h
mov al, value2 + 2
mov bh, 30h
cmp al, bh
jnz  checkMovDl_if_1_
jz   isdigitMovDl_

checkMovDl_if_1_:
mov bh, 31h
cmp al, bh
jnz  checkMovDl_if_2_
jz   isdigitMovDl_

checkMovDl_if_2_:
mov bh, 32h
cmp al, bh
jnz  checkMovDl_if_3_
jz   isdigitMovDl_

checkMovDl_if_3_:
mov bh, 33h
cmp al, bh
jnz  checkMovDl_if_4_
jz   isdigitMovDl_

checkMovDl_if_4_:
mov bh, 34h
cmp al, bh
jnz  checkMovDl_if_5_
jz   isdigitMovDl_


checkMovDl_if_5_:
mov bh, 35h
cmp al, bh
jnz  checkMovDl_if_6_
jz   isdigitMovDl_


checkMovDl_if_6_:
mov bh, 36h
cmp al, bh
jnz  checkMovDl_if_7_
jz   isdigitMovDl_


checkMovDl_if_7_:
mov bh, 37h
cmp al, bh
jnz  checkMovDl_if_8_
jz   isdigitMovDl_


checkMovDl_if_8_:
mov bh, 38h
cmp al, bh
jnz  checkMovDl_if_9_
jz   isdigitMovDl_


checkMovDl_if_9_:
mov bh, 39h
cmp al, bh
jnz  isletterMovDl_
jz   isdigitMovDl_




isdigitMovDl_:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovDl_2nd_char_

isletterMovDl_:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovDl_2nd_char_


checkMovDl_2nd_char_:
mov al, value2 + 3
mov bh, 30h
cmp al, bh
jnz  checkMovDl_if_1_1_
jz   isdigitMovDl_1_


checkMovDl_if_1_1_:
mov bh, 31h
cmp al, bh
jnz  checkMovDl_if_2_1_
jz   isdigitMovDl_1_


checkMovDl_if_2_1_:
mov bh, 32h
cmp al, bh
jnz  checkMovDl_if_3_1_
jz   isdigitMovDl_1_


checkMovDl_if_3_1_:
mov bh, 33h
cmp al, bh
jnz  checkMovDl_if_4_1_
jz   isdigitMovDl_1_


checkMovDl_if_4_1_:
mov bh, 34h
cmp al, bh
jnz  checkMovDl_if_5_1_
jz   isdigitMovDl_1_


checkMovDl_if_5_1_:
mov bh, 35h
cmp al, bh
jnz  checkMovDl_if_6_1_
jz   isdigitMovDl_1_


checkMovDl_if_6_1_:
mov bh, 36h
cmp al, bh
jnz  checkMovDl_if_7_1_
jz   isdigitMovDl_1_


checkMovDl_if_7_1_:
mov bh, 37h
cmp al, bh
jnz  checkMovDl_if_8_1_
jz   isdigitMovDl_1_


checkMovDl_if_8_1_:
mov bh, 38h
cmp al, bh
jnz  checkMovDl_if_9_1_
jz   isdigitMovDl_1_


checkMovDl_if_9_1_:
mov bh, 39h
cmp al, bh
jnz  isletterMovDl_1_
jz   isdigitMovDl_1_



isdigitMovDl_1_:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  finish_checkMovDl_digits_and_letters_of_input_


isletterMovDl_1_:
sub al, 60h
add al, 9h
add ch, al

jmp  finish_checkMovDl_digits_and_letters_of_input_


finish_checkMovDl_digits_and_letters_of_input_:

mov ax, cx
mov byte ptr real_reg_dx_2,ah
jmp continue

getRegisterName_dl_mov_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_operand_2
int 21h
; receive input from user
mov ah, 0AH
mov dx, offset operand_2
int 21h

mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkMovDl_8
jnz another_register_name_checkMovDl_1_8


Ax_checkMovDl_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovDl_ax_1_8

another_compareMovDl_ax_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz Dl_mov_ah
jnz another_compareMovDl_of_ax_2_8


Dl_mov_ah:
mov ah, byte ptr real_reg_dx_2 
mov bh, byte ptr real_reg_Ax_2 + 1
mov ah, bh
mov byte ptr real_reg_dx_2 , ah
jmp continue

another_compareMovDl_of_ax_2_8:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz Dl_mov_al
	jnz error_Register_name

	Dl_mov_al:
mov ah, byte ptr real_reg_dx_2 
mov bh, byte ptr real_reg_Ax_2
mov ah, bh
mov byte ptr real_reg_dx_2 , ah
jmp continue


another_register_name_checkMovDl_1_8:
	; checkMovDl if register is bx
	mov si, offset[operand_2 + 2]
	mov bl, 62h; ascii of b
	cmp bl, [si]
	jz bx_checkMovDl_8
	jnz another_register_name_checkMovDl_2_8

	bx_checkMovDl_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovDl_of_bx_1_8


another_compareMovDl_of_bx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz Dl_mov_bh
jnz another_compareMovDl_of_bx_2_8

Dl_mov_bh:
mov ah, byte ptr real_reg_dx_2 
mov bh, byte ptr real_reg_bx_2 + 1
mov ah, bh
mov byte ptr real_reg_dx_2 , ah
jmp continue


another_compareMovDl_of_bx_2_8:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz ah_mov_bl
	jnz compareMovDl_BP_8


	Dl_mov_bl:
mov ah, byte ptr real_reg_dx_2 
mov bh, byte ptr real_reg_bx_2
mov ah, bh
mov byte ptr real_reg_dx_2 , ah
jmp continue

; to checkMovDl if register is BP or not
compareMovDl_BP_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkMovDl_2_8:
; checkMovDl if register is cx
mov si, offset[operand_2 + 2]
mov bl, 63h; ascii of c
cmp bl, [si]
jz cX_checkMovDl_8
jnz another_register_name_checkMovDl_3_8


cx_checkMovDl_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovDl_of_cx_1_8


another_compareMovDl_of_cx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz Dl_mov_ch
jnz another_compareMovDl_of_cx_2_8

Dl_mov_ch:
mov ah, byte ptr real_reg_dx_2 
mov bh, byte ptr real_reg_cx_2 + 1
mov ah, bh
mov byte ptr real_reg_dx_2 , ah
jmp continue


another_compareMovDl_of_cx_2_8:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz Dl_mov_cl
	jnz error_Register_name

	Dl_mov_cl:
mov ah, byte ptr real_reg_dx_2 
mov bh, byte ptr real_reg_cx_2
mov ah, bh
mov byte ptr real_reg_dx_2 , ah
jmp continue


another_register_name_checkMovDl_3_8:
	; checkMovDl if register is dx or dl or dh
	mov si, offset[operand_2 + 2]
	mov bl, 64h; ascii of d
	cmp bl, [si]
	jz dX_checkMovDl_8
	jnz another_register_name_checkMovDl_4_8


	dx_checkMovDl_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareMovDl_of_dx_1_8


another_compareMovDl_of_dx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz Dl_mov_dh
jnz another_compareMovDl_of_dx_2_8

Dl_mov_dh:
mov ah, byte ptr real_reg_dx_2 
mov bh, byte ptr real_reg_dx_2 + 1
mov ah, bh
mov byte ptr real_reg_dx_2 , ah
jmp continue

another_compareMovDl_of_dx_2_8:
	mov bl, 6ch; ascii of l
	cmp bl, [si]
	jz Dl_mov_dl
	jnz compareMovDl_DI_8

	Dl_mov_dl:
mov ah, byte ptr real_reg_dx_2 
mov bh, byte ptr real_reg_dx_2
mov ah, bh
mov byte ptr real_reg_dx_2 , ah
jmp continue

; to checkMovDl if register is DI or not
compareMovDl_DI_8:
mov bl, 69h; ascii of i
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkMovDl_4_8:
mov bl, 73h; ascii of s
cmp bl, [si]
jz checkMovDl_si_8
jnz error_Register_name

checkMovDl_si_8:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz sizemismatch
jnz checkMovDl_sp_8

checkMovDl_sp_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_Register_name
;;;dlMovOp2;;;;;;;endOfcode

;;;;;diMovOp2;;;;;;startOfCode
diMovOp2:
mov ah, 9
mov dx, offset newline
int 21h


mov ah, 9
mov dx, offset value_OR_register
int 21h

; receive input from user
mov ah, 0AH
mov dx, offset vORr
int 21h

mov ah, vORr + 2
mov al, 72h; ascii of r
mov bl, 76h; ascii of v
cmp ah, al
jz getRegisterName_di_mov_op2
cmp ah, bl
jz getValue_di_mov_op2

getValue_di_mov_op2:
mov ah, 9
mov dx, offset newline
int 21h

mov ah, 9
mov dx, offset Mess_value
int 21h

mov ah, 0AH
mov dx, offset value
int 21h

mov al, value + 2
mov bh, 30h
cmp al, bh
jnz  checkMovdi_if_1_B
jz   isdigitMovdi_B

checkMovdi_if_1_B :
mov bh, 31h
cmp al, bh
jnz  checkMovdi_if_2_B
jz   isdigitMovdi_B

checkMovdi_if_2_B :
mov bh, 32h
cmp al, bh
jnz  checkMovdi_if_3_B
jz   isdigitMovdi_B

checkMovdi_if_3_B :
mov bh, 33h
cmp al, bh
jnz  checkMovdi_if_4_B
jz   isdigitMovdi_B

checkMovdi_if_4_B :
mov bh, 34h
cmp al, bh
jnz  checkMovdi_if_5_B
jz   isdigitMovdi_B


checkMovdi_if_5_B :
mov bh, 35h
cmp al, bh
jnz  checkMovdi_if_6_B
jz   isdigitMovdi_B


checkMovdi_if_6_B :
mov bh, 36h
cmp al, bh
jnz  checkMovdi_if_7_B
jz   isdigitMovdi_B


checkMovdi_if_7_B :
mov bh, 37h
cmp al, bh
jnz  checkMovdi_if_8_B
jz   isdigitMovdi_B


checkMovdi_if_8_B :
mov bh, 38h
cmp al, bh
jnz  checkMovdi_if_9_B
jz   isdigitMovdi_B


checkMovdi_if_9_B :
mov bh, 39h
cmp al, bh
jnz  isletterMovdi_B
jz   isdigitMovdi_B




isdigitMovdi_B:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovdi_2nd_char_B

isletterMovdi_B :
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovdi_2nd_char_B


checkMovdi_2nd_char_B :
mov al, value + 3
mov bh, 30h
cmp al, bh
jnz  checkMovdi_if_1_B_1
jz   isdigitMovdi_B_1


checkMovdi_if_1_B_1 :
mov bh, 31h
cmp al, bh
jnz  checkMovdi_if_2_B_1
jz   isdigitMovdi_B_1


checkMovdi_if_2_B_1 :
mov bh, 32h
cmp al, bh
jnz  checkMovdi_if_3_B_1
jz   isdigitMovdi_B_1


checkMovdi_if_3_B_1 :
mov bh, 33h
cmp al, bh
jnz  checkMovdi_if_4_B_1
jz   isdigitMovdi_B_1


checkMovdi_if_4_B_1 :
mov bh, 34h
cmp al, bh
jnz  checkMovdi_if_5_B_1
jz   isdigitMovdi_B_1


checkMovdi_if_5_B_1 :
mov bh, 35h
cmp al, bh
jnz  checkMovdi_if_6_B_1
jz   isdigitMovdi_B_1


checkMovdi_if_6_B_1 :
mov bh, 36h
cmp al, bh
jnz  checkMovdi_if_7_B_1
jz   isdigitMovdi_B_1


checkMovdi_if_7_B_1 :
mov bh, 37h
cmp al, bh
jnz checkMovdi_if_8_B_1
jz  isdigitMovdi_B_1


checkMovdi_if_8_B_1 :
mov bh, 38h
cmp al, bh
jnz  checkMovdi_if_9_B_1
jz   isdigitMovdi_B_1


checkMovdi_if_9_B_1 :
mov bh, 39h
cmp al, bh
jnz  isletterMovdi_B_1
jz   isdigitMovdi_B_1



isdigitMovdi_B_1:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  checkMovdi_3rd_char_B


isletterMovdi_B_1 :
sub al, 60h
add al, 9h
add ch, al

jmp  checkMovdi_3rd_char_B
checkMovdi_3rd_char_B :
mov al, value + 4
mov bh, 30h
cmp al, bh
jnz  checkMovdi_if_1_B_2
jz   isdigitMovdi_B_2

checkMovdi_if_1_B_2 :
mov bh, 31h
cmp al, bh
jnz  checkMovdi_if_2_B_2
jz   isdigitMovdi_B_2

checkMovdi_if_2_B_2 :
mov bh, 32h
cmp al, bh
jnz  checkMovdi_if_3_B_2
jz   isdigitMovdi_B_2

checkMovdi_if_3_B_2 :
mov bh, 33h
cmp al, bh
jnz  checkMovdi_if_4_B_2
jz   isdigitMovdi_B_2

checkMovdi_if_4_B_2 :
mov bh, 34h
cmp al, bh
jnz  checkMovdi_if_5_B_2
jz   isdigitMovdi_B_2


checkMovdi_if_5_B_2 :
mov bh, 35h
cmp al, bh
jnz  checkMovdi_if_6_B_2
jz   isdigitMovdi_B_2

checkMovdi_if_6_B_2 :
mov bh, 36h
cmp al, bh
jnz  checkMovdi_if_7_B_2
jz   isdigitMovdi_B_2


checkMovdi_if_7_B_2 :
mov bh, 37h
cmp al, bh
jnz  checkMovdi_if_8_B_2
jz   isdigitMovdi_B_2


checkMovdi_if_8_B_2 :
mov bh, 38h
cmp al, bh
jnz  checkMovdi_if_9_B_2
jz   isdigitMovdi_B_2


checkMovdi_if_9_B_2 :
mov bh, 39h
cmp al, bh
jnz  isletterMovdi_B_2
jz   isdigitMovdi_B_2



isdigitMovdi_B_2:; reg_Ax_1 + 4 is tens
sub al, 30h
mov bl, 10h
mul bl
mov cl, al


jmp  checkMovdi_4th_char_B


isletterMovdi_B_2 :
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov cl, al


checkMovdi_4th_char_B :

mov al, value + 5
mov bh, 30h
cmp al, bh
jnz  checkMovdi_if_1_B_3
jz   isdigitMovdi_B_3


checkMovdi_if_1_B_3 :
mov bh, 31h
cmp al, bh
jnz  checkMovdi_if_2_B_3
jz   isdigitMovdi_B_3


checkMovdi_if_2_B_3 :
mov bh, 32h
cmp al, bh
jnz  checkMovdi_if_3_B_3
jz   isdigitMovdi_B_3


checkMovdi_if_3_B_3 :
mov bh, 33h
cmp al, bh
jnz  checkMovdi_if_4_B_3
jz   isdigitMovdi_B_3


checkMovdi_if_4_B_3 :
mov bh, 34h
cmp al, bh
jnz  checkMovdi_if_5_B_3
jz   isdigitMovdi_B_3


checkMovdi_if_5_B_3 :
mov bh, 35h
cmp al, bh
jnz  checkMovdi_if_6_B_3
jz   isdigitMovdi_B_3


checkMovdi_if_6_B_3 :
mov bh, 36h
cmp al, bh
jnz  checkMovdi_if_7_B_3
jz   isdigitMovdi_B_3

checkMovdi_if_7_B_3 :
mov bh, 37h
cmp al, bh
jnz  checkMovdi_if_8_B_3
jz   isdigitMovdi_B_3


checkMovdi_if_8_B_3 :
mov bh, 38h
cmp al, bh
jnz  checkMovdi_if_9_B_3
jz   isdigitMovdi_B_3

checkMovdi_if_9_B_3 :
mov bh, 39h
cmp al, bh
jnz  isletterMovdi_B_3
jz   isdigitMovdi_B_3



isdigitMovdi_B_3:; reg_Ax_1 + 5 is unit
sub al, 30h
add cl, al


jmp  finish_checkMovdi_digits_and_letters_of_input_B

isletterMovdi_B_3 :
sub al, 60h
add al, 9h
add cl, al


finish_checkMovdi_digits_and_letters_of_input_B :

mov ax, cx
mov real_reg_di_2,ax
jmp continue

getRegisterName_di_mov_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_operand_2
int 21h
; receive input from user
mov ah, 0AH
mov dx, offset operand_2
int 21h
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkMovdi_7
jnz another_register_name_checkMovdi_1_7


Ax_checkMovdi_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz di_mov_ax
jnz another_compareMovdi_of_ax_1_7

di_mov_ax:
mov ax, real_reg_di_2
mov bx, real_reg_Ax_2
mov ax, bx
mov real_reg_di_2, ax
jmp continue

another_compareMovdi_of_ax_1_7:
	mov bl, 68h; ascii of h
	cmp bl, [si]
	jz sizemismatch
	jnz another_compareMovdi_of_ax_2_7

another_compareMovdi_of_ax_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_Register_name

another_register_name_checkMovdi_1_7:
; checkMovdi if register is bx
mov si, offset[operand_2 + 2]
mov bl, 62h; ascii of b
cmp bl, [si]
jz bx_checkMovdi_7
jnz another_register_name_checkMovdi_2_7

bx_checkMovdi_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz di_mov_bx
jnz another_compareMovdi_of_bx_1_7


di_mov_bx:
mov ax, real_reg_di_2
mov bx, real_reg_bx_2
mov ax, bx
mov real_reg_di_2, ax
jmp continue

another_compareMovdi_of_bx_1_7:
	mov bl, 68h; ascii of h
	cmp bl, [si]
	jz sizemismatch
	jnz another_compareMovdi_of_bx_2_7

	another_compareMovdi_of_bx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareMovdi_BP_7




; to checkMovdi if register is BP or not
compareMovdi_BP_7:
mov bl, 70h; ascii of p
cmp bl, [si]
jz di_mov_BP
jnz error_Register_name

di_mov_BP:
mov ax, real_reg_di_2
mov bx, real_reg_bp_2
mov ax, bx
mov real_reg_di_2, ax
jmp continue

another_register_name_checkMovdi_2_7:
	; checkMovdi if register is cx
	mov si, offset[operand_2 + 2]
	mov bl, 63h; ascii of c
	cmp bl, [si]
	jz cX_checkMovdi_7
	jnz another_register_name_checkMovdi_3_7


	cx_checkMovdi_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz di_mov_cx
jnz error_Register_name

di_mov_cx:
mov ax, real_reg_di_2
mov bx, real_reg_cx_2
mov ax, bx
mov real_reg_di_2, ax
jmp continue

another_compareMovdi_of_cx_1_7:
	mov bl, 68h; ascii of h
	cmp bl, [si]
	jz sizemismatch
	jnz another_compareMovdi_of_cx_2_7
	jmp continue

	another_compareMovdi_of_cx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkMovdi_3_7:
; checkMovdi if register is dx or dl or dh
mov si, offset[operand_2 + 2]
mov bl, 64h; ascii of d
cmp bl, [si]
jz dX_checkMovdi_7
jnz another_register_name_checkMovdi_4_7


dx_checkMovdi_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz di_mov_dx
jnz another_compareMovdi_of_dx_1_7

di_mov_dx:
mov ax, real_reg_di_2
mov bx, real_reg_dx_2
mov ax, bx
mov real_reg_di_2, ax
jmp continue

another_compareMovdi_of_dx_1_7:
	mov bl, 68h; ascii of h
	cmp bl, [si]
	jz sizemismatch
	jnz another_compareMovdi_of_dx_2_7

	another_compareMovdi_of_dx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareMovdi_DI_7

; to checkMovdi if register is DI or not
compareMovdi_DI_7:
mov bl, 69h; ascii of i
cmp bl, [si]
jz di_mov_DI
jnz error_Register_name

di_mov_DI:
mov ax, real_reg_di_2
mov bx, real_reg_di_2
mov ax, bx
mov real_reg_di_2, ax
jmp continue

another_register_name_checkMovdi_4_7:
	mov bl, 73h; ascii of s
	cmp bl, [si]
	jz checkMovdi_si_7
	jnz error_Register_name

	checkMovdi_si_7:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz di_mov_si
jnz checkMovdi_sp_7

di_mov_si:
mov ax, real_reg_di_2
mov bx, real_reg_si_2
mov ax, bx
mov real_reg_di_2, ax
jmp continue

checkMovdi_sp_7:
	mov bl, 70h; ascii of p
	cmp bl, [si]
	jz di_mov_sp
	jnz error_Register_name

	di_mov_sp:
mov ax, real_reg_di_2
mov bx, real_reg_sp_2
mov ax, bx
mov real_reg_di_2, ax
jmp continue
;;;;;diMovOp2;;;;;endOfCode

;;;siMovOp2;;;;;;;;startofcode
siMovOp2:
mov ah, 9
mov dx, offset newline
int 21h


mov ah, 9
mov dx, offset value_OR_register
int 21h

; receive input from user
mov ah, 0AH
mov dx, offset vORr
int 21h

mov ah, vORr + 2
mov al, 72h; ascii of r
mov bl, 76h; ascii of v
cmp ah, al
jz getRegisterName_si_mov_op2
cmp ah, bl
jz getValue_si_mov_op2

getValue_si_mov_op2:
mov ah, 9
mov dx, offset newline
int 21h

mov ah, 9
mov dx, offset Mess_value
int 21h

mov ah, 0AH
mov dx, offset value
int 21h
mov al, value + 2
mov bh, 30h
cmp al, bh
jnz  checkMovsi_if_1_B
jz   isdigitMovsi_B

checkMovsi_if_1_B :
mov bh, 31h
cmp al, bh
jnz  checkMovsi_if_2_B
jz   isdigitMovsi_B

checkMovsi_if_2_B :
mov bh, 32h
cmp al, bh
jnz  checkMovsi_if_3_B
jz   isdigitMovsi_B

checkMovsi_if_3_B :
mov bh, 33h
cmp al, bh
jnz  checkMovsi_if_4_B
jz   isdigitMovsi_B

checkMovsi_if_4_B :
mov bh, 34h
cmp al, bh
jnz  checkMovsi_if_5_B
jz   isdigitMovsi_B


checkMovsi_if_5_B :
mov bh, 35h
cmp al, bh
jnz  checkMovsi_if_6_B
jz   isdigitMovsi_B


checkMovsi_if_6_B :
mov bh, 36h
cmp al, bh
jnz  checkMovsi_if_7_B
jz   isdigitMovsi_B


checkMovsi_if_7_B :
mov bh, 37h
cmp al, bh
jnz  checkMovsi_if_8_B
jz   isdigitMovsi_B


checkMovsi_if_8_B :
mov bh, 38h
cmp al, bh
jnz  checkMovsi_if_9_B
jz   isdigitMovsi_B


checkMovsi_if_9_B :
mov bh, 39h
cmp al, bh
jnz  isletterMovsi_B
jz   isdigitMovsi_B




isdigitMovsi_B:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovsi_2nd_char_B

isletterMovsi_B :
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovsi_2nd_char_B


checkMovsi_2nd_char_B :
mov al, value + 3
mov bh, 30h
cmp al, bh
jnz  checkMovsi_if_1_B_1
jz   isdigitMovsi_B_1


checkMovsi_if_1_B_1 :
mov bh, 31h
cmp al, bh
jnz  checkMovsi_if_2_B_1
jz   isdigitMovsi_B_1


checkMovsi_if_2_B_1 :
mov bh, 32h
cmp al, bh
jnz  checkMovsi_if_3_B_1
jz   isdigitMovsi_B_1


checkMovsi_if_3_B_1 :
mov bh, 33h
cmp al, bh
jnz  checkMovsi_if_4_B_1
jz   isdigitMovsi_B_1


checkMovsi_if_4_B_1 :
mov bh, 34h
cmp al, bh
jnz  checkMovsi_if_5_B_1
jz   isdigitMovsi_B_1


checkMovsi_if_5_B_1 :
mov bh, 35h
cmp al, bh
jnz  checkMovsi_if_6_B_1
jz   isdigitMovsi_B_1


checkMovsi_if_6_B_1 :
mov bh, 36h
cmp al, bh
jnz  checkMovsi_if_7_B_1
jz   isdigitMovsi_B_1


checkMovsi_if_7_B_1 :
mov bh, 37h
cmp al, bh
jnz checkMovsi_if_8_B_1
jz  isdigitMovsi_B_1


checkMovsi_if_8_B_1 :
mov bh, 38h
cmp al, bh
jnz  checkMovsi_if_9_B_1
jz   isdigitMovsi_B_1


checkMovsi_if_9_B_1 :
mov bh, 39h
cmp al, bh
jnz  isletterMovsi_B_1
jz   isdigitMovsi_B_1



isdigitMovsi_B_1:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  checkMovsi_3rd_char_B


isletterMovsi_B_1 :
sub al, 60h
add al, 9h
add ch, al

jmp  checkMovsi_3rd_char_B
checkMovsi_3rd_char_B :
mov al, value + 4
mov bh, 30h
cmp al, bh
jnz  checkMovsi_if_1_B_2
jz   isdigitMovsi_B_2

checkMovsi_if_1_B_2 :
mov bh, 31h
cmp al, bh
jnz  checkMovsi_if_2_B_2
jz   isdigitMovsi_B_2

checkMovsi_if_2_B_2 :
mov bh, 32h
cmp al, bh
jnz  checkMovsi_if_3_B_2
jz   isdigitMovsi_B_2

checkMovsi_if_3_B_2 :
mov bh, 33h
cmp al, bh
jnz  checkMovsi_if_4_B_2
jz   isdigitMovsi_B_2

checkMovsi_if_4_B_2 :
mov bh, 34h
cmp al, bh
jnz  checkMovsi_if_5_B_2
jz   isdigitMovsi_B_2


checkMovsi_if_5_B_2 :
mov bh, 35h
cmp al, bh
jnz  checkMovsi_if_6_B_2
jz   isdigitMovsi_B_2

checkMovsi_if_6_B_2 :
mov bh, 36h
cmp al, bh
jnz  checkMovsi_if_7_B_2
jz   isdigitMovsi_B_2


checkMovsi_if_7_B_2 :
mov bh, 37h
cmp al, bh
jnz  checkMovsi_if_8_B_2
jz   isdigitMovsi_B_2


checkMovsi_if_8_B_2 :
mov bh, 38h
cmp al, bh
jnz  checkMovsi_if_9_B_2
jz   isdigitMovsi_B_2


checkMovsi_if_9_B_2 :
mov bh, 39h
cmp al, bh
jnz  isletterMovsi_B_2
jz   isdigitMovsi_B_2



isdigitMovsi_B_2:; reg_Ax_1 + 4 is tens
sub al, 30h
mov bl, 10h
mul bl
mov cl, al


jmp  checkMovsi_4th_char_B


isletterMovsi_B_2 :
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov cl, al


checkMovsi_4th_char_B :

mov al, value + 5
mov bh, 30h
cmp al, bh
jnz  checkMovsi_if_1_B_3
jz   isdigitMovsi_B_3


checkMovsi_if_1_B_3 :
mov bh, 31h
cmp al, bh
jnz  checkMovsi_if_2_B_3
jz   isdigitMovsi_B_3


checkMovsi_if_2_B_3 :
mov bh, 32h
cmp al, bh
jnz  checkMovsi_if_3_B_3
jz   isdigitMovsi_B_3


checkMovsi_if_3_B_3 :
mov bh, 33h
cmp al, bh
jnz  checkMovsi_if_4_B_3
jz   isdigitMovsi_B_3


checkMovsi_if_4_B_3 :
mov bh, 34h
cmp al, bh
jnz  checkMovsi_if_5_B_3
jz   isdigitMovsi_B_3


checkMovsi_if_5_B_3 :
mov bh, 35h
cmp al, bh
jnz  checkMovsi_if_6_B_3
jz   isdigitMovsi_B_3


checkMovsi_if_6_B_3 :
mov bh, 36h
cmp al, bh
jnz  checkMovsi_if_7_B_3
jz   isdigitMovsi_B_3

checkMovsi_if_7_B_3 :
mov bh, 37h
cmp al, bh
jnz  checkMovsi_if_8_B_3
jz   isdigitMovsi_B_3


checkMovsi_if_8_B_3 :
mov bh, 38h
cmp al, bh
jnz  checkMovsi_if_9_B_3
jz   isdigitMovsi_B_3

checkMovsi_if_9_B_3 :
mov bh, 39h
cmp al, bh
jnz  isletterMovsi_B_3
jz   isdigitMovsi_B_3



isdigitMovsi_B_3:; reg_Ax_1 + 5 is unit
sub al, 30h
add cl, al


jmp  finish_checkMovsi_digits_and_letters_of_input_B

isletterMovsi_B_3 :
sub al, 60h
add al, 9h
add cl, al


finish_checkMovsi_digits_and_letters_of_input_B :

mov ax, cx
mov real_reg_si_2,ax
jmp continue

getRegisterName_si_mov_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_operand_2
int 21h
; receive input from user
mov ah, 0AH
mov dx, offset operand_2
int 21h


mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkMovsi_7
jnz another_register_name_checkMovsi_1_7


Ax_checkMovsi_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz si_mov_ax
jnz another_compareMovsi_of_ax_1_7

si_mov_ax:
mov ax, real_reg_si_2
mov bx, real_reg_Ax_2
mov ax, bx
mov real_reg_si_2, ax
jmp continue

another_compareMovsi_of_ax_1_7:
	mov bl, 68h; ascii of h
	cmp bl, [si]
	jz sizemismatch
	jnz another_compareMovsi_of_ax_2_7

	another_compareMovsi_of_ax_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_Register_name





another_register_name_checkMovsi_1_7:
; checkMovsi if register is bx
mov si, offset[operand_2 + 2]
mov bl, 62h; ascii of b
cmp bl, [si]
jz bx_checkMovsi_7
jnz another_register_name_checkMovsi_2_7

bx_checkMovsi_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz si_mov_bx
jnz another_compareMovsi_of_bx_1_7


si_mov_bx:
mov ax, real_reg_si_2
mov bx, real_reg_bx_2
mov ax, bx
mov real_reg_si_2, ax
jmp continue

another_compareMovsi_of_bx_1_7:
	mov bl, 68h; ascii of h
	cmp bl, [si]
	jz sizemismatch
	jnz another_compareMovsi_of_bx_2_7

	another_compareMovsi_of_bx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareMovsi_BP_7




; to checkMovsi if register is BP or not
compareMovsi_BP_7:
mov bl, 70h; ascii of p
cmp bl, [si]
jz si_mov_BP
jnz error_Register_name

si_mov_BP:
mov ax, real_reg_si_2
mov bx, real_reg_bp_2
mov ax, bx
mov real_reg_si_2, ax
jmp continue

another_register_name_checkMovsi_2_7:
	; checkMovsi if register is cx
	mov si, offset[operand_2 + 2]
	mov bl, 63h; ascii of c
	cmp bl, [si]
	jz cX_checkMovsi_7
	jnz another_register_name_checkMovsi_3_7


	cx_checkMovsi_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz si_mov_cx
jnz error_Register_name

si_mov_cx:
mov ax, real_reg_si_2
mov bx, real_reg_cx_2
mov ax, bx
mov real_reg_si_2, ax
jmp continue

another_compareMovsi_of_cx_1_7:
	mov bl, 68h; ascii of h
	cmp bl, [si]
	jz sizemismatch
	jnz another_compareMovsi_of_cx_2_7
	jmp continue

	another_compareMovsi_of_cx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkMovsi_3_7:
; checkMovsi if register is dx or dl or dh
mov si, offset[operand_2 + 2]
mov bl, 64h; ascii of d
cmp bl, [si]
jz dX_checkMovsi_7
jnz another_register_name_checkMovsi_4_7


dx_checkMovsi_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz si_mov_dx
jnz another_compareMovsi_of_dx_1_7

si_mov_dx:
mov ax, real_reg_si_2
mov bx, real_reg_dx_2
mov ax, bx
mov real_reg_si_2, ax
jmp continue

another_compareMovsi_of_dx_1_7:
	mov bl, 68h; ascii of h
	cmp bl, [si]
	jz sizemismatch
	jnz another_compareMovsi_of_dx_2_7

	another_compareMovsi_of_dx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareMovsi_DI_7

; to checkMovsi if register is DI or not
compareMovsi_DI_7:
mov bl, 69h; ascii of i
cmp bl, [si]
jz si_mov_DI
jnz error_Register_name

si_mov_DI:
mov ax, real_reg_si_2
mov bx, real_reg_di_2
mov ax, bx
mov real_reg_si_2, ax
jmp continue

another_register_name_checkMovsi_4_7:
	mov bl, 73h; ascii of s
	cmp bl, [si]
	jz checkMovsi_si_7
	jnz error_Register_name

	checkMovsi_si_7:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz si_mov_si
jnz checkMovsi_sp_7

si_mov_si:
mov ax, real_reg_si_2
mov bx, real_reg_si_2
mov ax, bx
mov real_reg_si_2, ax
jmp continue

checkMovsi_sp_7:
	mov bl, 70h; ascii of p
	cmp bl, [si]
	jz si_mov_sp
	jnz error_Register_name

	si_mov_sp:
mov ax, real_reg_si_2
mov bx, real_reg_sp_2
mov ax, bx
mov real_reg_si_2, ax
jmp continue
;;;;siMovOp2;;;;;;endOfcode

;;;;spMovOp2;;;;;startOfcode
spMovOp2:
mov ah, 9
mov dx, offset newline
int 21h


mov ah, 9
mov dx, offset value_OR_register
int 21h

; receive input from user
mov ah, 0AH
mov dx, offset vORr
int 21h

mov ah, vORr + 2
mov al, 72h; ascii of r
mov bl, 76h; ascii of v
cmp ah, al
jz getRegisterName_sp_mov_op2
cmp ah, bl
jz getValue_sp_mov_op2
getValue_sp_mov_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_value
int 21h
mov ah, 0AH
mov dx, offset value
int 21h
mov al, value + 2
mov bh, 30h
cmp al, bh
jnz  checkMovsp_if_1_B
jz   isdigitMovsp_B

checkMovsp_if_1_B :
mov bh, 31h
cmp al, bh
jnz  checkMovsp_if_2_B
jz   isdigitMovsp_B

checkMovsp_if_2_B :
mov bh, 32h
cmp al, bh
jnz  checkMovsp_if_3_B
jz   isdigitMovsp_B

checkMovsp_if_3_B :
mov bh, 33h
cmp al, bh
jnz  checkMovsp_if_4_B
jz   isdigitMovsp_B

checkMovsp_if_4_B :
mov bh, 34h
cmp al, bh
jnz  checkMovsp_if_5_B
jz   isdigitMovsp_B


checkMovsp_if_5_B :
mov bh, 35h
cmp al, bh
jnz  checkMovsp_if_6_B
jz   isdigitMovsp_B


checkMovsp_if_6_B :
mov bh, 36h
cmp al, bh
jnz  checkMovsp_if_7_B
jz   isdigitMovsp_B


checkMovsp_if_7_B :
mov bh, 37h
cmp al, bh
jnz  checkMovsp_if_8_B
jz   isdigitMovsp_B


checkMovsp_if_8_B :
mov bh, 38h
cmp al, bh
jnz  checkMovsp_if_9_B
jz   isdigitMovsp_B


checkMovsp_if_9_B :
mov bh, 39h
cmp al, bh
jnz  isletterMovsp_B
jz   isdigitMovsp_B




isdigitMovsp_B:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovsp_2nd_char_B

isletterMovsp_B :
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkMovsp_2nd_char_B


checkMovsp_2nd_char_B :
mov al, value + 3
mov bh, 30h
cmp al, bh
jnz  checkMovsp_if_1_B_1
jz   isdigitMovsp_B_1


checkMovsp_if_1_B_1 :
mov bh, 31h
cmp al, bh
jnz  checkMovsp_if_2_B_1
jz   isdigitMovsp_B_1


checkMovsp_if_2_B_1 :
mov bh, 32h
cmp al, bh
jnz  checkMovsp_if_3_B_1
jz   isdigitMovsp_B_1


checkMovsp_if_3_B_1 :
mov bh, 33h
cmp al, bh
jnz  checkMovsp_if_4_B_1
jz   isdigitMovsp_B_1


checkMovsp_if_4_B_1 :
mov bh, 34h
cmp al, bh
jnz  checkMovsp_if_5_B_1
jz   isdigitMovsp_B_1


checkMovsp_if_5_B_1 :
mov bh, 35h
cmp al, bh
jnz  checkMovsp_if_6_B_1
jz   isdigitMovsp_B_1


checkMovsp_if_6_B_1 :
mov bh, 36h
cmp al, bh
jnz  checkMovsp_if_7_B_1
jz   isdigitMovsp_B_1


checkMovsp_if_7_B_1 :
mov bh, 37h
cmp al, bh
jnz checkMovsp_if_8_B_1
jz  isdigitMovsp_B_1


checkMovsp_if_8_B_1 :
mov bh, 38h
cmp al, bh
jnz  checkMovsp_if_9_B_1
jz   isdigitMovsp_B_1


checkMovsp_if_9_B_1 :
mov bh, 39h
cmp al, bh
jnz  isletterMovsp_B_1
jz   isdigitMovsp_B_1



isdigitMovsp_B_1:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  checkMovsp_3rd_char_B


isletterMovsp_B_1 :
sub al, 60h
add al, 9h
add ch, al

jmp  checkMovsp_3rd_char_B
checkMovsp_3rd_char_B :
mov al, value + 4
mov bh, 30h
cmp al, bh
jnz  checkMovsp_if_1_B_2
jz   isdigitMovsp_B_2

checkMovsp_if_1_B_2 :
mov bh, 31h
cmp al, bh
jnz  checkMovsp_if_2_B_2
jz   isdigitMovsp_B_2

checkMovsp_if_2_B_2 :
mov bh, 32h
cmp al, bh
jnz  checkMovsp_if_3_B_2
jz   isdigitMovsp_B_2

checkMovsp_if_3_B_2 :
mov bh, 33h
cmp al, bh
jnz  checkMovsp_if_4_B_2
jz   isdigitMovsp_B_2

checkMovsp_if_4_B_2 :
mov bh, 34h
cmp al, bh
jnz  checkMovsp_if_5_B_2
jz   isdigitMovsp_B_2


checkMovsp_if_5_B_2 :
mov bh, 35h
cmp al, bh
jnz  checkMovsp_if_6_B_2
jz   isdigitMovsp_B_2

checkMovsp_if_6_B_2 :
mov bh, 36h
cmp al, bh
jnz  checkMovsp_if_7_B_2
jz   isdigitMovsp_B_2


checkMovsp_if_7_B_2 :
mov bh, 37h
cmp al, bh
jnz  checkMovsp_if_8_B_2
jz   isdigitMovsp_B_2


checkMovsp_if_8_B_2 :
mov bh, 38h
cmp al, bh
jnz  checkMovsp_if_9_B_2
jz   isdigitMovsp_B_2


checkMovsp_if_9_B_2 :
mov bh, 39h
cmp al, bh
jnz  isletterMovsp_B_2
jz   isdigitMovsp_B_2



isdigitMovsp_B_2:; reg_Ax_1 + 4 is tens
sub al, 30h
mov bl, 10h
mul bl
mov cl, al


jmp  checkMovsp_4th_char_B


isletterMovsp_B_2 :
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov cl, al


checkMovsp_4th_char_B :

mov al, value + 5
mov bh, 30h
cmp al, bh
jnz  checkMovsp_if_1_B_3
jz   isdigitMovsp_B_3


checkMovsp_if_1_B_3 :
mov bh, 31h
cmp al, bh
jnz  checkMovsp_if_2_B_3
jz   isdigitMovsp_B_3


checkMovsp_if_2_B_3 :
mov bh, 32h
cmp al, bh
jnz  checkMovsp_if_3_B_3
jz   isdigitMovsp_B_3


checkMovsp_if_3_B_3 :
mov bh, 33h
cmp al, bh
jnz  checkMovsp_if_4_B_3
jz   isdigitMovsp_B_3


checkMovsp_if_4_B_3 :
mov bh, 34h
cmp al, bh
jnz  checkMovsp_if_5_B_3
jz   isdigitMovsp_B_3


checkMovsp_if_5_B_3 :
mov bh, 35h
cmp al, bh
jnz  checkMovsp_if_6_B_3
jz   isdigitMovsp_B_3


checkMovsp_if_6_B_3 :
mov bh, 36h
cmp al, bh
jnz  checkMovsp_if_7_B_3
jz   isdigitMovsp_B_3

checkMovsp_if_7_B_3 :
mov bh, 37h
cmp al, bh
jnz  checkMovsp_if_8_B_3
jz   isdigitMovsp_B_3


checkMovsp_if_8_B_3 :
mov bh, 38h
cmp al, bh
jnz  checkMovsp_if_9_B_3
jz   isdigitMovsp_B_3

checkMovsp_if_9_B_3 :
mov bh, 39h
cmp al, bh
jnz  isletterMovsp_B_3
jz   isdigitMovsp_B_3
isdigitMovsp_B_3:; reg_Ax_1 + 5 is unit
sub al, 30h
add cl, al
jmp  finish_checkMovsp_digits_and_letters_of_input_B
isletterMovsp_B_3 :
sub al, 60h
add al, 9h
add cl, al
finish_checkMovsp_digits_and_letters_of_input_B :
mov ax, cx
mov real_reg_sp_2,ax
jmp continue

getRegisterName_sp_mov_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_operand_2
int 21h
; receive input from user
mov ah, 0AH
mov dx, offset operand_2
int 21h
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkMovsp_7
jnz another_register_name_checkMovsp_1_7


Ax_checkMovsp_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sp_mov_ax
jnz another_compareMovsp_of_ax_1_7

sp_mov_ax:
mov ax, real_reg_sp_2
mov bx, real_reg_Ax_2
mov ax, bx
mov real_reg_sp_2, ax
jmp continue

another_compareMovsp_of_ax_1_7:
	mov bl, 68h; ascii of h
	cmp bl, [si]
	jz sizemismatch
	jnz another_compareMovsp_of_ax_2_7

	another_compareMovsp_of_ax_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_Register_name





another_register_name_checkMovsp_1_7:
; checkMovsp if register is bx
mov si, offset[operand_2 + 2]
mov bl, 62h; ascii of b
cmp bl, [si]
jz bx_checkMovsp_7
jnz another_register_name_checkMovsp_2_7

bx_checkMovsp_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sp_mov_bx
jnz another_compareMovsp_of_bx_1_7


sp_mov_bx:
mov ax, real_reg_sp_2
mov bx, real_reg_bx_2
mov ax, bx
mov real_reg_sp_2, ax
jmp continue

another_compareMovsp_of_bx_1_7:
	mov bl, 68h; ascii of h
	cmp bl, [si]
	jz sizemismatch
	jnz another_compareMovsp_of_bx_2_7

	another_compareMovsp_of_bx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareMovsp_BP_7




; to checkMovsp if register is BP or not
compareMovsp_BP_7:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sp_mov_BP
jnz error_Register_name

sp_mov_BP:
mov ax, real_reg_sp_2
mov bx, real_reg_bp_2
mov ax, bx
mov real_reg_sp_2, ax
jmp continue

another_register_name_checkMovsp_2_7:
	; checkMovsp if register is cx
	mov si, offset[operand_2 + 2]
	mov bl, 63h; ascii of c
	cmp bl, [si]
	jz cX_checkMovsp_7
	jnz another_register_name_checkMovsp_3_7


	cx_checkMovsp_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sp_mov_cx
jnz error_Register_name

sp_mov_cx:
mov ax, real_reg_sp_2
mov bx, real_reg_cx_2
mov ax, bx
mov real_reg_sp_2, ax
jmp continue

another_compareMovsp_of_cx_1_7:
	mov bl, 68h; ascii of h
	cmp bl, [si]
	jz sizemismatch
	jnz another_compareMovsp_of_cx_2_7
	jmp continue

	another_compareMovsp_of_cx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkMovsp_3_7:
; checkMovsp if register is dx or dl or dh
mov si, offset[operand_2 + 2]
mov bl, 64h; ascii of d
cmp bl, [si]
jz dX_checkMovsp_7
jnz another_register_name_checkMovsp_4_7


dx_checkMovsp_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sp_mov_dx
jnz another_compareMovsp_of_dx_1_7

sp_mov_dx:
mov ax, real_reg_sp_2
mov bx, real_reg_dx_2
mov ax, bx
mov real_reg_sp_2, ax
jmp continue

another_compareMovsp_of_dx_1_7:
	mov bl, 68h; ascii of h
	cmp bl, [si]
	jz sizemismatch
	jnz another_compareMovsp_of_dx_2_7

	another_compareMovsp_of_dx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareMovsp_DI_7

; to checkMovsp if register is DI or not
compareMovsp_DI_7:
mov bl, 69h; ascii of i
cmp bl, [si]
jz sp_mov_DI
jnz error_Register_name

sp_mov_DI:
mov ax, real_reg_sp_2
mov bx, real_reg_di_2
mov ax, bx
mov real_reg_sp_2, ax
jmp continue

another_register_name_checkMovsp_4_7:
	mov bl, 73h; ascii of s
	cmp bl, [si]
	jz checkMovsp_si_7
	jnz error_Register_name

	checkMovsp_si_7:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz sp_mov_si
jnz checkMovsp_sp_7

sp_mov_si:
mov ax, real_reg_sp_2
mov bx, real_reg_si_2
mov ax, bx
mov real_reg_sp_2, ax
jmp continue

checkMovsp_sp_7:
	mov bl, 70h; ascii of p
	cmp bl, [si]
	jz sp_mov_sp
	jnz error_Register_name

	sp_mov_sp:
mov ax, real_reg_sp_2
mov bx, real_reg_sp_2
mov ax, bx
mov real_reg_sp_2, ax
jmp continue
;;;;spMovOp2;;;;;endOfcode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;mov_command;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;endofcode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Add_command;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;startofcode
Add_command:
getregistername_add_op1:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_operand_1
int 21h
; receive input from user
mov ah, 0AH
mov dx, offset operand_1
int 21h


; check if register is ax or al or ah
mov cl, 2h
mov si, offset[operand_1 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkAdd_3
jnz another_register_name_checkAdd_1_3


Ax_checkAdd_3:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz ax_add_?
jnz another_compareAdd_of_ax_1_3


another_compareAdd_of_ax_1_3:
mov bl, 68h; ascii of h
cmp bl, [si]
jz ah_add_?
jnz another_compareAdd_of_ax_2_3


another_compareAdd_of_ax_2_3:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz al_add_?
jnz error_Register_name


another_register_name_checkAdd_1_3:
; check if register is bx or bl or bh
mov cl, 2h
mov si, offset[operand_1 + 2]
mov bl, 62h; ascii of b
cmp bl, [si]
jz bX_checkAdd_3
jnz another_register_name_checkAdd_2_3


bx_checkAdd_3:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz bx_add_what
jnz another_compareAdd_of_bx_1_3


another_compareAdd_of_bx_1_3:
mov bl, 68h; ascii of h
cmp bl, [si]
jz bh_add_?
jnz another_compareAdd_of_bx_2_3



another_compareAdd_of_bx_2_3:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz bl_add_?
jnz compareAdd_BP_3

; to check if register is BP or not
compareAdd_BP_3:
mov bl, 70h; ascii of p
cmp bl, [si]
jz BP_add_?
jnz error_Register_name


another_register_name_checkAdd_2_3:
; checkAdd if register is cx or cl or ch
mov si, offset[operand_1 + 2]
mov bl, 63h; ascii of c
cmp bl, [si]
jz cx_checkAdd_3
jnz another_register_name_checkAdd_3_3


cx_checkAdd_3:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz cx_add_what
jnz another_compareAdd_of_cx_1_3


another_compareAdd_of_cx_1_3:
mov bl, 68h; ascii of h
cmp bl, [si]
jz ch_add_?
jnz another_compareAdd_of_cx_2_3

another_compareAdd_of_cx_2_3:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz cl_add_?
jnz error_Register_name




another_register_name_checkAdd_3_3:
; check if register is dx or dl or dh
mov si, offset[operand_1 + 2]
mov bl, 64h; ascii of d
cmp bl, [si]
jz dX_checkAdd_3
jnz another_register_name_checkAdd_4_3


dx_checkAdd_3:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz dx_add_?
jnz another_compareAdd_of_dx_1_3

another_compareAdd_of_dx_1_3:
mov bl, 68h; ascii of h
cmp bl, [si]
jz dh_add_?
jnz another_compareAdd_of_dx_2_3

another_compareAdd_of_dx_2_3:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz dl_add_?
jnz addcompareAdd_DI_2

; to checkAdd if register is DI or not
addcompareAdd_DI_2:
mov bl, 69h; ascii of i
cmp bl, [si]
jz di_add_?
jnz error_Register_name

another_register_name_checkAdd_4_3:
mov bl, 73h; ascii of s
cmp bl, [si]
jz checkAdd_si_3
jnz error_Register_name

checkAdd_si_3:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz si_add_?
jnz checkAdd_sp_3

checkAdd_sp_3:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sp_add_?
jnz error_Register_name
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

ax_add_?:
    mov ah, 9
    mov dx, offset newline
    int 21h
    mov ah, 9
    mov dx, offset value_OR_register
    int 21h
    ; receive input from user
    mov ah, 0AH
    mov dx, offset vORr
    int 21h
    mov ah, vORr + 2
    mov al, 72h; ascii of r
    mov bl, 76h; ascii of v
    cmp ah, al
    jz getRegisterName_add_op2
    cmp ah, bl
    jz getValue_ax_add_op2



getValue_ax_add_op2:
mov ah, 9
mov dx, offset newline
int 21h

mov ah, 9
mov dx, offset Mess_value
int 21h

mov ah, 0AH
mov dx, offset value
int 21h

mov al, value + 2
mov bh, 30h
cmp al, bh
jnz  checkAdd_if_1_A
jz   isdigitAdd_A

checkAdd_if_1_A:
mov bh, 31h
cmp al, bh
jnz  checkAdd_if_2_A
jz   isdigitAdd_A

checkAdd_if_2_A:
mov bh, 32h
cmp al, bh
jnz  checkAdd_if_3_A
jz   isdigitAdd_A

checkAdd_if_3_A:
mov bh, 33h
cmp al, bh
jnz  checkAdd_if_4_A
jz   isdigitAdd_A

checkAdd_if_4_A:
mov bh, 34h
cmp al, bh
jnz  checkAdd_if_5_A
jz   isdigitAdd_A


checkAdd_if_5_A:
mov bh, 35h
cmp al, bh
jnz  checkAdd_if_6_A
jz   isdigitAdd_A


checkAdd_if_6_A:
mov bh, 36h
cmp al, bh
jnz  checkAdd_if_7_A
jz   isdigitAdd_A


checkAdd_if_7_A:
mov bh, 37h
cmp al, bh
jnz  checkAdd_if_8_A
jz   isdigitAdd_A


checkAdd_if_8_A:
mov bh, 38h
cmp al, bh
jnz  checkAdd_if_9_A
jz   isdigitAdd_A


checkAdd_if_9_A:
mov bh, 39h
cmp al, bh
jnz  isletterAdd_A
jz   isdigitAdd_A




isdigitAdd_A:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkAdd_2nd_char_A

isletterAdd_A:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkAdd_2nd_char_A


checkAdd_2nd_char_A:
mov al, value + 3
mov bh, 30h
cmp al, bh
jnz  checkAdd_if_1_A_1
jz   isdigitAdd_A_1


checkAdd_if_1_A_1:
mov bh, 31h
cmp al, bh
jnz  checkAdd_if_2_A_1
jz   isdigitAdd_A_1


checkAdd_if_2_A_1:
mov bh, 32h
cmp al, bh
jnz  checkAdd_if_3_A_1
jz   isdigitAdd_A_1


checkAdd_if_3_A_1:
mov bh, 33h
cmp al, bh
jnz  checkAdd_if_4_A_1
jz   isdigitAdd_A_1


checkAdd_if_4_A_1:
mov bh, 34h
cmp al, bh
jnz  checkAdd_if_5_A_1
jz   isdigitAdd_A_1


checkAdd_if_5_A_1:
mov bh, 35h
cmp al, bh
jnz  checkAdd_if_6_A_1
jz   isdigitAdd_A_1


checkAdd_if_6_A_1:
mov bh, 36h
cmp al, bh
jnz  checkAdd_if_7_A_1
jz   isdigitAdd_A_1


checkAdd_if_7_A_1:
mov bh, 37h
cmp al, bh
jnz  checkAdd_if_8_A_1
jz   isdigitAdd_A_1


checkAdd_if_8_A_1:
mov bh, 38h
cmp al, bh
jnz  checkAdd_if_9_A_1
jz   isdigitAdd_A_1


checkAdd_if_9_A_1:
mov bh, 39h
cmp al, bh
jnz  isletterAdd_A_1
jz   isdigitAdd_A_1



isdigitAdd_A_1:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  checkAdd_3rd_char_A


isletterAdd_A_1:
sub al, 60h
add al, 9h
add ch, al

jmp  checkAdd_3rd_char_A
checkAdd_3rd_char_A:
mov al, value + 4
mov bh, 30h
cmp al, bh
jnz  checkAdd_if_1_A_2
jz   isdigitAdd_A_2

checkAdd_if_1_A_2:
mov bh, 31h
cmp al, bh
jnz  checkAdd_if_2_A_2
jz   isdigitAdd_A_2

checkAdd_if_2_A_2:
mov bh, 32h
cmp al, bh
jnz  checkAdd_if_3_A_2
jz   isdigitAdd_A_2

checkAdd_if_3_A_2:
mov bh, 33h
cmp al, bh
jnz  checkAdd_if_4_A_2
jz   isdigitAdd_A_2

checkAdd_if_4_A_2:
mov bh, 34h
cmp al, bh
jnz  checkAdd_if_5_A_2
jz   isdigitAdd_A_2


checkAdd_if_5_A_2:
mov bh, 35h
cmp al, bh
jnz  checkAdd_if_6_A_2
jz   isdigitAdd_A_2

checkAdd_if_6_A_2:
mov bh, 36h
cmp al, bh
jnz  checkAdd_if_7_A_2
jz   isdigitAdd_A_2


checkAdd_if_7_A_2:
mov bh, 37h
cmp al, bh
jnz  checkAdd_if_8_A_2
jz   isdigitAdd_A_2


checkAdd_if_8_A_2:
mov bh, 38h
cmp al, bh
jnz  checkAdd_if_9_A_2
jz   isdigitAdd_A_2


checkAdd_if_9_A_2:
mov bh, 39h
cmp al, bh
jnz  isletterAdd_A_2
jz   isdigitAdd_A_2



isdigitAdd_A_2:; reg_Ax_1 + 4 is tens
sub al, 30h
mov bl, 10h
mul bl
mov cl, al


jmp  checkAdd_4th_char_A


isletterAdd_A_2:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov cl, al


checkAdd_4th_char_A:

mov al, value + 5
mov bh, 30h
cmp al, bh
jnz  checkAdd_if_1_A_3
jz   isdigitAdd_A_3


checkAdd_if_1_A_3:
mov bh, 31h
cmp al, bh
jnz  checkAdd_if_2_A_3
jz   isdigitAdd_A_3


checkAdd_if_2_A_3:
mov bh, 32h
cmp al, bh
jnz  checkAdd_if_3_A_3
jz   isdigitAdd_A_3


checkAdd_if_3_A_3:
mov bh, 33h
cmp al, bh
jnz  checkAdd_if_4_A_3
jz   isdigitAdd_A_3


checkAdd_if_4_A_3:
mov bh, 34h
cmp al, bh
jnz  checkAdd_if_5_A_3
jz   isdigitAdd_A_3


checkAdd_if_5_A_3:
mov bh, 35h
cmp al, bh
jnz  checkAdd_if_6_A_3
jz   isdigitAdd_A_3


checkAdd_if_6_A_3:
mov bh, 36h
cmp al, bh
jnz  checkAdd_if_7_A_3
jz   isdigitAdd_A_3

checkAdd_if_7_A_3:
mov bh, 37h
cmp al, bh
jnz  checkAdd_if_8_A_3
jz   isdigitAdd_A_3


checkAdd_if_8_A_3:
mov bh, 38h
cmp al, bh
jnz  checkAdd_if_9_A_3
jz   isdigitAdd_A_3

checkAdd_if_9_A_3:
mov bh, 39h
cmp al, bh
jnz  isletterAdd_A_3
jz   isdigitAdd_A_3



isdigitAdd_A_3:; reg_Ax_1 + 5 is unit
sub al, 30h
add cl, al


jmp  finish_checkAdd_digits_and_letters_of_input_A

isletterAdd_A_3:
sub al, 60h
add al, 9h
add cl, al


finish_checkAdd_digits_and_letters_of_input_A:

mov ax, cx
mov bx, real_reg_Ax_2
add bx, ax
mov real_reg_Ax_2, bx
jmp continue


getRegisterName_add_op2:

mov ah, 9
mov dx, offset newline
int 21h



mov ah, 9
mov dx, offset Mess_operand_2
int 21h

; receive input from user
mov ah, 0AH
mov dx, offset operand_2
int 21h



; checkAdd if register is ax or al or ah
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkAdd_4
jnz another_register_name_checkAdd_1_4


Ax_checkAdd_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz ax_add_ax
jnz error_Register_name

ax_add_ax:
mov ax, real_reg_Ax_2
mov bx, real_reg_Ax_2
add ax, bx
mov real_reg_Ax_2, ax
jc setCarryFlag
jmp continue




another_register_name_checkAdd_1_4:
; checkAdd if register is bx
mov si, offset[operand_2 + 2]
mov bl, 62h; ascii of b
cmp bl, [si]
jz bx_checkAdd_4
jnz another_register_name_checkAdd_2_4

bx_checkAdd_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz ax_add_bx
jnz another_compareAdd_of_bx_1_4


ax_add_bx:
mov ax, real_reg_ax_2
mov bx, real_reg_bx_2
add ax, bx
mov real_reg_ax_2, ax
jmp setCarryFlag
jmp continue

another_compareAdd_of_bx_1_4:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareAdd_of_bx_2_4

    another_compareAdd_of_bx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareAdd_BP_4




; to check if register is BP or not
compareAdd_BP_4:
mov bl, 70h; ascii of p
cmp bl, [si]
jz ax_add_BP
jnz error_Register_name

ax_add_BP:
mov ax, real_reg_ax_2
mov bx, real_reg_BP_2
add ax, bx
mov real_reg_ax_2, ax
jmp setCarryFlag
jmp continue

another_register_name_checkAdd_2_4:
    ; check if register is cx
    mov si, offset[operand_2 + 2]
    mov bl, 63h; ascii of c
    cmp bl, [si]
    jz cX_checkAdd_4
    jnz another_register_name_checkAdd_3_4


    cx_checkAdd_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz ax_add_cx
jnz error_Register_name

ax_add_cx:
mov ax, real_reg_ax_2
mov bx, real_reg_cx_2
add ax, bx
mov real_reg_ax_2, ax
jc setCarryFlag
jmp continue

another_compareAdd_of_cx_1_4:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareAdd_of_cx_2_4

    jmp continue

    another_compareAdd_of_cx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkAdd_3_4:
; check if register is dx or dl or dh
mov si, offset[operand_2 + 2]
mov bl, 64h; ascii of d
cmp bl, [si]
jz dX_checkAdd_4
jnz another_register_name_checkAdd_4_4


dx_checkAdd_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz ax_add_dx
jnz another_compareAdd_of_dx_1_4

ax_add_dx:
mov ax, real_reg_ax_2
mov bx, real_reg_dx_2
add ax, bx
mov real_reg_ax_2, ax
jc setCarryFlag
jmp continue

another_compareAdd_of_dx_1_4:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareAdd_of_dx_2_4

    another_compareAdd_of_dx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareAdd_DI_4

; to checkAdd if register is DI or not
compareAdd_DI_4:
mov bl, 69h; ascii of i
cmp bl, [si]
jz ax_add_DI
jnz error_Register_name

ax_add_DI:
mov ax, real_reg_ax_2
mov bx, real_reg_di_2
add ax, bx
mov real_reg_ax_2, ax
jc setCarryFlag
jmp continue

another_register_name_checkAdd_4_4:
    mov bl, 73h; ascii of s
    cmp bl, [si]
    jz checkAdd_si_4
    jnz error_Register_name

    checkAdd_si_4:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz ax_add_si
jnz checkAdd_sp_4

ax_add_si:
mov ax, real_reg_ax_2
mov bx, real_reg_si_2
add ax, bx
mov real_reg_ax_2, ax
jc setCarryFlag
jmp continue

checkAdd_sp_4:
    mov bl, 70h; ascii of p
    cmp bl, [si]
    jz ax_add_sp
    jnz error_Register_name

    ax_add_sp:
mov ax, real_reg_ax_2
mov bx, real_reg_sp_2
add ax, bx
mov real_reg_ax_2, ax
jc setCarryFlag
jmp continue

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ah_add_? ;;;;;;;;;;;;;;;;;;;;
ah_add_?:

    mov ah, 9
    mov dx, offset newline
    int 21h


    mov ah, 9
    mov dx, offset value_OR_register
    int 21h

    ; receive input from user
    mov ah, 0AH
    mov dx, offset vORr
    int 21h

    mov ah, vORr + 2
    mov al, 72h; ascii of r
    mov bl, 76h; ascii of v
    cmp ah, al
    jz getRegisterName_ah_add_op2
    cmp ah, bl
    jz getValue_ah_add_op2




getValue_ah_add_op2:
mov ah, 9
mov dx, offset newline
int 21h

mov ah, 9
mov dx, offset Mess_value
int 21h

mov ah, 0AH
mov dx, offset value2
int 21h

; checkAdd_digits_or_letters value

mov al, value2 + 2
mov bh, 30h
cmp al, bh
jnz  checkAdd_if_1A
jz   isdigitAddA

checkAdd_if_1A:
mov bh, 31h
cmp al, bh
jnz  checkAdd_if_2A
jz   isdigitAddA

checkAdd_if_2A:
mov bh, 32h
cmp al, bh
jnz  checkAdd_if_3A
jz   isdigitAddA

checkAdd_if_3A:
mov bh, 33h
cmp al, bh
jnz  checkAdd_if_4A
jz   isdigitAddA

checkAdd_if_4A:
mov bh, 34h
cmp al, bh
jnz  checkAdd_if_5A
jz   isdigitAddA


checkAdd_if_5A:
mov bh, 35h
cmp al, bh
jnz  checkAdd_if_6A
jz   isdigitAddA


checkAdd_if_6A:
mov bh, 36h
cmp al, bh
jnz  checkAdd_if_7A
jz   isdigitAddA


checkAdd_if_7A:
mov bh, 37h
cmp al, bh
jnz  checkAdd_if_8A
jz   isdigitAddA


checkAdd_if_8A:
mov bh, 38h
cmp al, bh
jnz  checkAdd_if_9A
jz   isdigitAddA


checkAdd_if_9A:
mov bh, 39h
cmp al, bh
jnz  isletterAddA
jz   isdigitAddA




isdigitAddA:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkAdd_2nd_charA

isletterAddA:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkAdd_2nd_charA


checkAdd_2nd_charA:
mov al, value2 + 3
mov bh, 30h
cmp al, bh
jnz  checkAdd_if_1A1_
jz   isdigitAddA1_


checkAdd_if_1A1_:
mov bh, 31h
cmp al, bh
jnz  checkAdd_if_2A1_
jz   isdigitAddA1_


checkAdd_if_2A1_:
mov bh, 32h
cmp al, bh
jnz  checkAdd_if_3A1_
jz   isdigitAddA1_


checkAdd_if_3A1_:
mov bh, 33h
cmp al, bh
jnz  checkAdd_if_4A1_
jz   isdigitAddA1_


checkAdd_if_4A1_:
mov bh, 34h
cmp al, bh
jnz  checkAdd_if_5A1_
jz   isdigitAddA1_


checkAdd_if_5A1_:
mov bh, 35h
cmp al, bh
jnz  checkAdd_if_6A1_
jz   isdigitAddA1_


checkAdd_if_6A1_:
mov bh, 36h
cmp al, bh
jnz  checkAdd_if_7A1_
jz   isdigitAddA1_


checkAdd_if_7A1_:
mov bh, 37h
cmp al, bh
jnz  checkAdd_if_8A1_
jz   isdigitAddA1_


checkAdd_if_8A1_:
mov bh, 38h
cmp al, bh
jnz  checkAdd_if_9A1_
jz   isdigitAddA1_


checkAdd_if_9A1_:
mov bh, 39h
cmp al, bh
jnz  isletterAddA1_
jz   isdigitAddA1_



isdigitAddA1_:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  finish_checkAdd_digits_and_letters_of_inputA


isletterAddA1_:
sub al, 60h
add al, 9h
add ch, al

jmp  finish_checkAdd_digits_and_letters_of_inputA


finish_checkAdd_digits_and_letters_of_inputA:

mov ax, cx

mov bh, ah
mov bl, byte ptr real_reg_Ax_2 + 1
add bl, bh
mov byte ptr real_reg_Ax_2 + 1, bl
jc setCarryFlag
jmp continue





getRegisterName_ah_add_op2:

mov ah, 9
mov dx, offset newline
int 21h



mov ah, 9
mov dx, offset Mess_operand_2
int 21h

; receive input from user
mov ah, 0AH
mov dx, offset operand_2
int 21h



; check if register is ax or al or ah
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkAdd_5
jnz another_register_name_checkAdd_1_5


Ax_checkAdd_5:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareAdd_ax_1_5

another_compareAdd_ax_1_5:
mov bl, 68h; ascii of h
cmp bl, [si]
jz ah_add_ah
jnz another_compareAdd_of_ax_2_5


ah_add_ah:
mov ah, byte ptr real_reg_Ax_2 + 1
mov bh, byte ptr real_reg_Ax_2 + 1
add ah, bh
mov byte ptr real_reg_Ax_2 + 1, ah
jc setCarryFlag
jmp continue

another_compareAdd_of_ax_2_5:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz ah_add_al
    jnz error_Register_name

    ah_add_al:
mov ah, byte ptr real_reg_Ax_2 + 1
mov bh, byte ptr real_reg_Ax_2
add ah, bh
mov byte ptr real_reg_Ax_2 + 1, ah
jc setCarryFlag
jmp continue


another_register_name_checkAdd_1_5:
    ; checkAdd if register is bx
    mov si, offset[operand_2 + 2]
    mov bl, 62h; ascii of b
    cmp bl, [si]
    jz bx_checkAdd_5
    jnz another_register_name_checkAdd_2_5

    bx_checkAdd_5:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareAdd_of_bx_1_5


another_compareAdd_of_bx_1_5:
mov bl, 68h; ascii of h
cmp bl, [si]
jz ah_add_bh
jnz another_compareAdd_of_bx_2_5

ah_add_bh:
mov ah, byte ptr real_reg_Ax_2 + 1
mov bh, byte ptr real_reg_bx_2 + 1
add ah, bh
mov byte ptr real_reg_Ax_2 + 1, ah
jc setCarryFlag
jmp continue


another_compareAdd_of_bx_2_5:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz ah_add_bl
    jnz compareAdd_BP_5


    ah_add_bl:
mov ah, byte ptr real_reg_Ax_2 + 1
mov bh, byte ptr real_reg_bx_2
add ah, bh
mov byte ptr real_reg_Ax_2 + 1, ah
jc setCarryFlag
jmp continue

; to checkAdd if register is BP or not
compareAdd_BP_5:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkAdd_2_5:
; checkAdd if register is cx
mov si, offset[operand_2 + 2]
mov bl, 63h; ascii of c
cmp bl, [si]
jz cX_checkAdd_5
jnz another_register_name_checkAdd_3_5


cx_checkAdd_5:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareAdd_of_cx_1_5


another_compareAdd_of_cx_1_5:
mov bl, 68h; ascii of h
cmp bl, [si]
jz ah_add_ch
jnz another_compareAdd_of_cx_2_5

ah_add_ch:
mov ah, byte ptr real_reg_Ax_2 + 1
mov bh, byte ptr real_reg_cx_2 + 1
add ah, bh
mov byte ptr real_reg_Ax_2 + 1, ah
jc setCarryFlag
jmp continue


another_compareAdd_of_cx_2_5:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz ah_add_cl
    jnz error_Register_name

    ah_add_cl:
mov ah, byte ptr real_reg_Ax_2 + 1
mov bh, byte ptr real_reg_cx_2
add ah, bh
mov byte ptr real_reg_Ax_2 + 1, ah
jc setCarryFlag
jmp continue


another_register_name_checkAdd_3_5:
    ; checkAdd if register is dx or dl or dh
    mov si, offset[operand_2 + 2]
    mov bl, 64h; ascii of d
    cmp bl, [si]
    jz dX_checkAdd_5
    jnz another_register_name_checkAdd_4_5


    dx_checkAdd_5:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareAdd_of_dx_1_5


another_compareAdd_of_dx_1_5:
mov bl, 68h; ascii of h
cmp bl, [si]
jz ah_add_dh
jnz another_compareAdd_of_dx_2_5

ah_add_dh:
mov ah, byte ptr real_reg_Ax_2 + 1
mov bh, byte ptr real_reg_dx_2 + 1
add ah, bh
mov byte ptr real_reg_Ax_2 + 1, ah
jc setCarryFlag
jmp continue

another_compareAdd_of_dx_2_5:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz ah_add_dl
    jnz compareAdd_DI_5

    ah_add_dl:
mov ah, byte ptr real_reg_Ax_2 + 1
mov bh, byte ptr real_reg_dx_2
add ah, bh
mov byte ptr real_reg_Ax_2 + 1, ah
jc setCarryFlag
jmp continue

; to check if register is DI or not
compareAdd_DI_5:
mov bl, 69h; ascii of i
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkAdd_4_5:
mov bl, 73h; ascii of s
cmp bl, [si]
jz checkAdd_si_5
jnz error_register_name

checkAdd_si_5:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz sizemismatch
jnz checkAdd_sp_5

checkAdd_sp_5:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_Register_name

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ah_add_? ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; endofcode


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; al_add_? ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; startofcode
al_add_?:
    mov ah, 9
    mov dx, offset newline
    int 21h


    mov ah, 9
    mov dx, offset value_OR_register
    int 21h

    ; receive input from user
    mov ah, 0AH
    mov dx, offset vORr
    int 21h

    mov ah, vORr + 2
    mov al, 72h; ascii of r
    mov bl, 76h; ascii of v
    cmp ah, al
    jz getRegisterName_al_add_op2
    cmp ah, bl
    jz getValue_al_add_op2




getValue_al_add_op2:
mov ah, 9
mov dx, offset newline
int 21h

mov ah, 9
mov dx, offset Mess_value
int 21h

mov ah, 0AH
mov dx, offset value2
int 21h

mov al, value2 + 2
mov bh, 30h
cmp al, bh
jnz  checkAdd_if_1B
jz   isdigitAddB

checkAdd_if_1B:
mov bh, 31h
cmp al, bh
jnz  checkAdd_if_2B
jz   isdigitAddB

checkAdd_if_2B:
mov bh, 32h
cmp al, bh
jnz  checkAdd_if_3B
jz   isdigitAddB

checkAdd_if_3B:
mov bh, 33h
cmp al, bh
jnz  checkAdd_if_4B
jz   isdigitAddB

checkAdd_if_4B:
mov bh, 34h
cmp al, bh
jnz  checkAdd_if_5B
jz   isdigitAddB


checkAdd_if_5B:
mov bh, 35h
cmp al, bh
jnz  checkAdd_if_6B
jz   isdigitAddB


checkAdd_if_6B:
mov bh, 36h
cmp al, bh
jnz  checkAdd_if_7B
jz   isdigitAddB


checkAdd_if_7B:
mov bh, 37h
cmp al, bh
jnz  checkAdd_if_8B
jz   isdigitAddB


checkAdd_if_8B:
mov bh, 38h
cmp al, bh
jnz  checkAdd_if_9B
jz   isdigitAddB


checkAdd_if_9B:
mov bh, 39h
cmp al, bh
jnz  isletterAddB
jz   isdigitAddB




isdigitAddB:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkAdd_2nd_charA

isletterAddB:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkAdd_2nd_charA


checkAdd_2nd_charB:
mov al, value2 + 3
mov bh, 30h
cmp al, bh
jnz  checkAdd_if_1B1_
jz   isdigitAddB1_


checkAdd_if_1B1_:
mov bh, 31h
cmp al, bh
jnz  checkAdd_if_2B1_
jz   isdigitAddB1_


checkAdd_if_2B1_:
mov bh, 32h
cmp al, bh
jnz  checkAdd_if_3B1_
jz   isdigitAddB1_


checkAdd_if_3B1_:
mov bh, 33h
cmp al, bh
jnz  checkAdd_if_4B1_
jz   isdigitAddB1_


checkAdd_if_4B1_:
mov bh, 34h
cmp al, bh
jnz  checkAdd_if_5B1_
jz   isdigitAddB1_


checkAdd_if_5B1_:
mov bh, 35h
cmp al, bh
jnz  checkAdd_if_6B1_
jz   isdigitAddB1_


checkAdd_if_6B1_:
mov bh, 36h
cmp al, bh
jnz  checkAdd_if_7B1_
jz   isdigitAddB1_


checkAdd_if_7B1_:
mov bh, 37h
cmp al, bh
jnz  checkAdd_if_8B1_
jz   isdigitAddB1_


checkAdd_if_8B1_:
mov bh, 38h
cmp al, bh
jnz  checkAdd_if_9B1_
jz   isdigitAddB1_


checkAdd_if_9B1_:
mov bh, 39h
cmp al, bh
jnz  isletterAddB1_
jz   isdigitAddB1_



isdigitAddB1_:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  finish_checkAdd_digits_and_letters_of_inputB


isletterAddB1_:
sub al, 60h
add al, 9h
add ch, al

jmp  finish_checkAdd_digits_and_letters_of_inputB


finish_checkAdd_digits_and_letters_of_inputB:

mov ax, cx

mov bl, ah
mov bh, byte ptr real_reg_Ax_2
add bh, bl
mov byte ptr real_reg_Ax_2, bh
jc setCarryFlag
jmp continue

getRegisterName_al_add_op2:
mov ah, 9
mov dx, offset newline
int 21h



mov ah, 9
mov dx, offset Mess_operand_2
int 21h

; receive input from user
mov ah, 0AH
mov dx, offset operand_2
int 21h



; checkAdd if register is ax or al or ah
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkAdd_6
jnz another_register_name_checkAdd_1_6


Ax_checkAdd_6:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareAdd_ax_1_6

another_compareAdd_ax_1_6:
mov bl, 68h; ascii of h
cmp bl, [si]
jz al_add_ah
jnz another_compareAdd_of_ax_2_6


al_add_ah:
mov ah, byte ptr real_reg_Ax_2
mov bh, byte ptr real_reg_Ax_2 + 1
add ah, bh
mov byte ptr real_reg_Ax_2, ah
jc setCarryFlag
jmp continue

another_compareAdd_of_ax_2_6:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz al_add_al
    jnz error_Register_name

    al_add_al:
mov ah, byte ptr real_reg_Ax_2
mov bh, byte ptr real_reg_Ax_2
add ah, bh
mov byte ptr real_reg_Ax_2, ah
jc setCarryFlag
jmp continue


another_register_name_checkAdd_1_6:
    ; checkAdd if register is bx
    mov si, offset[operand_2 + 2]
    mov bl, 62h; ascii of b
    cmp bl, [si]
    jz bx_checkAdd_6
    jnz another_register_name_checkAdd_2_6

    bx_checkAdd_6:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareAdd_of_bx_1_6


another_compareAdd_of_bx_1_6:
mov bl, 68h; ascii of h
cmp bl, [si]
jz al_add_bh
jnz another_compareAdd_of_bx_2_6

al_add_bh:
mov ah, byte ptr real_reg_Ax_2
mov bh, byte ptr real_reg_bx_2 + 1
add ah, bh
mov byte ptr real_reg_Ax_2, ah
jc setCarryFlag
jmp continue


another_compareAdd_of_bx_2_6:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz al_add_bl
    jnz compareAdd_BP_6


    al_add_bl:
mov ah, byte ptr real_reg_Ax_2
mov bh, byte ptr real_reg_bx_2
add ah, bh
mov byte ptr real_reg_Ax_2, ah
jc setCarryFlag
jmp continue

; to checkAdd if register is BP or not
compareAdd_BP_6:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkAdd_2_6:
; checkAdd if register is cx
mov si, offset[operand_2 + 2]
mov bl, 63h; ascii of c
cmp bl, [si]
jz cX_checkAdd_6
jnz another_register_name_checkAdd_3_6


cx_checkAdd_6:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareAdd_of_cx_1_6


another_compareAdd_of_cx_1_6:
mov bl, 68h; ascii of h
cmp bl, [si]
jz al_add_ch
jnz another_compareAdd_of_cx_2_6

al_add_ch:
mov ah, byte ptr real_reg_Ax_2
mov bh, byte ptr real_reg_cx_2 + 1
add ah, bh
mov byte ptr real_reg_Ax_2, ah
jc setCarryFlag
jmp continue


another_compareAdd_of_cx_2_6:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz al_add_cl
    jnz error_Register_name

    al_add_cl:
mov ah, byte ptr real_reg_Ax_2
mov bh, byte ptr real_reg_cx_2
add ah, bh
mov byte ptr real_reg_Ax_2, ah
jc setCarryFlag
jmp continue


another_register_name_checkAdd_3_6:
    ; checkAdd if register is dx or dl or dh
    mov si, offset[operand_2 + 2]
    mov bl, 64h; ascii of d
    cmp bl, [si]
    jz dX_checkAdd_6
    jnz another_register_name_checkAdd_4_6


    dx_checkAdd_6:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareAdd_of_dx_1_6


another_compareAdd_of_dx_1_6:
mov bl, 68h; ascii of h
cmp bl, [si]
jz al_add_dh
jnz another_compareAdd_of_dx_2_6

al_add_dh:
mov ah, byte ptr real_reg_Ax_2
mov bh, byte ptr real_reg_dx_2 + 1
add ah, bh
mov byte ptr real_reg_Ax_2, ah
jc setCarryFlag
jmp continue

another_compareAdd_of_dx_2_6:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz al_add_dl
    jnz compareAdd_DI_6

    al_add_dl:
mov ah, byte ptr real_reg_Ax_2
mov bh, byte ptr real_reg_dx_2
add ah, bh
mov byte ptr real_reg_Ax_2, ah
jc setCarryFlag
jmp continue

; to checkAdd if register is DI or not
compareAdd_DI_6:
mov bl, 69h; ascii of i
cmp bl, [si]
jz sizemismatch
jnz error_Register_name


another_register_name_checkAdd_4_6:
mov bl, 73h; ascii of s
cmp bl, [si]
jz checkAdd_si_6
jnz error_Register_name

checkAdd_si_6:
mov bl, 69h; ascii of  i
cmp bl, [si]
jz sizemismatch
jnz checkAdd_sp_6

checkAdd_sp_6:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_Register_name



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; al_add_? ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; endofcode


;;;;;;;;;;;;;;;;;;;;;;;;; bx_add_what;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; startofcode
bx_add_what:
mov ah, 9
mov dx, offset newline
int 21h


mov ah, 9
mov dx, offset value_OR_register
int 21h

; receive input from user
mov ah, 0AH
mov dx, offset vORr
int 21h
mov ah, vORr + 2
mov al, 72h; ascii of r
mov bl, 76h; ascii of v
cmp ah, al
jz getRegisterName_bx_add_op2
cmp ah, bl
jz getValue_bx_add_op2



getValue_bx_add_op2:
mov ah, 9
mov dx, offset newline
int 21h

mov ah, 9
mov dx, offset Mess_value
int 21h

mov ah, 0AH
mov dx, offset value
int 21h

mov al, value + 2
mov bh, 30h
cmp al, bh
jnz  checkAdd_if_1_B
jz   isdigitAdd_B

checkAdd_if_1_B:
mov bh, 31h
cmp al, bh
jnz  checkAdd_if_2_B
jz   isdigitAdd_B

checkAdd_if_2_B:
mov bh, 32h
cmp al, bh
jnz  checkAdd_if_3_B
jz   isdigitAdd_B

checkAdd_if_3_B:
mov bh, 33h
cmp al, bh
jnz  checkAdd_if_4_B
jz   isdigitAdd_B

checkAdd_if_4_B:
mov bh, 34h
cmp al, bh
jnz  checkAdd_if_5_B
jz   isdigitAdd_B


checkAdd_if_5_B:
mov bh, 35h
cmp al, bh
jnz  checkAdd_if_6_B
jz   isdigitAdd_B


checkAdd_if_6_B:
mov bh, 36h
cmp al, bh
jnz  checkAdd_if_7_B
jz   isdigitAdd_B


checkAdd_if_7_B:
mov bh, 37h
cmp al, bh
jnz  checkAdd_if_8_B
jz   isdigitAdd_B


checkAdd_if_8_B:
mov bh, 38h
cmp al, bh
jnz  checkAdd_if_9_B
jz   isdigitAdd_B


checkAdd_if_9_B:
mov bh, 39h
cmp al, bh
jnz  isletterAdd_B
jz   isdigitAdd_B




isdigitAdd_B:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkAdd_2nd_char_B

isletterAdd_B:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkAdd_2nd_char_B


checkAdd_2nd_char_B:
mov al, value + 3
mov bh, 30h
cmp al, bh
jnz  checkAdd_if_1_B_1
jz   isdigitAdd_B_1


checkAdd_if_1_B_1:
mov bh, 31h
cmp al, bh
jnz  checkAdd_if_2_B_1
jz   isdigitAdd_B_1


checkAdd_if_2_B_1:
mov bh, 32h
cmp al, bh
jnz  checkAdd_if_3_B_1
jz   isdigitAdd_B_1


checkAdd_if_3_B_1:
mov bh, 33h
cmp al, bh
jnz  checkAdd_if_4_B_1
jz   isdigitAdd_B_1


checkAdd_if_4_B_1:
mov bh, 34h
cmp al, bh
jnz  checkAdd_if_5_B_1
jz   isdigitAdd_B_1


checkAdd_if_5_B_1:
mov bh, 35h
cmp al, bh
jnz  checkAdd_if_6_B_1
jz   isdigitAdd_B_1


checkAdd_if_6_B_1:
mov bh, 36h
cmp al, bh
jnz  checkAdd_if_7_B_1
jz   isdigitAdd_B_1


checkAdd_if_7_B_1:
mov bh, 37h
cmp al, bh
jnz  checkAdd_if_8_B_1
jz   isdigitAdd_B_1


checkAdd_if_8_B_1:
mov bh, 38h
cmp al, bh
jnz  checkAdd_if_9_B_1
jz   isdigitAdd_B_1


checkAdd_if_9_B_1:
mov bh, 39h
cmp al, bh
jnz  isletterAdd_B_1
jz   isdigitAdd_B_1



isdigitAdd_B_1:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  checkAdd_3rd_char_B


isletterAdd_B_1:
sub al, 60h
add al, 9h
add ch, al

jmp  checkAdd_3rd_char_B
checkAdd_3rd_char_B:
mov al, value + 4
mov bh, 30h
cmp al, bh
jnz  checkAdd_if_1_B_2
jz   isdigitAdd_B_2

checkAdd_if_1_B_2:
mov bh, 31h
cmp al, bh
jnz  checkAdd_if_2_B_2
jz   isdigitAdd_B_2

checkAdd_if_2_B_2:
mov bh, 32h
cmp al, bh
jnz  checkAdd_if_3_B_2
jz   isdigitAdd_B_2

checkAdd_if_3_B_2:
mov bh, 33h
cmp al, bh
jnz  checkAdd_if_4_B_2
jz   isdigitAdd_B_2

checkAdd_if_4_B_2:
mov bh, 34h
cmp al, bh
jnz  checkAdd_if_5_B_2
jz   isdigitAdd_B_2


checkAdd_if_5_B_2:
mov bh, 35h
cmp al, bh
jnz  checkAdd_if_6_B_2
jz   isdigitAdd_B_2

checkAdd_if_6_B_2:
mov bh, 36h
cmp al, bh
jnz  checkAdd_if_7_B_2
jz   isdigitAdd_B_2


checkAdd_if_7_B_2:
mov bh, 37h
cmp al, bh
jnz  checkAdd_if_8_B_2
jz   isdigitAdd_B_2


checkAdd_if_8_B_2:
mov bh, 38h
cmp al, bh
jnz  checkAdd_if_9_B_2
jz   isdigitAdd_B_2


checkAdd_if_9_B_2:
mov bh, 39h
cmp al, bh
jnz  isletterAdd_B_2
jz   isdigitAdd_B_2



isdigitAdd_B_2:; reg_Ax_1 + 4 is tens
sub al, 30h
mov bl, 10h
mul bl
mov cl, al


jmp  checkAdd_4th_char_B


isletterAdd_B_2:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov cl, al


checkAdd_4th_char_B:

mov al, value + 5
mov bh, 30h
cmp al, bh
jnz  checkAdd_if_1_B_3
jz   isdigitAdd_B_3


checkAdd_if_1_B_3:
mov bh, 31h
cmp al, bh
jnz  checkAdd_if_2_B_3
jz   isdigitAdd_B_3


checkAdd_if_2_B_3:
mov bh, 32h
cmp al, bh
jnz  checkAdd_if_3_B_3
jz   isdigitAdd_B_3


checkAdd_if_3_B_3:
mov bh, 33h
cmp al, bh
jnz  checkAdd_if_4_B_3
jz   isdigitAdd_B_3


checkAdd_if_4_B_3:
mov bh, 34h
cmp al, bh
jnz  checkAdd_if_5_B_3
jz   isdigitAdd_B_3


checkAdd_if_5_B_3:
mov bh, 35h
cmp al, bh
jnz  checkAdd_if_6_B_3
jz   isdigitAdd_B_3


checkAdd_if_6_B_3:
mov bh, 36h
cmp al, bh
jnz  checkAdd_if_7_B_3
jz   isdigitAdd_B_3

checkAdd_if_7_B_3:
mov bh, 37h
cmp al, bh
jnz  checkAdd_if_8_B_3
jz   isdigitAdd_B_3


checkAdd_if_8_B_3:
mov bh, 38h
cmp al, bh
jnz  checkAdd_if_9_B_3
jz   isdigitAdd_B_3

checkAdd_if_9_B_3:
mov bh, 39h
cmp al, bh
jnz  isletterAdd_B_3
jz   isdigitAdd_B_3



isdigitAdd_B_3:; reg_Ax_1 + 5 is unit
sub al, 30h
add cl, al


jmp  finish_checkAdd_digits_and_letters_of_input_B

isletterAdd_B_3:
sub al, 60h
add al, 9h
add cl, al


finish_checkAdd_digits_and_letters_of_input_B:

mov ax, cx


mov bx, real_reg_bx_2
add bx, ax
mov real_reg_bx_2, bx
jc setCarryFlag
jmp continue


getRegisterName_bx_add_op2:

mov ah, 9
mov dx, offset newline
int 21h



mov ah, 9
mov dx, offset Mess_operand_2
int 21h

; receive input from user
mov ah, 0AH
mov dx, offset operand_2
int 21h



; checkAdd if register is ax or al or ah
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkAdd_7
jnz another_register_name_checkAdd_1_7


Ax_checkAdd_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz bx_add_ax
jnz another_compareAdd_of_ax_1_7


bx_add_ax:
mov ax, real_reg_bx_2
mov bx, real_reg_Ax_2
add ax, bx
mov real_reg_bx_2, ax
jc setCarryFlag
jmp continue

another_compareAdd_of_ax_1_7:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareAdd_of_ax_2_7

    another_compareAdd_of_ax_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_register_name



another_register_name_checkAdd_1_7:
; checkAdd if register is bx
mov si, offset[operand_2 + 2]
mov bl, 62h; ascii of b
cmp bl, [si]
jz bx_checkAdd_7
jnz another_register_name_checkAdd_2_7

bx_checkAdd_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz bx_add_bx
jnz another_compareAdd_of_bx_1_7


bx_add_bx:
mov ax, real_reg_bx_2
mov bx, real_reg_bx_2
add ax, bx
mov real_reg_bx_2, ax
jc setCarryFlag
jmp continue

another_compareAdd_of_bx_1_7:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareAdd_of_bx_2_7

    another_compareAdd_of_bx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareAdd_BP_7




; to checkAdd if register is BP or not
compareAdd_BP_7:
mov bl, 70h; ascii of p
cmp bl, [si]
jz bx_add_BP
jnz error_register_name

bx_add_BP:
mov ax, real_reg_bx_2
mov bx, real_reg_BP_2
add ax, bx
mov real_reg_bx_2, ax
jc setCarryFlag
jmp continue

another_register_name_checkAdd_2_7:
    ; checkAdd if register is cx
    mov si, offset[operand_2 + 2]
    mov bl, 63h; ascii of c
    cmp bl, [si]
    jz cX_checkAdd_7
    jnz another_register_name_checkAdd_3_7


    cx_checkAdd_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz bx_add_cx
jnz error_register_name

bx_add_cx:
mov ax, real_reg_bx_2
mov bx, real_reg_cx_2
add ax, bx
mov real_reg_bx_2, ax
jc setCarryFlag
jmp continue

another_compareAdd_of_cx_1_7:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareAdd_of_cx_2_7

    jmp continue

    another_compareAdd_of_cx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkAdd_3_7:
; checkAdd if register is dx or dl or dh
mov si, offset[operand_2 + 2]
mov bl, 64h; ascii of d
cmp bl, [si]
jz dX_checkAdd_7
jnz another_register_name_checkAdd_4_7


dx_checkAdd_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz bx_add_dx
jnz another_compareAdd_of_dx_1_7

bx_add_dx:
mov ax, real_reg_bx_2
mov bx, real_reg_dx_2
add ax, bx
mov real_reg_bx_2, ax
jc setCarryFlag
jmp continue

another_compareAdd_of_dx_1_7:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareAdd_of_dx_2_7

    another_compareAdd_of_dx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareAdd_DI_7

; to checkAdd if register is DI or not
compareAdd_DI_7:
mov bl, 69h; ascii of i
cmp bl, [si]
jz bx_add_DI
jnz error_register_name

bx_add_DI:
mov ax, real_reg_bx_2
mov bx, real_reg_di_2
add ax, bx
mov real_reg_bx_2, ax
jc setCarryFlag
jmp continue

another_register_name_checkAdd_4_7:
    mov bl, 73h; ascii of s
    cmp bl, [si]
    jz checkAdd_si_7
    jnz error_register_name

    checkAdd_si_7:
mov bl, 69h; ascii of  i
cmp bl, [si]
jz bx_add_si
jnz checkAdd_sp_7

bx_add_si:
mov ax, real_reg_bx_2
mov bx, real_reg_si_2
add ax, bx
mov real_reg_bx_2, ax
jc setCarryFlag
jmp continue

checkAdd_sp_7:
    mov bl, 70h; ascii of p
    cmp bl, [si]
    jz bx_add_sp
    jnz error_register_name

    bx_add_sp:
mov ax, real_reg_bx_2
mov bx, real_reg_sp_2
add ax, bx
mov real_reg_bx_2, ax
jc setCarryFlag
jmp continue

;;;;;;;;;;;;;;;;;;;;;;;; bx_add_what;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; endofcode
;;;;;;;;;;;;;;;;;;;;;;;; bh_add_? ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; startofcode
bh_add_?:
    mov ah, 9
    mov dx, offset newline
    int 21h


    mov ah, 9
    mov dx, offset value_OR_register
    int 21h

    ; receive input from user
    mov ah, 0AH
    mov dx, offset vORr
    int 21h

    mov ah, vORr + 2
    mov al, 72h; ascii of r
    mov bl, 76h; ascii of v
    cmp ah, al
    jz getRegisterName_bh_add_op2
    cmp ah, bl
    jz getValue_bh_add_op2




getValue_bh_add_op2:
mov ah, 9
mov dx, offset newline
int 21h

mov ah, 9
mov dx, offset Mess_value
int 21h

mov ah, 0AH
mov dx, offset value2
int 21h

; checkAdd_digits_or_letters value

mov al, value2 + 2
mov bh, 30h
cmp al, bh
jnz  checkAdd_if_1C
jz   isdigitAddC

checkAdd_if_1C:
mov bh, 31h
cmp al, bh
jnz  checkAdd_if_2C
jz   isdigitAddC

checkAdd_if_2C:
mov bh, 32h
cmp al, bh
jnz  checkAdd_if_3C
jz   isdigitAddC

checkAdd_if_3C:
mov bh, 33h
cmp al, bh
jnz  checkAdd_if_4C
jz   isdigitAddC

checkAdd_if_4C:
mov bh, 34h
cmp al, bh
jnz  checkAdd_if_5C
jz   isdigitAddC


checkAdd_if_5C:
mov bh, 35h
cmp al, bh
jnz  checkAdd_if_6C
jz   isdigitAddC


checkAdd_if_6C:
mov bh, 36h
cmp al, bh
jnz  checkAdd_if_7C
jz   isdigitAddC


checkAdd_if_7C:
mov bh, 37h
cmp al, bh
jnz  checkAdd_if_8C
jz   isdigitAddC


checkAdd_if_8C:
mov bh, 38h
cmp al, bh
jnz  checkAdd_if_9C
jz   isdigitAddC


checkAdd_if_9C:
mov bh, 39h
cmp al, bh
jnz  isletterAddB
jz   isdigitAddC




isdigitAddC:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkAdd_2nd_charB

isletterAddC:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkAdd_2nd_charC


checkAdd_2nd_charC:
mov al, value2 + 3
mov bh, 30h
cmp al, bh
jnz  checkAdd_if_1C1_
jz   isdigitAddC1_


checkAdd_if_1C1_:
mov bh, 31h
cmp al, bh
jnz  checkAdd_if_2C1_
jz   isdigitAddC1_


checkAdd_if_2C1_:
mov bh, 32h
cmp al, bh
jnz  checkAdd_if_3C1_
jz   isdigitAddC1_


checkAdd_if_3C1_:
mov bh, 33h
cmp al, bh
jnz  checkAdd_if_4C1_
jz   isdigitAddC1_


checkAdd_if_4C1_:
mov bh, 34h
cmp al, bh
jnz  checkAdd_if_5C1_
jz   isdigitAddC1_


checkAdd_if_5C1_:
mov bh, 35h
cmp al, bh
jnz  checkAdd_if_6C1_
jz   isdigitAddC1_


checkAdd_if_6C1_:
mov bh, 36h
cmp al, bh
jnz  checkAdd_if_7C1_
jz   isdigitAddC1_


checkAdd_if_7C1_:
mov bh, 37h
cmp al, bh
jnz  checkAdd_if_8C1_
jz   isdigitAddC1_


checkAdd_if_8C1_:
mov bh, 38h
cmp al, bh
jnz  checkAdd_if_9C1_
jz   isdigitAddC1_


checkAdd_if_9C1_:
mov bh, 39h
cmp al, bh
jnz  isletterAddB1_
jz   isdigitAddC1_



isdigitAddC1_:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  finish_checkAdd_digits_and_letters_of_inputC


isletterAddC1_:
sub al, 60h
add al, 9h
add ch, al

jmp  finish_checkAdd_digits_and_letters_of_inputC


finish_checkAdd_digits_and_letters_of_inputC:

mov ax, cx

mov bh, ah
mov bl, byte ptr real_reg_bx_2 + 1
add bl, bh
mov byte ptr real_reg_bx_2 + 1, bl
jc setCarryFlag
jmp continue





getRegisterName_bh_add_op2:

mov ah, 9
mov dx, offset newline
int 21h



mov ah, 9
mov dx, offset Mess_operand_2
int 21h

; receive input from user
mov ah, 0AH
mov dx, offset operand_2
int 21h



; checkAdd if register is ax or al or ah
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkAdd_8
jnz another_register_name_checkAdd_1_8


Ax_checkAdd_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareAdd_ax_1_8

another_compareAdd_ax_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz bh_add_ah
jnz another_compareAdd_of_ax_2_8


bh_add_ah:
mov ah, byte ptr real_reg_bx_2 + 1
mov bh, byte ptr real_reg_Ax_2 + 1
add ah, bh
mov byte ptr real_reg_bx_2 + 1, ah
jc setCarryFlag
jmp continue

another_compareAdd_of_ax_2_8:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz bh_add_al
    jnz error_register_name

    bh_add_al:
mov ah, byte ptr real_reg_bx_2 + 1
mov bh, byte ptr real_reg_Ax_2
add ah, bh
mov byte ptr real_reg_bx_2 + 1, ah
jc setCarryFlag
jmp continue


another_register_name_checkAdd_1_8:
    ; checkAdd if register is bx
    mov si, offset[operand_2 + 2]
    mov bl, 62h; ascii of b
    cmp bl, [si]
    jz bx_checkAdd_8
    jnz another_register_name_checkAdd_2_8

    bx_checkAdd_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareAdd_of_bx_1_8


another_compareAdd_of_bx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz bh_add_bh
jnz another_compareAdd_of_bx_2_8

bh_add_bh:
mov ah, byte ptr real_reg_bx_2+1
mov bh, byte ptr real_reg_bx_2+1
add ah, bh
mov byte ptr real_reg_bx_2 + 1, ah
jc setCarryFlag
jmp continue


another_compareAdd_of_bx_2_8:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz ah_add_bl
jnz compareAdd_BP_8


bh_add_bl:
mov ah, byte ptr real_reg_bx_2 + 1
mov bh, byte ptr real_reg_bx_2
add ah, bh
mov byte ptr real_reg_bx_2 + 1, ah
jc setCarryFlag
jmp continue

; to checkAdd if register is BP or not
compareAdd_BP_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkAdd_2_8:
; checkAdd if register is cx
mov si, offset[operand_2 + 2]
mov bl, 63h; ascii of c
cmp bl, [si]
jz cX_checkAdd_8
jnz another_register_name_checkAdd_3_8


cx_checkAdd_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareAdd_of_cx_1_8


another_compareAdd_of_cx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz bh_add_ch
jnz another_compareAdd_of_cx_2_8

bh_add_ch:
mov ah, byte ptr real_reg_bx_2 + 1
mov bh, byte ptr real_reg_cx_2 + 1
add ah, bh
mov byte ptr real_reg_bx_2 + 1, ah
jc setCarryFlag
jmp continue


another_compareAdd_of_cx_2_8:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz bh_add_cl
    jnz error_register_name

    bh_add_cl:
mov ah, byte ptr real_reg_bx_2 + 1
mov bh, byte ptr real_reg_cx_2
add ah, bh
mov byte ptr real_reg_bx_2 + 1, ah
jc setCarryFlag
jmp continue


another_register_name_checkAdd_3_8:
    ; checkAdd if register is dx or dl or dh
    mov si, offset[operand_2 + 2]
    mov bl, 64h; ascii of d
    cmp bl, [si]
    jz dX_checkAdd_8
    jnz another_register_name_checkAdd_4_8


    dx_checkAdd_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareAdd_of_dx_1_8


another_compareAdd_of_dx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz bh_add_dh
jnz another_compareAdd_of_dx_2_8

bh_add_dh:
mov ah, byte ptr real_reg_bx_2 + 1
mov bh, byte ptr real_reg_dx_2 + 1
add ah, bh
mov byte ptr real_reg_bx_2 + 1, ah
jc setCarryFlag
jmp continue

another_compareAdd_of_dx_2_8:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz bh_add_dl
    jnz compareAdd_DI_8

    bh_add_dl:
mov ah, byte ptr real_reg_bx_2 + 1
mov bh, byte ptr real_reg_dx_2
add ah, bh
mov byte ptr real_reg_bx_2 + 1, ah
jc setCarryFlag
jmp continue

; to checkAdd if register is DI or not
compareAdd_DI_8:
mov bl, 69h; ascii of i
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkAdd_4_8:
mov bl, 73h; ascii of s
cmp bl, [si]
jz checkAdd_si_8
jnz error_register_name

checkAdd_si_8:
mov bl, 69h; ascii of  i
cmp bl, [si]
jz sizemismatch
jnz checkAdd_sp_8

checkAdd_sp_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_register_name


;;;;;;;;;;;;;;;;;;;;;;; bh_add_? ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; endofcode
bl_add_?:
    mov ah, 9
    mov dx, offset newline
    int 21h


    mov ah, 9
    mov dx, offset value_OR_register
    int 21h

    ; receive input from user
    mov ah, 0AH
    mov dx, offset vORr
    int 21h

    mov ah, vORr + 2
    mov al, 72h; ascii of r
    mov bl, 76h; ascii of v
    cmp ah, al
    jz getRegisterName_bl_add_op2
    cmp ah, bl
    jz getValue_bl_add_op2




getValue_bl_add_op2:
mov ah, 9
mov dx, offset newline
int 21h

mov ah, 9
mov dx, offset Mess_value
int 21h

mov ah, 0AH
mov dx, offset value2
int 21h

; checkAdd_digits_or_letters value

mov al, value2 + 2
mov bh, 30h
cmp al, bh
jnz  checkAdd_if_1D
jz   isdigitAddD

checkAdd_if_1D:
mov bh, 31h
cmp al, bh
jnz  checkAdd_if_2D
jz   isdigitAddD

checkAdd_if_2D:
mov bh, 32h
cmp al, bh
jnz  checkAdd_if_3D
jz   isdigitAddD

checkAdd_if_3D:
mov bh, 33h
cmp al, bh
jnz  checkAdd_if_4D
jz   isdigitAddD

checkAdd_if_4D:
mov bh, 34h
cmp al, bh
jnz  checkAdd_if_5D
jz   isdigitAddD


checkAdd_if_5D:
mov bh, 35h
cmp al, bh
jnz  checkAdd_if_6D
jz   isdigitAddD


checkAdd_if_6D:
mov bh, 36h
cmp al, bh
jnz  checkAdd_if_7D
jz   isdigitAddD


checkAdd_if_7D:
mov bh, 37h
cmp al, bh
jnz  checkAdd_if_8D
jz   isdigitAddD


checkAdd_if_8D:
mov bh, 38h
cmp al, bh
jnz  checkAdd_if_9D
jz   isdigitAddD


checkAdd_if_9D:
mov bh, 39h
cmp al, bh
jnz  isletterAddD
jz   isdigitAddD




isdigitAddD:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkAdd_2nd_charD

isletterAddD:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkAdd_2nd_charD


checkAdd_2nd_charD:
mov al, value2 + 3
mov bh, 30h
cmp al, bh
jnz  checkAdd_if_1D1_
jz   isdigitAddD1_


checkAdd_if_1D1_:
mov bh, 31h
cmp al, bh
jnz  checkAdd_if_2D1_
jz   isdigitAddD1_


checkAdd_if_2D1_:
mov bh, 32h
cmp al, bh
jnz  checkAdd_if_3D1_
jz   isdigitAddD1_


checkAdd_if_3D1_:
mov bh, 33h
cmp al, bh
jnz  checkAdd_if_4D1_
jz   isdigitAddD1_


checkAdd_if_4D1_:
mov bh, 34h
cmp al, bh
jnz  checkAdd_if_5D1_
jz   isdigitAddD1_


checkAdd_if_5D1_:
mov bh, 35h
cmp al, bh
jnz  checkAdd_if_6D1_
jz   isdigitAddD1_


checkAdd_if_6D1_:
mov bh, 36h
cmp al, bh
jnz  checkAdd_if_7D1_
jz   isdigitAddD1_


checkAdd_if_7D1_:
mov bh, 37h
cmp al, bh
jnz  checkAdd_if_8D1_
jz   isdigitAddD1_


checkAdd_if_8D1_:
mov bh, 38h
cmp al, bh
jnz  checkAdd_if_9D1_
jz   isdigitAddD1_


checkAdd_if_9D1_:
mov bh, 39h
cmp al, bh
jnz  isletterAddD1_
jz   isdigitAddD1_



isdigitAddD1_:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  finish_checkAdd_digits_and_letters_of_inputD


isletterAddD1_:
sub al, 60h
add al, 9h
add ch, al

jmp  finish_checkAdd_digits_and_letters_of_inputD


finish_checkAdd_digits_and_letters_of_inputD:

mov ax, cx

mov bh, ah
mov bl, byte ptr real_reg_bx_2
add bl, bh
mov byte ptr real_reg_bx_2, bl
jc setCarryFlag
jmp continue





getRegisterName_bl_add_op2:

mov ah, 9
mov dx, offset newline
int 21h



mov ah, 9
mov dx, offset Mess_operand_2
int 21h

; receive input from user
mov ah, 0AH
mov dx, offset operand_2
int 21h



; checkAdd if register is ax or al or ah
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkAdd_9
jnz another_register_name_checkAddA_1_8


AX_checkAdd_9:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareAddA_ax_1_8

another_compareAddA_ax_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz bl_add_ah
jnz another_compareAddA_of_ax_2_8


bl_add_ah:
mov ah, byte ptr real_reg_bx_2
mov bh, byte ptr real_reg_Ax_2 + 1
add ah, bh
mov byte ptr real_reg_bx_2, ah
jc setCarryFlag
jmp continue

another_compareAddA_of_ax_2_8:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz bl_add_al
    jnz error_register_name

    bl_add_al:
mov ah, byte ptr real_reg_bx_2
mov bh, byte ptr real_reg_Ax_2
add ah, bh
mov byte ptr real_reg_bx_2, ah
jc setCarryFlag
jmp continue


another_register_name_checkAddA_1_8:
    ; checkAdd if register is bx
    mov si, offset[operand_2 + 2]
    mov bl, 62h; ascii of b
    cmp bl, [si]
    jz bx_checkAdd_9
    jnz another_register_name_checkAddA_2_8

    bx_checkAdd_9:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareAddA_of_bx_1_8


another_compareAddA_of_bx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz bl_add_bh
jnz another_compareAddA_of_bx_2_8

bl_add_bh:
mov ah, byte ptr real_reg_bx_2
mov bh, byte ptr real_reg_bx_2 + 1
add ah, bh
mov byte ptr real_reg_bx_2, ah
jc setCarryFlag
jmp continue


another_compareAddA_of_bx_2_8:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz bl_add_bl
    jnz compareAdd_BP_9


    bl_add_bl:
mov ah, byte ptr real_reg_bx_2
mov bh, byte ptr real_reg_bx_2
add ah, bh
mov byte ptr real_reg_bx_2, ah
jc setCarryFlag
jmp continue

; to checkAdd if register is BP or not
compareAdd_BP_9:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkAddA_2_8:
; checkAdd if register is cx
mov si, offset[operand_2 + 2]
mov bl, 63h; ascii of c
cmp bl, [si]
jz cX_checkAdd_9
jnz another_register_name_checkAddA_3_8


cx_checkAdd_9:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareAddA_of_cx_1_8


another_compareAddA_of_cx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz bl_add_ch
jnz another_compareAddA_of_cx_2_8

bl_add_ch:
mov ah, byte ptr real_reg_bx_2
mov bh, byte ptr real_reg_cx_2 + 1
add ah, bh
mov byte ptr real_reg_bx_2, ah
jc setCarryFlag
jmp continue


another_compareAddA_of_cx_2_8:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz bl_add_cl
    jnz error_register_name

    bl_add_cl:
mov ah, byte ptr real_reg_bx_2
mov bh, byte ptr real_reg_cx_2
add ah, bh
mov byte ptr real_reg_bx_2, ah
jc setCarryFlag
jmp continue


another_register_name_checkAddA_3_8:
    ; checkAdd if register is dx or dl or dh
    mov si, offset[operand_2 + 2]
    mov bl, 64h; ascii of d
    cmp bl, [si]
    jz dX_checkAdd_9
    jnz another_register_name_checkAddA_4_8


    dx_checkAdd_9:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareAddA_of_dx_1_8


another_compareAddA_of_dx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz bl_add_dh
jnz another_compareAddA_of_dx_2_8

bl_add_dh:
mov ah, byte ptr real_reg_bx_2
mov bh, byte ptr real_reg_dx_2 + 1
add ah, bh
mov byte ptr real_reg_bx_2, ah
jc setCarryFlag
jmp continue

another_compareAddA_of_dx_2_8:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz bl_add_dl
    jnz compareAdd_DI_9

    bl_add_dl:
mov ah, byte ptr real_reg_bx_2
mov bh, byte ptr real_reg_dx_2
add ah, bh
mov byte ptr real_reg_bx_2, ah
jc setCarryFlag
jmp continue

; to checkAdd if register is DI or not
compareAdd_DI_9:
mov bl, 69h; ascii of i
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkAddA_4_8:
mov bl, 73h; ascii of s
cmp bl, [si]
jz checkAdd_si_9
jnz error_register_name

checkAdd_si_9:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz sizemismatch
jnz checkAdd_sp_9

checkAdd_sp_9:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_register_name

;;;;;;;;;;;;;;;;;;;;;; bl_add_? ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; endofcode

;;;;;;;;;;;;;;;;;;;;;; bp_add_? ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; startofcode
bp_add_?:
    mov ah, 9
    mov dx, offset newline
    int 21h


    mov ah, 9
    mov dx, offset value_OR_register
    int 21h

    ; receive input from user
    mov ah, 0AH
    mov dx, offset vORr
    int 21h
    mov ah, vORr + 2
    mov al, 72h; ascii of r
    mov bl, 76h; ascii of v
    cmp ah, al
    jz getRegisterName_bp_add_op2
    cmp ah, bl
    jz getValue_bp_add_op2



getValue_bp_add_op2:
mov ah, 9
mov dx, offset newline
int 21h

mov ah, 9
mov dx, offset Mess_value
int 21h

mov ah, 0AH
mov dx, offset value
int 21h

mov al, value + 2
mov bh, 30h
cmp al, bh
jnz  checkAddbp_if_1_B
jz   isdigitAddbp_B

checkAddbp_if_1_B:
mov bh, 31h
cmp al, bh
jnz  checkAddbp_if_2_B
jz   isdigitAddbp_B

checkAddbp_if_2_B:
mov bh, 32h
cmp al, bh
jnz  checkAddbp_if_3_B
jz   isdigitAddbp_B

checkAddbp_if_3_B:
mov bh, 33h
cmp al, bh
jnz  checkAddbp_if_4_B
jz   isdigitAddbp_B

checkAddbp_if_4_B:
mov bh, 34h
cmp al, bh
jnz  checkAddbp_if_5_B
jz   isdigitAddbp_B


checkAddbp_if_5_B:
mov bh, 35h
cmp al, bh
jnz  checkAddbp_if_6_B
jz   isdigitAddbp_B


checkAddbp_if_6_B:
mov bh, 36h
cmp al, bh
jnz  checkAddbp_if_7_B
jz   isdigitAddbp_B


checkAddbp_if_7_B:
mov bh, 37h
cmp al, bh
jnz  checkAddbp_if_8_B
jz   isdigitAddbp_B


checkAddbp_if_8_B:
mov bh, 38h
cmp al, bh
jnz  checkAddbp_if_9_B
jz   isdigitAddbp_B


checkAddbp_if_9_B:
mov bh, 39h
cmp al, bh
jnz  isletterAddbp_B
jz   isdigitAddbp_B




isdigitAddbp_B:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkAddbp_2nd_char_B

isletterAddbp_B:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkAddbp_2nd_char_B


checkAddbp_2nd_char_B:
mov al, value + 3
mov bh, 30h
cmp al, bh
jnz  checkAddbp_if_1_B_1
jz   isdigitAddbp_B_1


checkAddbp_if_1_B_1:
mov bh, 31h
cmp al, bh
jnz  checkAddbp_if_2_B_1
jz   isdigitAddbp_B_1


checkAddbp_if_2_B_1:
mov bh, 32h
cmp al, bh
jnz  checkAddbp_if_3_B_1
jz   isdigitAddbp_B_1


checkAddbp_if_3_B_1:
mov bh, 33h
cmp al, bh
jnz  checkAddbp_if_4_B_1
jz   isdigitAddbp_B_1


checkAddbp_if_4_B_1:
mov bh, 34h
cmp al, bh
jnz  checkAddbp_if_5_B_1
jz   isdigitAddbp_B_1


checkAddbp_if_5_B_1:
mov bh, 35h
cmp al, bh
jnz  checkAddbp_if_6_B_1
jz   isdigitAddbp_B_1


checkAddbp_if_6_B_1:
mov bh, 36h
cmp al, bh
jnz  checkAddbp_if_7_B_1
jz   isdigitAddbp_B_1


checkAddbp_if_7_B_1:
mov bh, 37h
cmp al, bh
jnz  checkAddbp_if_8_B_1
jz   isdigitAddbp_B_1


checkAddbp_if_8_B_1:
mov bh, 38h
cmp al, bh
jnz  checkAddbp_if_9_B_1
jz   isdigitAddbp_B_1


checkAddbp_if_9_B_1:
mov bh, 39h
cmp al, bh
jnz  isletterAddbp_B_1
jz   isdigitAddbp_B_1



isdigitAddbp_B_1:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  checkAddbp_3rd_char_B


isletterAddbp_B_1:
sub al, 60h
add al, 9h
add ch, al

jmp  checkAddbp_3rd_char_B
checkAddbp_3rd_char_B:
mov al, value + 4
mov bh, 30h
cmp al, bh
jnz  checkAddbp_if_1_B_2
jz   isdigitAddbp_B_2

checkAddbp_if_1_B_2:
mov bh, 31h
cmp al, bh
jnz  checkAddbp_if_2_B_2
jz   isdigitAddbp_B_2

checkAddbp_if_2_B_2:
mov bh, 32h
cmp al, bh
jnz  checkAddbp_if_3_B_2
jz   isdigitAddbp_B_2

checkAddbp_if_3_B_2:
mov bh, 33h
cmp al, bh
jnz  checkAddbp_if_4_B_2
jz   isdigitAddbp_B_2

checkAddbp_if_4_B_2:
mov bh, 34h
cmp al, bh
jnz  checkAddbp_if_5_B_2
jz   isdigitAddbp_B_2


checkAddbp_if_5_B_2:
mov bh, 35h
cmp al, bh
jnz  checkAddbp_if_6_B_2
jz   isdigitAddbp_B_2

checkAddbp_if_6_B_2:
mov bh, 36h
cmp al, bh
jnz  checkAddbp_if_7_B_2
jz   isdigitAddbp_B_2


checkAddbp_if_7_B_2:
mov bh, 37h
cmp al, bh
jnz  checkAddbp_if_8_B_2
jz   isdigitAddbp_B_2


checkAddbp_if_8_B_2:
mov bh, 38h
cmp al, bh
jnz  checkAddbp_if_9_B_2
jz   isdigitAddbp_B_2


checkAddbp_if_9_B_2:
mov bh, 39h
cmp al, bh
jnz  isletterAddbp_B_2
jz   isdigitAddbp_B_2



isdigitAddbp_B_2:; reg_Ax_1 + 4 is tens
sub al, 30h
mov bl, 10h
mul bl
mov cl, al


jmp  checkAddbp_4th_char_B


isletterAddbp_B_2:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov cl, al


checkAddbp_4th_char_B:

mov al, value + 5
mov bh, 30h
cmp al, bh
jnz  checkAddbp_if_1_B_3
jz   isdigitAddbp_B_3


checkAddbp_if_1_B_3:
mov bh, 31h
cmp al, bh
jnz  checkAddbp_if_2_B_3
jz   isdigitAddbp_B_3


checkAddbp_if_2_B_3:
mov bh, 32h
cmp al, bh
jnz  checkAddbp_if_3_B_3
jz   isdigitAddbp_B_3


checkAddbp_if_3_B_3:
mov bh, 33h
cmp al, bh
jnz  checkAddbp_if_4_B_3
jz   isdigitAddbp_B_3


checkAddbp_if_4_B_3:
mov bh, 34h
cmp al, bh
jnz  checkAddbp_if_5_B_3
jz   isdigitAddbp_B_3


checkAddbp_if_5_B_3:
mov bh, 35h
cmp al, bh
jnz  checkAddbp_if_6_B_3
jz   isdigitAddbp_B_3


checkAddbp_if_6_B_3:
mov bh, 36h
cmp al, bh
jnz  checkAddbp_if_7_B_3
jz   isdigitAddbp_B_3

checkAddbp_if_7_B_3:
mov bh, 37h
cmp al, bh
jnz  checkAddbp_if_8_B_3
jz   isdigitAddbp_B_3


checkAddbp_if_8_B_3:
mov bh, 38h
cmp al, bh
jnz  checkAddbp_if_9_B_3
jz   isdigitAddbp_B_3

checkAddbp_if_9_B_3:
mov bh, 39h
cmp al, bh
jnz  isletterAddbp_B_3
jz   isdigitAddbp_B_3



isdigitAddbp_B_3:; reg_Ax_1 + 5 is unit
sub al, 30h
add cl, al


jmp  finish_checkAddbp_digits_and_letters_of_input_Bp

isletterAddbp_B_3:
sub al, 60h
add al, 9h
add cl, al


finish_checkAddbp_digits_and_letters_of_input_Bp:

mov ax, cx


mov bx, real_reg_bp_2
add bx, ax
mov real_reg_bp_2, bx
jc setCarryFlag
jmp continue


getRegisterName_bp_add_op2:

mov ah, 9
mov dx, offset newline
int 21h



mov ah, 9
mov dx, offset Mess_operand_2
int 21h

; receive input from user
mov ah, 0AH
mov dx, offset operand_2
int 21h



; checkAddbp if register is ax or al or ah
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkAddbp_7
jnz another_register_name_checkAddbp_1_7


Ax_checkAddbp_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz bp_add_ax
jnz another_BPcompareAdd_of_ax_1_7

bp_add_ax:
mov ax, real_reg_bp_2
mov bp, real_reg_Ax_2
add ax, bp
mov real_reg_bp_2, ax
jc setCarryFlag
jmp continue

another_BPcompareAdd_of_ax_1_7:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_BPcompareAdd_of_ax_2_7

    another_BPcompareAdd_of_ax_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkAddbp_1_7:
; checkAddbp if register is bp
mov si, offset[operand_2 + 2]
mov bl, 62h; ascii of b
cmp bl, [si]
jz bx_checkAddbp_7
jnz another_register_name_checkAddbp_2_7

bx_checkAddbp_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz bp_add_bx
jnz another_BPcompareAdd_of_bp_1_7


bp_add_bx:
mov ax, real_reg_bp_2
mov bx, real_reg_bx_2
add ax, bx
mov real_reg_bp_2, ax
jc setCarryFlag
jmp continue

another_BPcompareAdd_of_bp_1_7:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_BPcompareAdd_of_bp_2_7

    another_BPcompareAdd_of_bp_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz BPcompareAdd_BP_7




; to checkbp if register is BP or not
BPcompareAdd_BP_7:
mov bl, 70h; ascii of p
cmp bl, [si]
jz bp_add_BP
jnz error_register_name

bp_add_BP:
mov ax, real_reg_bp_2
mov bx, real_reg_BP_2
add ax, bx
mov real_reg_bp_2, ax
jc setCarryFlag
jmp continue

another_register_name_checkAddbp_2_7:
    ; checkbp if register is cx
    mov si, offset[operand_2 + 2]
    mov bl, 63h; ascii of c
    cmp bl, [si]
    jz cX_checkAddbp_7
    jnz another_register_name_checkAddbp_3_7


    cx_checkAddbp_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz bp_add_cx
jnz error_register_name

bp_add_cx:
mov ax, real_reg_bp_2
mov bx, real_reg_cx_2
add ax, bx
mov real_reg_bp_2, ax
jc setCarryFlag
jmp continue

another_BPcompareAdd_of_cx_1_7:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_BPcompareAdd_of_cx_2_7

    jmp continue

    another_BPcompareAdd_of_cx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkAddbp_3_7:
; checkbp if register is dx or dl or dh
mov si, offset[operand_2 + 2]
mov bl, 64h; ascii of d
cmp bl, [si]
jz dX_checkAddbp_7
jnz another_register_name_checkAddbp_4_7


dx_checkAddbp_7:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz bp_add_dx
jnz another_BPcompareAdd_of_dx_1_7

bp_add_dx:
mov ax, real_reg_bp_2
mov bx, real_reg_dx_2
add ax, bx
mov real_reg_bp_2, ax
jc setCarryFlag
jmp continue

another_BPcompareAdd_of_dx_1_7:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_BPcompareAdd_of_dx_2_7

    another_BPcompareAdd_of_dx_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz BPcompareAdd_DI_7

; to checkbp if register is DI or not
BPcompareAdd_DI_7:
mov bl, 69h; ascii of i
cmp bl, [si]
jz bp_add_DI
jnz error_register_name

bp_add_DI:
mov ax, real_reg_bp_2
mov bx, real_reg_di_2
add ax, bx
mov real_reg_bp_2, ax
jc setCarryFlag
jmp continue

another_register_name_checkAddbp_4_7:
    mov bl, 73h; ascii of s
    cmp bl, [si]
    jz checkAddbp_si_7
    jnz error_register_name

    checkAddbp_si_7:
mov bl, 69h; ascii of  i
cmp bl, [si]
jz bp_add_si
jnz checkAddbp_sp_7

bp_add_si:
mov ax, real_reg_bp_2
mov bx, real_reg_si_2
add ax, bx
mov real_reg_bp_2, ax
jc setCarryFlag
jmp continue

checkAddbp_sp_7:
    mov bl, 70h; ascii of p
    cmp bl, [si]
    jz bp_add_sp
    jnz error_register_name

    bp_add_sp:
mov ax, real_reg_bp_2
mov bx, real_reg_sp_2
add ax, bx
mov real_reg_bp_2, ax
jc setCarryFlag
jmp continue

;;;;;;;;;;;;;;;;;;;;; bp_add_? ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; endofcode
;;;;;;;;;;;;;;;;;;;;;; cx_add_what;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; startofcode
cx_add_what:
mov ah, 9
mov dx, offset newline
int 21h


mov ah, 9
mov dx, offset value_OR_register
int 21h

; receive input from user
mov ah, 0AH
mov dx, offset vORr
int 21h
mov ah, vORr + 2
mov al, 72h; ascii of r
mov bl, 76h; ascii of v
cmp ah, al
jz getRegisterName_cx_add_op2
cmp ah, bl
jz getValue_cx_add_op2



getValue_cx_add_op2:
mov ah, 9
mov dx, offset newline
int 21h

mov ah, 9
mov dx, offset Mess_value
int 21h

mov ah, 0AH
mov dx, offset value
int 21h

mov al, value + 2
mov bh, 30h
cmp al, bh
jnz  checkAdd_if_cx_1_A
jz   isdigitAdd_cx_A

checkAdd_if_cx_1_A:
mov bh, 31h
cmp al, bh
jnz  checkAdd_if_cx_2_A
jz   isdigitAdd_cx_A

checkAdd_if_cx_2_A:
mov bh, 32h
cmp al, bh
jnz  checkAdd_if_cx_3_A
jz   isdigitAdd_cx_A

checkAdd_if_cx_3_A:
mov bh, 33h
cmp al, bh
jnz  checkAdd_if_cx_4_A
jz   isdigitAdd_cx_A

checkAdd_if_cx_4_A:
mov bh, 34h
cmp al, bh
jnz  checkAdd_if_cx_5_A
jz   isdigitAdd_cx_A


checkAdd_if_cx_5_A:
mov bh, 35h
cmp al, bh
jnz  checkAdd_if_cx_6_A
jz   isdigitAdd_cx_A


checkAdd_if_cx_6_A:
mov bh, 36h
cmp al, bh
jnz  checkAdd_if_cx_7_A
jz   isdigitAdd_cx_A


checkAdd_if_cx_7_A:
mov bh, 37h
cmp al, bh
jnz  checkAdd_if_cx_8_A
jz   isdigitAdd_cx_A


checkAdd_if_cx_8_A:
mov bh, 38h
cmp al, bh
jnz  checkAdd_if_cx_9_A
jz   isdigitAdd_cx_A


checkAdd_if_cx_9_A:
mov bh, 39h
cmp al, bh
jnz   isletterAdd_cx_A
jz   isdigitAdd_cx_A




isdigitAdd_cx_A:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkAdd_2nd_char_cx_A

isletterAdd_cx_A:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkAdd_2nd_char_cx_A


checkAdd_2nd_char_cx_A:
mov al, value + 3
mov bh, 30h
cmp al, bh
jnz  checkAdd_if_cx_1_A_1
jz   isdigitAdd_cx_A_1


checkAdd_if_cx_1_A_1:
mov bh, 31h
cmp al, bh
jnz  checkAdd_if_cx_2_A_1
jz   isdigitAdd_cx_A_1


checkAdd_if_cx_2_A_1:
mov bh, 32h
cmp al, bh
jnz  checkAdd_if_cx_3_A_1
jz   isdigitAdd_cx_A_1


checkAdd_if_cx_3_A_1:
mov bh, 33h
cmp al, bh
jnz  checkAdd_if_cx_4_A_1
jz   isdigitAdd_cx_A_1


checkAdd_if_cx_4_A_1:
mov bh, 34h
cmp al, bh
jnz  checkAdd_if_cx_5_A_1
jz   isdigitAdd_cx_A_1


checkAdd_if_cx_5_A_1:
mov bh, 35h
cmp al, bh
jnz  checkAdd_if_cx_6_A_1
jz   isdigitAdd_cx_A_1


checkAdd_if_cx_6_A_1:
mov bh, 36h
cmp al, bh
jnz  checkAdd_if_cx_7_A_1
jz   isdigitAdd_cx_A_1


checkAdd_if_cx_7_A_1:
mov bh, 37h
cmp al, bh
jnz  checkAdd_if_cx_8_A_1
jz   isdigitAdd_cx_A_1


checkAdd_if_cx_8_A_1:
mov bh, 38h
cmp al, bh
jnz  checkAdd_if_cx_9_A_1
jz   isdigitAdd_cx_A_1


checkAdd_if_cx_9_A_1:
mov bh, 39h
cmp al, bh
jnz   isletterAdd_cx_A_1
jz   isdigitAdd_cx_A_1



isdigitAdd_cx_A_1:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  checkAdd_3rd_char_cx_A


isletterAdd_cx_A_1:
sub al, 60h
add al, 9h
add ch, al

jmp  checkAdd_3rd_char_cx_A
checkAdd_3rd_char_cx_A:
mov al, value + 4
mov bh, 30h
cmp al, bh
jnz  checkAdd_if_cx_1_A_2
jz   isdigitAdd_cx_A_2

checkAdd_if_cx_1_A_2:
mov bh, 31h
cmp al, bh
jnz  checkAdd_if_cx_2_A_2
jz   isdigitAdd_cx_A_2

checkAdd_if_cx_2_A_2:
mov bh, 32h
cmp al, bh
jnz  checkAdd_if_cx_3_A_2
jz   isdigitAdd_cx_A_2

checkAdd_if_cx_3_A_2:
mov bh, 33h
cmp al, bh
jnz  checkAdd_if_cx_4_A_2
jz   isdigitAdd_cx_A_2

checkAdd_if_cx_4_A_2:
mov bh, 34h
cmp al, bh
jnz  checkAdd_if_cx_5_A_2
jz   isdigitAdd_cx_A_2


checkAdd_if_cx_5_A_2:
mov bh, 35h
cmp al, bh
jnz  checkAdd_if_cx_6_A_2
jz   isdigitAdd_cx_A_2

checkAdd_if_cx_6_A_2:
mov bh, 36h
cmp al, bh
jnz  checkAdd_if_cx_7_A_2
jz   isdigitAdd_cx_A_2


checkAdd_if_cx_7_A_2:
mov bh, 37h
cmp al, bh
jnz  checkAdd_if_cx_8_A_2
jz   isdigitAdd_cx_A_2


checkAdd_if_cx_8_A_2:
mov bh, 38h
cmp al, bh
jnz  checkAdd_if_cx_9_A_2
jz   isdigitAdd_cx_A_2


checkAdd_if_cx_9_A_2:
mov bh, 39h
cmp al, bh
jnz   isletterAdd_cx_A_2
jz   isdigitAdd_cx_A_2



isdigitAdd_cx_A_2:; reg_Ax_1 + 4 is tens
sub al, 30h
mov bl, 10h
mul bl
mov cl, al


jmp  cx_checkAdd_4th_char_cx_A


isletterAdd_cx_A_2:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov cl, al


cx_checkAdd_4th_char_cx_A:

mov al, value + 5
mov bh, 30h
cmp al, bh
jnz  checkAdd_if_cx_1_A_3
jz   isdigitAdd_cx_A_3


checkAdd_if_cx_1_A_3:
mov bh, 31h
cmp al, bh
jnz  checkAdd_if_cx_2_A_3
jz   isdigitAdd_cx_A_3


checkAdd_if_cx_2_A_3:
mov bh, 32h
cmp al, bh
jnz  checkAdd_if_cx_3_A_3
jz   isdigitAdd_cx_A_3


checkAdd_if_cx_3_A_3:
mov bh, 33h
cmp al, bh
jnz  checkAdd_if_cx_4_A_3
jz   isdigitAdd_cx_A_3


checkAdd_if_cx_4_A_3:
mov bh, 34h
cmp al, bh
jnz  checkAdd_if_cx_5_A_3
jz   isdigitAdd_cx_A_3


checkAdd_if_cx_5_A_3:
mov bh, 35h
cmp al, bh
jnz  checkAdd_if_cx_6_A_3
jz   isdigitAdd_cx_A_3


checkAdd_if_cx_6_A_3:
mov bh, 36h
cmp al, bh
jnz  checkAdd_if_cx_7_A_3
jz   isdigitAdd_cx_A_3

checkAdd_if_cx_7_A_3:
mov bh, 37h
cmp al, bh
jnz  checkAdd_if_cx_8_A_3
jz   isdigitAdd_cx_A_3


checkAdd_if_cx_8_A_3:
mov bh, 38h
cmp al, bh
jnz  checkAdd_if_cx_9_A_3
jz   isdigitAdd_cx_A_3

checkAdd_if_cx_9_A_3:
mov bh, 39h
cmp al, bh
jnz   isletterAdd_cx_A_3
jz   isdigitAdd_cx_A_3



isdigitAdd_cx_A_3:; reg_Ax_1 + 5 is unit
sub al, 30h
add cl, al


jmp  finish_checkAdd_digits_and_letters_of_input_cx

isletterAdd_cx_A_3:
sub al, 60h
add al, 9h
add cl, al


finish_checkAdd_digits_and_letters_of_input_cx:

mov ax, cx


mov bx, real_reg_cx_2
add bx, ax
mov real_reg_cx_2, bx
jc setCarryFlag
jmp continue


getRegisterName_cx_add_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_operand_2
int 21h

; receive input from user
mov ah, 0AH
mov dx, offset operand_2
int 21h



; checkAdd if register is ax or al or ah
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_cx_checkAdd_4
jnz another_register_name_checkAdd_cx_cx_1_4


Ax_cx_checkAdd_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz cx_add_ax
jnz another_compareAdd_cx_of_ax_1_7


cx_add_ax:
mov ax, real_reg_cx_2
mov bx, real_reg_ax_2
add ax, bx
mov real_reg_cx_2, ax
jc setCarryFlag
jmp continue

another_compareAdd_cx_of_ax_1_7:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareAdd_cx_of_ax_2_7

    another_compareAdd_cx_of_ax_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz another_register_name_checkAdd_cx_cx_1_4



another_register_name_checkAdd_cx_cx_1_4:
; checkAdd if register is bx
mov si, offset[operand_2 + 2]
mov bl, 62h; ascii of b
cmp bl, [si]
jz bx_cx_checkAdd_4
jnz another_register_name_checkAdd_cx_2_4

bx_cx_checkAdd_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz cx_add_bx
jnz another_compareAdd_cx_of_cx_bx_1_4


cx_add_bx:
mov ax, real_reg_cx_2
mov bx, real_reg_bx_2
add ax, bx
mov real_reg_cx_2, ax
jc setCarryFlag
jmp continue

another_compareAdd_cx_of_cx_bx_1_4:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareAdd_cx_of_cx_bx_2_4

    another_compareAdd_cx_of_cx_bx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareAdd_cx_BP_4




; to checkAdd if register is BP or not
compareAdd_cx_BP_4:
mov bl, 70h; ascii of p
cmp bl, [si]
jz cx_add_BP
jnz error_register_name

cx_add_BP:
mov ax, real_reg_cx_2
mov bx, real_reg_BP_2
add ax, bx
mov real_reg_cx_2, ax
jc setCarryFlag
jmp continue

another_register_name_checkAdd_cx_2_4:
    ; checkAdd if register is cx
    mov si, offset[operand_2 + 2]
    mov bl, 63h; ascii of c
    cmp bl, [si]
    jz cX_cx_checkAdd_4
    jnz another_register_name_checkAdd_cx_3_4


    cx_cx_checkAdd_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz cx_add_cx
jnz error_register_name

cx_add_cx:
mov ax, real_reg_cx_2
mov bx, real_reg_cx_2
add ax, bx
mov real_reg_cx_2, ax
jc setCarryFlag
jmp continue

another_compareAdd_cx_of_cx_cx_1_4:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareAdd_cx_of_cx_cx_2_4

    jmp continue

    another_compareAdd_cx_of_cx_cx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkAdd_cx_3_4:
; checkAdd if register is dx or dl or dh
mov si, offset[operand_2 + 2]
mov bl, 64h; ascii of d
cmp bl, [si]
jz dX_cx_checkAdd_4
jnz another_register_name_cx_checkAdd_4_4


dx_cx_checkAdd_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz cx_add_dx
jnz another_compareAdd_cx_of_cx_dx_1_4

cx_add_dx:
mov ax, real_reg_cx_2
mov bx, real_reg_dx_2
add ax, bx
mov real_reg_cx_2, ax
jc setCarryFlag
jmp continue

another_compareAdd_cx_of_cx_dx_1_4:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareAdd_cx_of_cx_dx_2_4

    another_compareAdd_cx_of_cx_dx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareAdd_cx_DI_4

; to checkAdd if register is DI or not
compareAdd_cx_DI_4:
mov bl, 69h; ascii of i
cmp bl, [si]
jz cx_add_DI
jnz error_register_name

cx_add_DI:
mov ax, real_reg_cx_2
mov bx, real_reg_di_2
add ax, bx
mov real_reg_cx_2, ax
jc setCarryFlag
jmp continue

another_register_name_cx_checkAdd_4_4:
    mov bl, 73h; ascii of s
    cmp bl, [si]
    jz checkAdd_si_4
    jnz error_register_name

    checkAdd_cx_si_4:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz cx_add_si
jnz checkAdd_cx_sp_4

cx_add_si:
mov ax, real_reg_cx_2
mov bx, real_reg_si_2
add ax, bx
mov real_reg_cx_2, ax
jc setCarryFlag
jmp continue

checkAdd_cx_sp_4:
    mov bl, 70h; ascii of p
    cmp bl, [si]
    jz cx_add_sp
    jnz error_register_name

    cx_add_sp:
mov ax, real_reg_cx_2
mov bx, real_reg_sp_2
add ax, bx
mov real_reg_cx_2, ax
jc setCarryFlag
jmp continue
;;;;;;;;;;;;;;;;;;;;;; cx_add_what;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; endofcode

;;;;;;;;;;;;;;;;;;;;;; ch_add_? ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; startofcode
ch_add_?:
    mov ah, 9
    mov dx, offset newline
    int 21h


    mov ah, 9
    mov dx, offset value_OR_register
    int 21h

    ; receive input from user
    mov ah, 0AH
    mov dx, offset vORr
    int 21h

    mov ah, vORr + 2
    mov al, 72h; ascii of r
    mov bl, 76h; ascii of v
    cmp ah, al
    jz getRegisterName_ch_add_op2
    cmp ah, bl
    jz getValue_ch_add_op2




getValue_ch_add_op2:
mov ah, 9
mov dx, offset newline
int 21h

mov ah, 9
mov dx, offset Mess_value
int 21h

mov ah, 0AH
mov dx, offset value2
int 21h

mov al, value2 + 2
mov bh, 30h
cmp al, bh
jnz  checkAdd_if_ch_1C
jz   isdigitAddch

checkAdd_if_ch_1C:
mov bh, 31h
cmp al, bh
jnz  checkAdd_if_ch_2C
jz   isdigitAddch

checkAdd_if_ch_2C:
mov bh, 32h
cmp al, bh
jnz  checkAdd_if_ch_3C
jz   isdigitAddch

checkAdd_if_ch_3C:
mov bh, 33h
cmp al, bh
jnz  checkAdd_if_ch_4C
jz   isdigitAddch

checkAdd_if_ch_4C:
mov bh, 34h
cmp al, bh
jnz  checkAdd_if_ch_5C
jz   isdigitAddch


checkAdd_if_ch_5C:
mov bh, 35h
cmp al, bh
jnz  checkAdd_if_ch_6C
jz   isdigitAddch


checkAdd_if_ch_6C:
mov bh, 36h
cmp al, bh
jnz  checkAdd_if_ch_7C
jz   isdigitAddch


checkAdd_if_ch_7C:
mov bh, 37h
cmp al, bh
jnz  checkAdd_if_ch_8C
jz   isdigitAddch


checkAdd_if_ch_8C:
mov bh, 38h
cmp al, bh
jnz  checkAdd_if_ch_9C
jz   isdigitAddch


checkAdd_if_ch_9C:
mov bh, 39h
cmp al, bh
jnz  isletterAddB
jz   isdigitAddch




isdigitAddch:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkAdd_2nd_charch

isletterAddchh:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkAdd_2nd_charch


checkAdd_2nd_charch:
mov al, value2 + 3
mov bh, 30h
cmp al, bh
jnz  checkAdd_if_ch_1C1_
jz   isdigitAddch1_


checkAdd_if_ch_1C1_:
mov bh, 31h
cmp al, bh
jnz  checkAdd_if_ch_2C1_
jz   isdigitAddch1_


checkAdd_if_ch_2C1_:
mov bh, 32h
cmp al, bh
jnz  checkAdd_if_ch_3C1_
jz   isdigitAddch1_


checkAdd_if_ch_3C1_:
mov bh, 33h
cmp al, bh
jnz  checkAdd_if_ch_4C1_
jz   isdigitAddch1_


checkAdd_if_ch_4C1_:
mov bh, 34h
cmp al, bh
jnz  checkAdd_if_ch_5C1_
jz   isdigitAddch1_


checkAdd_if_ch_5C1_:
mov bh, 35h
cmp al, bh
jnz  checkAdd_if_ch_6C1_
jz   isdigitAddch1_


checkAdd_if_ch_6C1_:
mov bh, 36h
cmp al, bh
jnz  checkAdd_if_ch_7C1_
jz   isdigitAddch1_


checkAdd_if_ch_7C1_:
mov bh, 37h
cmp al, bh
jnz  checkAdd_if_ch_8C1_
jz   isdigitAddch1_


checkAdd_if_ch_8C1_:
mov bh, 38h
cmp al, bh
jnz  checkAdd_if_ch_9C1_
jz   isdigitAddch1_


checkAdd_if_ch_9C1_:
mov bh, 39h
cmp al, bh
jnz  isletterAddB1_
jz   isdigitAddch1_



isdigitAddch1_:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  finish_ch_checkAdd_digits_and_letters_of_inputch


isletterAddch1_:
sub al, 60h
add al, 9h
add ch, al

jmp  finish_ch_checkAdd_digits_and_letters_of_inputch


finish_ch_checkAdd_digits_and_letters_of_inputch:

mov ax, cx

mov bh, ah
mov bl, byte ptr real_reg_cx_2 + 1
add bl, bh
mov byte ptr real_reg_cx_2 + 1, bl
jc setCarryFlag
jmp continue





getRegisterName_ch_add_op2:

mov ah, 9
mov dx, offset newline
int 21h



mov ah, 9
mov dx, offset Mess_operand_2
int 21h

; receive input from user
mov ah, 0AH
mov dx, offset operand_2
int 21h



; checkAdd if register is ax or al or ah
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_ch_checkAdd_8
jnz another_register_name_ch_checkAdd_1_8


Ax_ch_checkAdd_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_ch_compareAdd_ax_1_8

another_ch_compareAdd_ax_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz ch_add_ah
jnz another_ch_compareAdd_of_ax_2_8


ch_add_ah:
mov ah, byte ptr real_reg_cx_2 + 1
mov bh, byte ptr real_reg_Ax_2 + 1
add ah, bh
mov byte ptr real_reg_cx_2 + 1, ah
jc setCarryFlag
jmp continue

another_ch_compareAdd_of_ax_2_8:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz ch_add_al
    jnz error_register_name

    ch_add_al:
mov ah, byte ptr real_reg_cx_2 + 1
mov bh, byte ptr real_reg_Ax_2
add ah, bh
mov byte ptr real_reg_cx_2 + 1, ah
jc setCarryFlag
jmp continue


another_register_name_ch_checkAdd_1_8:
    ; checkAdd if register is bx
    mov si, offset[operand_2 + 2]
    mov bl, 62h; ascii of b
    cmp bl, [si]
    jz bx_ch_checkAdd_8
    jnz another_register_name_ch_checkAdd_2_8

    bx_ch_checkAdd_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_ch_compareAdd_of_bx_1_8


another_ch_compareAdd_of_bx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz ch_add_bh
jnz another_ch_compareAdd_of_bx_2_8

ch_add_bh:
mov ah, byte ptr real_reg_cx_2 + 1
mov bh, byte ptr real_reg_bx_2 + 1
add ah, bh
mov byte ptr real_reg_cx_2 + 1, ah
jc setCarryFlag
jmp continue


another_ch_compareAdd_of_bx_2_8:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz ch_add_bl
    jnz chcompareAdd_BP_8


    ch_add_bl:
mov ah, byte ptr real_reg_cx_2 + 1
mov bh, byte ptr real_reg_bx_2
add ah, bh
mov byte ptr real_reg_cx_2 + 1, ah
jc setCarryFlag
jmp continue

; to checkAdd if register is BP or not
chcompareAdd_BP_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_ch_checkAdd_2_8:
; checkAdd if register is cx
mov si, offset[operand_2 + 2]
mov bl, 63h; ascii of c
cmp bl, [si]
jz cX_ch_checkAdd_8
jnz another_register_name_ch_checkAdd_3_8


cx_ch_checkAdd_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_ch_compareAdd_of_cx_1_8


another_ch_compareAdd_of_cx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz ch_add_ch
jnz another_ch_compareAdd_of_cx_2_8

ch_add_ch:
mov ah, byte ptr real_reg_cx_2 + 1
mov bh, byte ptr real_reg_cx_2 + 1
add ah, bh
mov byte ptr real_reg_cx_2 + 1, ah
jc setCarryFlag
jmp continue


another_ch_compareAdd_of_cx_2_8:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz ch_add_cl
    jnz error_register_name

    ch_add_cl:
mov ah, byte ptr real_reg_cx_2 + 1
mov bh, byte ptr real_reg_cx_2
add ah, bh
mov byte ptr real_reg_cx_2 + 1, ah
jc setCarryFlag
jmp continue


another_register_name_ch_checkAdd_3_8:
    ; checkAdd if register is dx or dl or dh
    mov si, offset[operand_2 + 2]
    mov bl, 64h; ascii of d
    cmp bl, [si]
    jz dX_ch_checkAdd_8
    jnz another_register_name_ch_checkAdd_4_8


    dx_ch_checkAdd_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_ch_compareAdd_of_dx_1_8


another_ch_compareAdd_of_dx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz ch_add_dh
jnz another_ch_compareAdd_of_dx_2_8

ch_add_dh:
mov ah, byte ptr real_reg_cx_2 + 1
mov bh, byte ptr real_reg_dx_2 + 1
add ah, bh
mov byte ptr real_reg_cx_2 + 1, ah
jc setCarryFlag
jmp continue

another_ch_compareAdd_of_dx_2_8:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz ch_add_dl
    jnz compareAdd_ch_DI_8

    ch_add_dl:
mov ah, byte ptr real_reg_cx_2 + 1
mov bh, byte ptr real_reg_dx_2
add ah, bh
mov byte ptr real_reg_cx_2 + 1, ah
jc setCarryFlag
jmp continue

; to checkAdd if register is DI or not
compareAdd_ch_DI_8:
mov bl, 69h; ascii of i
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_ch_checkAdd_4_8:
mov bl, 73h; ascii of s
cmp bl, [si]
jz checkAdd_ch_si_8
jnz error_register_name

checkAdd_ch_si_8:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz sizemismatch
jnz checkAdd_ch_sp_8

checkAdd_ch_sp_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_register_name
;;;;;;;;;;;;;;;;;;;;; ch_add_? ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; endoscode

;;;;;;;;;;;;;;;;; cl_add_? ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; startofcode
cl_add_?:
    mov ah, 9
    mov dx, offset newline
    int 21h
    mov ah, 9
    mov dx, offset value_OR_register
    int 21h
    ; receive input from user
    mov ah, 0AH
    mov dx, offset vORr
    int 21h
    mov ah, vORr + 2
    mov al, 72h; ascii of r
    mov bl, 76h; ascii of v
    cmp ah, al
    jz getRegisterName_cl_add_op2
    cmp ah, bl
    jz getValue_cl_add_op2
    getValue_cl_add_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_value
int 21h
mov ah, 0AH
mov dx, offset value2
int 21h
mov al, value2 + 2
mov bh, 30h
cmp al, bh
jnz  checkaddCl_if_1_
jz   isdigitaddCl_

checkaddCl_if_1_:
mov bh, 31h
cmp al, bh
jnz  checkaddCl_if_2_
jz   isdigitaddCl_

checkaddCl_if_2_:
mov bh, 32h
cmp al, bh
jnz  checkaddCl_if_3_
jz   isdigitaddCl_

checkaddCl_if_3_:
mov bh, 33h
cmp al, bh
jnz  checkaddCl_if_4_
jz   isdigitaddCl_

checkaddCl_if_4_:
mov bh, 34h
cmp al, bh
jnz  checkaddCl_if_5_
jz   isdigitaddCl_


checkaddCl_if_5_:
mov bh, 35h
cmp al, bh
jnz  checkaddCl_if_6_
jz   isdigitaddCl_


checkaddCl_if_6_:
mov bh, 36h
cmp al, bh
jnz  checkaddCl_if_7_
jz   isdigitaddCl_


checkaddCl_if_7_:
mov bh, 37h
cmp al, bh
jnz  checkaddCl_if_8_
jz   isdigitaddCl_


checkaddCl_if_8_:
mov bh, 38h
cmp al, bh
jnz  checkaddCl_if_9_
jz   isdigitaddCl_


checkaddCl_if_9_:
mov bh, 39h
cmp al, bh
jnz  isletteraddCl_
jz   isdigitaddCl_




isdigitaddCl_:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkaddCl_2nd_char_

isletteraddCl_:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkaddCl_2nd_char_


checkaddCl_2nd_char_:
mov al, value2 + 3
mov bh, 30h
cmp al, bh
jnz  checkaddCl_if_1_1_
jz   isdigitaddCl_1_


checkaddCl_if_1_1_:
mov bh, 31h
cmp al, bh
jnz  checkaddCl_if_2_1_
jz   isdigitaddCl_1_


checkaddCl_if_2_1_:
mov bh, 32h
cmp al, bh
jnz  checkaddCl_if_3_1_
jz   isdigitaddCl_1_


checkaddCl_if_3_1_:
mov bh, 33h
cmp al, bh
jnz  checkaddCl_if_4_1_
jz   isdigitaddCl_1_


checkaddCl_if_4_1_:
mov bh, 34h
cmp al, bh
jnz  checkaddCl_if_5_1_
jz   isdigitaddCl_1_


checkaddCl_if_5_1_:
mov bh, 35h
cmp al, bh
jnz  checkaddCl_if_6_1_
jz   isdigitaddCl_1_


checkaddCl_if_6_1_:
mov bh, 36h
cmp al, bh
jnz  checkaddCl_if_7_1_
jz   isdigitaddCl_1_


checkaddCl_if_7_1_:
mov bh, 37h
cmp al, bh
jnz  checkaddCl_if_8_1_
jz   isdigitaddCl_1_


checkaddCl_if_8_1_:
mov bh, 38h
cmp al, bh
jnz  checkaddCl_if_9_1_
jz   isdigitaddCl_1_


checkaddCl_if_9_1_:
mov bh, 39h
cmp al, bh
jnz  isletteraddCl_1_
jz   isdigitaddCl_1_



isdigitaddCl_1_:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  finish_checkaddCl_digits_and_letters_of_input_


isletteraddCl_1_:
sub al, 60h
add al, 9h
add ch, al

jmp  finish_checkaddCl_digits_and_letters_of_input_
finish_checkaddCl_digits_and_letters_of_input_:
mov ax, cx
mov dl, byte ptr real_reg_cx_2
add dl, ah
mov byte ptr real_reg_cx_2, dl
jc setCarryFlag
jmp continue
getRegisterName_cl_add_op2:
    mov ah, 9
    mov dx, offset newline
    int 21h
    mov ah, 9
    mov dx, offset Mess_operand_2
    int 21h
    ; receive input from user
    mov ah, 0AH
    mov dx, offset operand_2
    int 21h

    ; check if register is ax or al or ah
    mov si, offset[operand_2 + 2]
    mov bl, 61h; ascii of a
    cmp bl, [si]
    jz AX_checkCladd_8
    jnz another_register_name_checkCladd_1_8


    Ax_checkCladd_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareCladd_ax_1_8

another_compareCladd_ax_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz cl_add_ah
jnz another_compareCladd_of_ax_2_8


cl_add_ah:
mov ah, byte ptr real_reg_cx_2
mov bh, byte ptr real_reg_Ax_2 + 1
add ah, bh
mov byte ptr real_reg_cx_2, ah
jc setCarryFlag
jmp continue

another_compareCladd_of_ax_2_8:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz cl_add_al
    jnz error_register_name

    cl_add_al:
mov ah, byte ptr real_reg_cx_2
mov bh, byte ptr real_reg_Ax_2
add ah, bh
mov byte ptr real_reg_cx_2, ah
jc setCarryFlag
jmp continue


another_register_name_checkCladd_1_8:
    ; check if register is bx
    mov si, offset[operand_2 + 2]
    mov bl, 62h; ascii of b
    cmp bl, [si]
    jz bx_checkCladd_8
    jnz another_register_name_checkCladd_2_8

    bx_checkCladd_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareCladd_of_bx_1_8


another_compareCladd_of_bx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz cl_add_bh
jnz another_compareCladd_of_bx_2_8

cl_add_bh:
mov ah, byte ptr real_reg_cx_2
mov bh, byte ptr real_reg_bx_2 + 1
add ah, bh
mov byte ptr real_reg_cx_2, ah
jc setCarryFlag
jmp continue


another_compareCladd_of_bx_2_8:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz cl_add_bl
    jnz clcompare_BP_8


    cl_add_bl:
mov ah, byte ptr real_reg_cx_2
mov bh, byte ptr real_reg_bx_2
add ah, bh
mov byte ptr real_reg_cx_2, ah
jc setCarryFlag
jmp continue

; to check if register is BP or not
clcompareAdd_BP_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkCladd_2_8:
; check if register is cx
mov si, offset[operand_2 + 2]
mov bl, 63h; ascii of c
cmp bl, [si]
jz cX_checkCladd_8
jnz another_register_name_checkCladd_3_8


cx_checkCladd_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareCladd_of_cx_1_8


another_compareCladd_of_cx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz cl_add_ch
jnz another_compareCladd_of_cx_2_8

cl_add_ch:
mov ah, byte ptr real_reg_cx_2
mov bh, byte ptr real_reg_cx_2 + 1
add ah, bh
mov byte ptr real_reg_cx_2, ah
jc setCarryFlag
jmp continue


another_compareCladd_of_cx_2_8:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz cl_add_cl
    jnz error_register_name

    cl_add_cl:
mov ah, byte ptr real_reg_cx_2
mov bh, byte ptr real_reg_cx_2
add ah, bh
mov byte ptr real_reg_cx_2, ah
jc setCarryFlag
jmp continue


another_register_name_checkCladd_3_8:
    ; check if register is dx or dl or dh
    mov si, offset[operand_2 + 2]
    mov bl, 64h; ascii of d
    cmp bl, [si]
    jz dX_checkCladd_8
    jnz another_register_name_checkCladd_4_8


    dx_checkCladd_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareCladd_of_dx_1_8


another_compareCladd_of_dx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz cl_add_dh
jnz another_compareCladd_of_dx_2_8

cl_add_dh:
mov ah, byte ptr real_reg_cx_2
mov bh, byte ptr real_reg_dx_2 + 1
add ah, bh
mov byte ptr real_reg_cx_2, ah
jc setCarryFlag
jmp continue

another_compareCladd_of_dx_2_8:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz cl_add_dl
    jnz CompareAdd_cl_DI_8

    cl_add_dl:
mov ah, byte ptr real_reg_cx_2
mov bh, byte ptr real_reg_dx_2
add ah, bh
mov byte ptr real_reg_cx_2, ah
jc setCarryFlag
jmp continue

; to check if register is DI or not
compareAdd_cl_DI_8:
mov bl, 69h; ascii of i
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkCladd_4_8:
mov bl, 73h; ascii of s
cmp bl, [si]
jz checkAdd_cl_si_8
jnz error_register_name

checkAdd_cl_si_8:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz sizemismatch
jnz checkAdd_cl_sp_8

checkAdd_cl_sp_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_register_name
;;;;;;;;;;;;; cl_add_? ;;;;;;;;;;;;;;;;;;;;;;;;;;;; endOfcode
;;;;;;;;;;;; dh_add_? ;;;;;;;;;;;;;;;;;;;;;;;;;;; startofcode
dh_add_?:
    mov ah, 9
    mov dx, offset newline
    int 21h
    mov ah, 9
    mov dx, offset value_OR_register
    int 21h
    ; receive input from user
    mov ah, 0AH
    mov dx, offset vORr
    int 21h
    mov ah, vORr + 2
    mov al, 72h; ascii of r
    mov bl, 76h; ascii of v
    cmp ah, al
    jz getRegisterName_dh_add_op2
    cmp ah, bl
    jz getValue_dh_add_op2

    getValue_dh_add_op2:
mov ah, 9
mov dx, offset newline
int 21h

mov ah, 9
mov dx, offset Mess_value
int 21h

mov ah, 0AH
mov dx, offset value2
int 21h

mov al, value2 + 2
mov bh, 30h
cmp al, bh
jnz  checkaddDh_if_1_
jz   isdigitaddDh_

checkaddDh_if_1_:
mov bh, 31h
cmp al, bh
jnz  checkaddDh_if_2_
jz   isdigitaddDh_

checkaddDh_if_2_:
mov bh, 32h
cmp al, bh
jnz  checkaddDh_if_3_
jz   isdigitaddDh_

checkaddDh_if_3_:
mov bh, 33h
cmp al, bh
jnz  checkaddDh_if_4_
jz   isdigitaddDh_

checkaddDh_if_4_:
mov bh, 34h
cmp al, bh
jnz  checkaddDh_if_5_
jz   isdigitaddDh_


checkaddDh_if_5_:
mov bh, 35h
cmp al, bh
jnz  checkaddDh_if_6_
jz   isdigitaddDh_


checkaddDh_if_6_:
mov bh, 36h
cmp al, bh
jnz  checkaddDh_if_7_
jz   isdigitaddDh_


checkaddDh_if_7_:
mov bh, 37h
cmp al, bh
jnz  checkaddDh_if_8_
jz   isdigitaddDh_


checkaddDh_if_8_:
mov bh, 38h
cmp al, bh
jnz  checkaddDh_if_9_
jz   isdigitaddDh_


checkaddDh_if_9_:
mov bh, 39h
cmp al, bh
jnz  isletteraddDh_
jz   isdigitaddDh_




isdigitaddDh_:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkaddDh_2nd_char_

isletteraddDh_:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkaddDh_2nd_char_


checkaddDh_2nd_char_:
mov al, value2 + 3
mov bh, 30h
cmp al, bh
jnz  checkaddDh_if_1_1_
jz   isdigitaddDh_1_


checkaddDh_if_1_1_:
mov bh, 31h
cmp al, bh
jnz  checkaddDh_if_2_1_
jz   isdigitaddDh_1_


checkaddDh_if_2_1_:
mov bh, 32h
cmp al, bh
jnz  checkaddDh_if_3_1_
jz   isdigitaddDh_1_


checkaddDh_if_3_1_:
mov bh, 33h
cmp al, bh
jnz  checkaddDh_if_4_1_
jz   isdigitaddDh_1_


checkaddDh_if_4_1_:
mov bh, 34h
cmp al, bh
jnz  checkaddDh_if_5_1_
jz   isdigitaddDh_1_


checkaddDh_if_5_1_:
mov bh, 35h
cmp al, bh
jnz  checkaddDh_if_6_1_
jz   isdigitaddDh_1_


checkaddDh_if_6_1_:
mov bh, 36h
cmp al, bh
jnz  checkaddDh_if_7_1_
jz   isdigitaddDh_1_


checkaddDh_if_7_1_:
mov bh, 37h
cmp al, bh
jnz  checkaddDh_if_8_1_
jz   isdigitaddDh_1_


checkaddDh_if_8_1_:
mov bh, 38h
cmp al, bh
jnz  checkaddDh_if_9_1_
jz   isdigitaddDh_1_


checkaddDh_if_9_1_:
mov bh, 39h
cmp al, bh
jnz  isletteraddDh_1_
jz   isdigitaddDh_1_



isdigitaddDh_1_:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al
jmp  finish_checkaddDh_digits_and_letters_of_input_
isletteraddDh_1_:
sub al, 60h
add al, 9h
add ch, al
jmp  finish_checkaddDh_digits_and_letters_of_input_
finish_checkaddDh_digits_and_letters_of_input_:
mov ax, cx
mov dl, byte ptr real_reg_dx_2 + 1
add dl, ah
mov byte ptr real_reg_dx_2 + 1, dl
jc setCarryFlag
jmp continue
getRegisterName_dh_add_op2:
    mov ah, 9
    mov dx, offset newline
    int 21h
    mov ah, 9
    mov dx, offset Mess_operand_2
    int 21h
    ; receive input from user
    mov ah, 0AH
    mov dx, offset operand_2
    int 21h
    ; check if register is ax or al or ah
    mov si, offset[operand_2 + 2]
    mov bl, 61h; ascii of a
    cmp bl, [si]
    jz AX_checkDhadd_8
    jnz another_register_name_checkDhadd_1_8


    Ax_checkDhadd_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareDhadd_ax_1_8

another_compareDhadd_ax_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz dh_add_ah
jnz another_compareDhadd_of_ax_2_8


dh_add_ah:
mov ah, byte ptr real_reg_dx_2 + 1
mov bh, byte ptr real_reg_Ax_2 + 1
add ah, bh
mov byte ptr real_reg_dx_2 + 1, ah
jc setCarryFlag
jmp continue

another_compareDhadd_of_ax_2_8:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz dh_add_al
    jnz error_register_name

    dh_add_al:
mov ah, byte ptr real_reg_dx_2 + 1
mov bh, byte ptr real_reg_Ax_2
add ah, bh
mov byte ptr real_reg_dx_2 + 1, ah
jc setCarryFlag
jmp continue


another_register_name_checkDhadd_1_8:
    ; check if register is bx
    mov si, offset[operand_2 + 2]
    mov bl, 62h; ascii of b
    cmp bl, [si]
    jz bx_checkDhadd_8
    jnz another_register_name_checkDhadd_2_8

    bx_checkDhadd_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareDhadd_of_bx_1_8


another_compareDhadd_of_bx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz dh_add_bh
jnz another_compareDhadd_of_bx_2_8

dh_add_bh:
mov ah, byte ptr real_reg_dx_2 + 1
mov bh, byte ptr real_reg_bx_2 + 1
add ah, bh
mov byte ptr real_reg_dx_2 + 1, ah
jc setCarryFlag
jmp continue


another_compareDhadd_of_bx_2_8:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz dh_add_bl
    jnz compareDhadd_BP_8


    dh_add_bl:
mov ah, byte ptr real_reg_dx_2 + 1
mov bh, byte ptr real_reg_bx_2
add ah, bh
mov byte ptr real_reg_dx_2 + 1, ah
jc setCarryFlag
jmp continue

; to check if register is BP or not
compareDhadd_BP_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkDhadd_2_8:
; check if register is cx
mov si, offset[operand_2 + 2]
mov bl, 63h; ascii of c
cmp bl, [si]
jz cX_checkDhadd_8
jnz another_register_name_checkDhadd_3_8


cx_checkDhadd_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareDhadd_of_cx_1_8


another_compareDhadd_of_cx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz dh_add_ch
jnz another_compareDhadd_of_cx_2_8

dh_add_ch:
mov ah, byte ptr real_reg_dx_2 + 1
mov bh, byte ptr real_reg_cx_2 + 1
add ah, bh
mov byte ptr real_reg_dx_2 + 1, ah
jc setCarryFlag
jmp continue


another_compareDhadd_of_cx_2_8:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz dh_add_cl
    jnz error_register_name

    dh_add_cl:
mov ah, byte ptr real_reg_dx_2 + 1
mov bh, byte ptr real_reg_cx_2
add ah, bh
mov byte ptr real_reg_dx_2 + 1, ah
jc setCarryFlag
jmp continue


another_register_name_checkDhadd_3_8:
    ; check if register is dx or dl or dh
    mov si, offset[operand_2 + 2]
    mov bl, 64h; ascii of d
    cmp bl, [si]
    jz dX_checkDhadd_8
    jnz another_register_name_checkDhadd_4_8


    dx_checkDhadd_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareDhadd_of_dx_1_8


another_compareDhadd_of_dx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz dh_add_dh
jnz another_compareDhadd_of_dx_2_8

dh_add_dh:
mov ah, byte ptr real_reg_dx_2 + 1
mov bh, byte ptr real_reg_cx_2 + 1
add ah, bh
mov byte ptr real_reg_dx_2 + 1, ah
jc setCarryFlag
jmp continue

another_compareDhadd_of_dx_2_8:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz dh_add_dl
    jnz CompareDhadd_DI_8

    dh_add_dl:
mov ah, byte ptr real_reg_dx_2 + 1
mov bh, byte ptr real_reg_dx_2
add ah, bh
mov byte ptr real_reg_dx_2 + 1, ah
jc setCarryFlag
jmp continue

; to check if register is DI or not
compareDhadd_DI_8:
mov bl, 69h; ascii of i
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkDhadd_4_8:
mov bl, 73h; ascii of s
cmp bl, [si]
jz checkDhadd_si_8
jnz error_register_name

checkDhadd_si_8:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz sizemismatch
jnz checkDhadd_sp_8

checkDhadd_sp_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_register_name
;;;;;;;;;;; dh_add_? ;;;;;;;;;;;;;;;;;;;;;;;;;; endofcode

;;;;;;;;;;;;;;;;;;;;; dx_add_? ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; startofcode
dx_add_?:
    mov ah, 9
    mov dx, offset newline
    int 21h


    mov ah, 9
    mov dx, offset value_OR_register
    int 21h

    ; receive input from user
    mov ah, 0AH
    mov dx, offset vORr
    int 21h
    mov ah, vORr + 2
    mov al, 72h; ascii of r
    mov bl, 76h; ascii of v
    cmp ah, al
    jz getRegisterName_dx_add_op2
    cmp ah, bl
    jz getValue_dx_add_op2



getValue_dx_add_op2:
mov ah, 9
mov dx, offset newline
int 21h

mov ah, 9
mov dx, offset Mess_value
int 21h

mov ah, 0AH
mov dx, offset value
int 21h

mov al, value + 2
mov bh, 30h
cmp al, bh
jnz  checkdxAdd_if_1_B
jz   isdigitdxAdd_B

checkdxAdd_if_1_B:
mov bh, 31h
cmp al, bh
jnz  checkdxAdd_if_2_B
jz   isdigitdxAdd_B

checkdxAdd_if_2_B:
mov bh, 32h
cmp al, bh
jnz  checkdxAdd_if_3_B
jz   isdigitdxAdd_B

checkdxAdd_if_3_B:
mov bh, 33h
cmp al, bh
jnz  checkdxAdd_if_4_B
jz   isdigitdxAdd_B

checkdxAdd_if_4_B:
mov bh, 34h
cmp al, bh
jnz  checkdxAdd_if_5_B
jz   isdigitdxAdd_B


checkdxAdd_if_5_B:
mov bh, 35h
cmp al, bh
jnz  checkdxAdd_if_6_B
jz   isdigitdxAdd_B


checkdxAdd_if_6_B:
mov bh, 36h
cmp al, bh
jnz  checkdxAdd_if_7_B
jz   isdigitdxAdd_B


checkdxAdd_if_7_B:
mov bh, 37h
cmp al, bh
jnz  checkdxAdd_if_8_B
jz   isdigitdxAdd_B


checkdxAdd_if_8_B:
mov bh, 38h
cmp al, bh
jnz  checkdxAdd_if_9_B
jz   isdigitdxAdd_B


checkdxAdd_if_9_B:
mov bh, 39h
cmp al, bh
jnz  isletterdxAdd_B
jz   isdigitdxAdd_B




isdigitdxAdd_B:
add al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkdxAdd_2nd_char_B

isletterdxAdd_B:
add al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkdxAdd_2nd_char_B


checkdxAdd_2nd_char_B:
mov al, value + 3
mov bh, 30h
cmp al, bh
jnz  checkdxAdd_if_1_B_1
jz   isdigitdxAdd_B_1


checkdxAdd_if_1_B_1:
mov bh, 31h
cmp al, bh
jnz  checkdxAdd_if_2_B_1
jz   isdigitdxAdd_B_1


checkdxAdd_if_2_B_1:
mov bh, 32h
cmp al, bh
jnz  checkdxAdd_if_3_B_1
jz   isdigitdxAdd_B_1


checkdxAdd_if_3_B_1:
mov bh, 33h
cmp al, bh
jnz  checkdxAdd_if_4_B_1
jz   isdigitdxAdd_B_1


checkdxAdd_if_4_B_1:
mov bh, 34h
cmp al, bh
jnz  checkdxAdd_if_5_B_1
jz   isdigitdxAdd_B_1


checkdxAdd_if_5_B_1:
mov bh, 35h
cmp al, bh
jnz  checkdxAdd_if_6_B_1
jz   isdigitdxAdd_B_1


checkdxAdd_if_6_B_1:
mov bh, 36h
cmp al, bh
jnz  checkdxAdd_if_7_B_1
jz   isdigitdxAdd_B_1


checkdxAdd_if_7_B_1:
mov bh, 37h
cmp al, bh
jnz  checkdxAdd_if_8_B_1
jz   isdigitdxAdd_B_1


checkdxAdd_if_8_B_1:
mov bh, 38h
cmp al, bh
jnz  checkdxAdd_if_9_B_1
jz   isdigitdxAdd_B_1


checkdxAdd_if_9_B_1:
mov bh, 39h
cmp al, bh
jnz  isletterdxAdd_B_1
jz   isdigitdxAdd_B_1



isdigitdxAdd_B_1:; reg_Ax_1 + 3 is unit
add al, 30h
add ch, al


jmp  checkdxAdd_3rd_char_B


isletterdxAdd_B_1:
add al, 60h
add al, 9h
add ch, al

jmp  checkdxAdd_3rd_char_B
checkdxAdd_3rd_char_B:
mov al, value + 4
mov bh, 30h
cmp al, bh
jnz  checkdxAdd_if_1_B_2
jz   isdigitdxAdd_B_2

checkdxAdd_if_1_B_2:
mov bh, 31h
cmp al, bh
jnz  checkdxAdd_if_2_B_2
jz   isdigitdxAdd_B_2

checkdxAdd_if_2_B_2:
mov bh, 32h
cmp al, bh
jnz  checkdxAdd_if_3_B_2
jz   isdigitdxAdd_B_2

checkdxAdd_if_3_B_2:
mov bh, 33h
cmp al, bh
jnz  checkdxAdd_if_4_B_2
jz   isdigitdxAdd_B_2

checkdxAdd_if_4_B_2:
mov bh, 34h
cmp al, bh
jnz  checkdxAdd_if_5_B_2
jz   isdigitdxAdd_B_2


checkdxAdd_if_5_B_2:
mov bh, 35h
cmp al, bh
jnz  checkdxAdd_if_6_B_2
jz   isdigitdxAdd_B_2

checkdxAdd_if_6_B_2:
mov bh, 36h
cmp al, bh
jnz  checkdxAdd_if_7_B_2
jz   isdigitdxAdd_B_2


checkdxAdd_if_7_B_2:
mov bh, 37h
cmp al, bh
jnz  checkdxAdd_if_8_B_2
jz   isdigitdxAdd_B_2


checkdxAdd_if_8_B_2:
mov bh, 38h
cmp al, bh
jnz  checkdxAdd_if_9_B_2
jz   isdigitdxAdd_B_2


checkdxAdd_if_9_B_2:
mov bh, 39h
cmp al, bh
jnz  isletterdxAdd_B_2
jz   isdigitdxAdd_B_2



isdigitdxAdd_B_2:; reg_Ax_1 + 4 is tens
add al, 30h
mov bl, 10h
mul bl
mov cl, al


jmp  checkdxAdd_4th_char_B


isletterdxAdd_B_2:
add al, 60h
add al, 9h
mov bl, 10h
mul bl
mov cl, al


checkdxAdd_4th_char_B:

mov al, value + 5
mov bh, 30h
cmp al, bh
jnz  checkdxAdd_if_1_B_3
jz   isdigitdxAdd_B_3


checkdxAdd_if_1_B_3:
mov bh, 31h
cmp al, bh
jnz  checkdxAdd_if_2_B_3
jz   isdigitdxAdd_B_3


checkdxAdd_if_2_B_3:
mov bh, 32h
cmp al, bh
jnz  checkdxAdd_if_3_B_3
jz   isdigitdxAdd_B_3


checkdxAdd_if_3_B_3:
mov bh, 33h
cmp al, bh
jnz  checkdxAdd_if_4_B_3
jz   isdigitdxAdd_B_3


checkdxAdd_if_4_B_3:
mov bh, 34h
cmp al, bh
jnz  checkdxAdd_if_5_B_3
jz   isdigitdxAdd_B_3


checkdxAdd_if_5_B_3:
mov bh, 35h
cmp al, bh
jnz  checkdxAdd_if_6_B_3
jz   isdigitdxAdd_B_3


checkdxAdd_if_6_B_3:
mov bh, 36h
cmp al, bh
jnz  checkdxAdd_if_7_B_3
jz   isdigitdxAdd_B_3

checkdxAdd_if_7_B_3:
mov bh, 37h
cmp al, bh
jnz  checkdxAdd_if_8_B_3
jz   isdigitdxAdd_B_3


checkdxAdd_if_8_B_3:
mov bh, 38h
cmp al, bh
jnz  checkdxAdd_if_9_B_3
jz   isdigitdxAdd_B_3

checkdxAdd_if_9_B_3:
mov bh, 39h
cmp al, bh
jnz  isletterdxAdd_B_3
jz   isdigitdxAdd_B_3



isdigitdxAdd_B_3:; reg_Ax_1 + 5 is unit
add al, 30h
add cl, al


jmp  finish_checkdxAdd_digits_and_letters_of_input_dx

isletterdxAdd_B_3:
add al, 60h
add al, 9h
add cl, al


finish_checkdxAdd_digits_and_letters_of_input_dx:

mov ax, cx


mov bx, real_reg_dx_2
add bx, ax
mov real_reg_dx_2, bx
jc setCarryFlag
jmp continue

getRegisterName_dx_add_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_operand_2
int 21h
; receive input from user
mov ah, 0AH
mov dx, offset operand_2
int 21h
; check if register is ax or al or ah
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkDxadd_4
jnz another_register_name_checkDxadd_1_4


Ax_checkDxadd_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz dx_add_ax
jnz another_compareDxadd_of_ax_1_7


dx_add_ax:
mov ax, real_reg_dx_2
mov bx, real_reg_ax_2
add ax, bx
mov real_reg_dx_2, ax
jc setCarryFlag
jmp continue

another_compareDxadd_of_ax_1_7:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareDxadd_of_ax_2_7

    another_compareDxadd_of_ax_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz another_register_name_checkDxadd_1_4



another_register_name_checkDxadd_1_4:
; check if register is bx
mov si, offset[operand_2 + 2]
mov bl, 62h; ascii of b
cmp bl, [si]
jz bx_checkDxadd_4
jnz another_register_name_checkDxadd_2_4

bx_checkDxadd_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz dx_add_bx
jnz another_compareDxadd_of_cx_bx_1_4


dx_add_bx:
mov ax, real_reg_dx_2
mov bx, real_reg_bx_2
add ax, bx
mov real_reg_dx_2, ax
jc setCarryFlag
jmp continue

another_compareDxadd_of_cx_bx_1_4:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareDxadd_of_bx_2_4

    another_compareDxadd_of_bx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareDxadd_BP_4




; to check if register is BP or not
compareDxadd_BP_4:
mov bl, 70h; ascii of p
cmp bl, [si]
jz dx_add_BP
jnz error_register_name

dx_add_BP:
mov ax, real_reg_dx_2
mov bx, real_reg_BP_2
add ax, bx
mov real_reg_dx_2, ax
jc setCarryFlag
jmp continue

another_register_name_checkDxadd_2_4:
    ; check if register is cx
    mov si, offset[operand_2 + 2]
    mov bl, 63h; ascii of c
    cmp bl, [si]
    jz cX_checkDxadd_4
    jnz another_register_name_checkDxadd_3_4


    cx_checkDxadd_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz dx_add_cx
jnz error_register_name

dx_add_cx:
mov ax, real_reg_dx_2
mov bx, real_reg_cx_2
add ax, bx
mov real_reg_dx_2, ax
jc setCarryFlag
jmp continue

another_compareDxadd_of_cx_1_4:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareDxadd_of_cx_2_4

    jmp continue

    another_compareDxadd_of_cx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkDxadd_3_4:
; check if register is dx or dl or dh
mov si, offset[operand_2 + 2]
mov bl, 64h; ascii of d
cmp bl, [si]
jz dX_checkDxadd_4
jnz another_register_name_checkDxadd_4_4


dx_checkDxadd_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz dx_add_dx
jnz another_compareDxadd_of_dx_1_4

dx_add_dx:
mov ax, real_reg_dx_2
mov bx, real_reg_dx_2
add ax, bx
mov real_reg_dx_2, ax
jc setCarryFlag
jmp continue

another_compareDxadd_of_dx_1_4:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareDxadd_of_dx_2_4

    another_compareDxadd_of_dx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareDxadd_DI_4

; to check if register is DI or not
compareDxadd_DI_4:
mov bl, 69h; ascii of i
cmp bl, [si]
jz dx_add_DI
jnz error_register_name

dx_add_DI:
mov ax, real_reg_dx_2
mov bx, real_reg_di_2
add ax, bx
mov real_reg_dx_2, ax
jc setCarryFlag
jmp continue

another_register_name_checkDxadd_4_4:
    mov bl, 73h; ascii of s
    cmp bl, [si]
    jz checkDxadd_si_4
    jnz error_register_name

    checkDxadd_si_4:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz dx_add_si
jnz checkDxadd_sp_4

dx_add_si:
mov ax, real_reg_dx_2
mov bx, real_reg_si_2
add ax, bx
mov real_reg_dx_2, ax
jc setCarryFlag
jmp continue

checkDxadd_sp_4:
    mov bl, 70h; ascii of p
    cmp bl, [si]
    jz dx_add_sp
    jnz error_register_name

    dx_add_sp:
mov ax, real_reg_dx_2
mov bx, real_reg_sp_2
add ax, bx
mov real_reg_dx_2, ax
jc setCarryFlag
jmp continue
;;;;;;;;;;;;;;;;;;;;; dx_add_? ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; endofcode
;;;;;;;;;;;;;;;;;; dl_add_? ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; startofcode
dl_add_?:
    mov ah, 9
    mov dx, offset newline
    int 21h
    mov ah, 9
    mov dx, offset value_OR_register
    int 21h
    ; receive input from user
    mov ah, 0AH
    mov dx, offset vORr
    int 21h
    mov ah, vORr + 2
    mov al, 72h; ascii of r
    mov bl, 76h; ascii of v
    cmp ah, al
    jz getRegisterName_dl_add_op2
    cmp ah, bl
    jz getValue_dl_add_op2
    getValue_dl_add_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_value
int 21h
mov ah, 0AH
mov dx, offset value2
int 21h
mov al, value2 + 2
mov bh, 30h
cmp al, bh
jnz  checkaddDl_if_1_
jz   isdigitaddDl_

checkaddDl_if_1_:
mov bh, 31h
cmp al, bh
jnz  checkaddDl_if_2_
jz   isdigitaddDl_

checkaddDl_if_2_:
mov bh, 32h
cmp al, bh
jnz  checkaddDl_if_3_
jz   isdigitaddDl_

checkaddDl_if_3_:
mov bh, 33h
cmp al, bh
jnz  checkaddDl_if_4_
jz   isdigitaddDl_

checkaddDl_if_4_:
mov bh, 34h
cmp al, bh
jnz  checkaddDl_if_5_
jz   isdigitaddDl_


checkaddDl_if_5_:
mov bh, 35h
cmp al, bh
jnz  checkaddDl_if_6_
jz   isdigitaddDl_


checkaddDl_if_6_:
mov bh, 36h
cmp al, bh
jnz  checkaddDl_if_7_
jz   isdigitaddDl_


checkaddDl_if_7_:
mov bh, 37h
cmp al, bh
jnz  checkaddDl_if_8_
jz   isdigitaddDl_


checkaddDl_if_8_:
mov bh, 38h
cmp al, bh
jnz  checkaddDl_if_9_
jz   isdigitaddDl_


checkaddDl_if_9_:
mov bh, 39h
cmp al, bh
jnz  isletteraddDl_
jz   isdigitaddDl_




isdigitaddDl_:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkaddDl_2nd_char_

isletteraddDl_:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkaddDl_2nd_char_


checkaddDl_2nd_char_:
mov al, value2 + 3
mov bh, 30h
cmp al, bh
jnz  checkaddDl_if_1_1_
jz   isdigitaddDl_1_


checkaddDl_if_1_1_:
mov bh, 31h
cmp al, bh
jnz  checkaddDl_if_2_1_
jz   isdigitaddDl_1_


checkaddDl_if_2_1_:
mov bh, 32h
cmp al, bh
jnz  checkaddDl_if_3_1_
jz   isdigitaddDl_1_


checkaddDl_if_3_1_:
mov bh, 33h
cmp al, bh
jnz  checkaddDl_if_4_1_
jz   isdigitaddDl_1_


checkaddDl_if_4_1_:
mov bh, 34h
cmp al, bh
jnz  checkaddDl_if_5_1_
jz   isdigitaddDl_1_


checkaddDl_if_5_1_:
mov bh, 35h
cmp al, bh
jnz  checkaddDl_if_6_1_
jz   isdigitaddDl_1_


checkaddDl_if_6_1_:
mov bh, 36h
cmp al, bh
jnz  checkaddDl_if_7_1_
jz   isdigitaddDl_1_


checkaddDl_if_7_1_:
mov bh, 37h
cmp al, bh
jnz  checkaddDl_if_8_1_
jz   isdigitaddDl_1_


checkaddDl_if_8_1_:
mov bh, 38h
cmp al, bh
jnz  checkaddDl_if_9_1_
jz   isdigitaddDl_1_


checkaddDl_if_9_1_:
mov bh, 39h
cmp al, bh
jnz  isletteraddDl_1_
jz   isdigitaddDl_1_



isdigitaddDl_1_:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  finish_checkaddDl_digits_and_letters_of_input_


isletteraddDl_1_:
sub al, 60h
add al, 9h
add ch, al

jmp  finish_checkaddDl_digits_and_letters_of_input_


finish_checkaddDl_digits_and_letters_of_input_:

mov ax, cx
mov dl, byte ptr real_reg_dx_2
add dl, ah
mov byte ptr real_reg_dx_2, dl
jc setCarryFlag
jmp continue
getRegisterName_dl_add_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_operand_2
int 21h
; receive input from user
mov ah, 0AH
mov dx, offset operand_2
int 21h
; check if register is ax or al or ah
mov si, offset[operand_2 + 2]
mov bl, 61h; ascii of a
cmp bl, [si]
jz AX_checkDladd_8
jnz another_register_name_checkDladd_1_8


Ax_checkDladd_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareDladd_ax_1_8

another_compareDladd_ax_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz dl_add_ah
jnz another_compareDladd_of_ax_2_8


dl_add_ah:
mov ah, byte ptr real_reg_dx_2
mov bh, byte ptr real_reg_Ax_2 + 1
add ah, bh
mov byte ptr real_reg_dx_2, ah
jc setCarryFlag
jmp continue

another_compareDladd_of_ax_2_8:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz dl_add_al
    jnz error_register_name

    dl_add_al:
mov ah, byte ptr real_reg_dx_2
mov bh, byte ptr real_reg_Ax_2
add ah, bh
mov byte ptr real_reg_dx_2, ah
jc setCarryFlag
jmp continue


another_register_name_checkDladd_1_8:
    ; check if register is bx
    mov si, offset[operand_2 + 2]
    mov bl, 62h; ascii of b
    cmp bl, [si]
    jz bx_checkDladd_8
    jnz another_register_name_checkDladd_2_8

    bx_checkDladd_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareDladd_of_bx_1_8


another_compareDladd_of_bx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz dl_add_bh
jnz another_compareDladd_of_bx_2_8

dl_add_bh:
mov ah, byte ptr real_reg_dx_2
mov bh, byte ptr real_reg_bx_2 + 1
add ah, bh
mov byte ptr real_reg_dx_2, ah
jc setCarryFlag
jmp continue


another_compareDladd_of_bx_2_8:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz dl_add_bl
    jnz compareDladd_BP_8


    dl_add_bl:
mov ah, byte ptr real_reg_dx_2
mov bh, byte ptr real_reg_bx_2
add ah, bh
mov byte ptr real_reg_dx_2, ah
jc setCarryFlag
jmp continue

; to check if register is BP or not
compareDladd_BP_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkDladd_2_8:
; check if register is cx
mov si, offset[operand_2 + 2]
mov bl, 63h; ascii of c
cmp bl, [si]
jz cX_checkDladd_8
jnz another_register_name_checkDladd_3_8


cx_checkDladd_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareDladd_of_cx_1_8


another_compareDladd_of_cx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz dl_add_ch
jnz another_compareDladd_of_cx_2_8

dl_add_ch:
mov ah, byte ptr real_reg_dx_2
mov bh, byte ptr real_reg_cx_2 + 1
add ah, bh
mov byte ptr real_reg_dx_2, ah
jc setCarryFlag
jmp continue


another_compareDladd_of_cx_2_8:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz dl_add_cl
    jnz error_register_name

    dl_add_cl:
mov ah, byte ptr real_reg_dx_2
mov bh, byte ptr real_reg_cx_2
add ah, bh
mov byte ptr real_reg_dx_2, ah
jc setCarryFlag
jmp continue


another_register_name_checkDladd_3_8:
    ; check if register is dx or dl or dh
    mov si, offset[operand_2 + 2]
    mov bl, 64h; ascii of d
    cmp bl, [si]
    jz dX_checkDladd_8
    jnz another_register_name_checkDladd_4_8


    dx_checkDladd_8:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sizemismatch
jnz another_compareDladd_of_dx_1_8


another_compareDladd_of_dx_1_8:
mov bl, 68h; ascii of h
cmp bl, [si]
jz dl_add_dh
jnz another_compareDladd_of_dx_2_8

dl_add_dh:
mov ah, byte ptr real_reg_dx_2
mov bh, byte ptr real_reg_dx_2 + 1
add ah, bh
mov byte ptr real_reg_dx_2, ah
jc setCarryFlag
jmp continue

another_compareDladd_of_dx_2_8:
    mov bl, 6ch; ascii of l
    cmp bl, [si]
    jz dl_add_dl
    jnz compareDladdDI_8

    dl_add_dl:
mov ah, byte ptr real_reg_dx_2
mov bh, byte ptr real_reg_dx_2
add ah, bh
mov byte ptr real_reg_dx_2, ah
jc setCarryFlag
jmp continue

; to check if register is DI or not
compareDladdDI_8:
mov bl, 69h; ascii of i
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkDladd_4_8:
mov bl, 73h; ascii of s
cmp bl, [si]
jz checkDladd_si_8
jnz error_register_name

checkDladd_si_8:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz sizemismatch
jnz checkDladd_sp_8

checkDladd_sp_8:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sizemismatch
jnz error_register_name
;;;;;;;;;;;;;; dl_add_? ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; endofcode
;;;;;;;;;;;;; di_add_? ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; startofcode
di_add_?:
    mov ah, 9
    mov dx, offset newline
    int 21h
    mov ah, 9
    mov dx, offset value_OR_register
    int 21h
    ; receive input from user
    mov ah, 0AH
    mov dx, offset vORr
    int 21h
    mov ah, vORr + 2
    mov al, 72h; ascii of r
    mov bl, 76h; ascii of v
    cmp ah, al
    jz getRegisterName_di_add_op2
    cmp ah, bl
    jz getValue_di_add_op2
    getValue_di_add_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_value
int 21h
mov ah, 0AH
mov dx, offset value
int 21h
mov al, value2 + 2
mov bh, 30h
cmp al, bh
jnz  checkaddDi_if_1_
jz   isdigitaddDi_

checkaddDi_if_1_:
mov bh, 31h
cmp al, bh
jnz  checkaddDi_if_2_
jz   isdigitaddDi_

checkaddDi_if_2_:
mov bh, 32h
cmp al, bh
jnz  checkaddDi_if_3_
jz   isdigitaddDi_

checkaddDi_if_3_:
mov bh, 33h
cmp al, bh
jnz  checkaddDi_if_4_
jz   isdigitaddDi_

checkaddDi_if_4_:
mov bh, 34h
cmp al, bh
jnz  checkaddDi_if_5_
jz   isdigitaddDi_


checkaddDi_if_5_:
mov bh, 35h
cmp al, bh
jnz  checkaddDi_if_6_
jz   isdigitaddDi_


checkaddDi_if_6_:
mov bh, 36h
cmp al, bh
jnz  checkaddDi_if_7_
jz   isdigitaddDi_


checkaddDi_if_7_:
mov bh, 37h
cmp al, bh
jnz  checkaddDi_if_8_
jz   isdigitaddDi_


checkaddDi_if_8_:
mov bh, 38h
cmp al, bh
jnz  checkaddDi_if_9_
jz   isdigitaddDi_


checkaddDi_if_9_:
mov bh, 39h
cmp al, bh
jnz  isletteraddDi_
jz   isdigitaddDi_




isdigitaddDi_:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkaddDi_2nd_char_

isletteraddDi_:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkaddDi_2nd_char_


checkaddDi_2nd_char_:
mov al, value2 + 3
mov bh, 30h
cmp al, bh
jnz  checkaddDi_if_1_1_
jz   isdigitaddDi_1_


checkaddDi_if_1_1_:
mov bh, 31h
cmp al, bh
jnz  checkaddDi_if_2_1_
jz   isdigitaddDi_1_


checkaddDi_if_2_1_:
mov bh, 32h
cmp al, bh
jnz  checkaddDi_if_3_1_
jz   isdigitaddDi_1_


checkaddDi_if_3_1_:
mov bh, 33h
cmp al, bh
jnz  checkaddDi_if_4_1_
jz   isdigitaddDi_1_


checkaddDi_if_4_1_:
mov bh, 34h
cmp al, bh
jnz  checkaddDi_if_5_1_
jz   isdigitaddDi_1_


checkaddDi_if_5_1_:
mov bh, 35h
cmp al, bh
jnz  checkaddDi_if_6_1_
jz   isdigitaddDi_1_


checkaddDi_if_6_1_:
mov bh, 36h
cmp al, bh
jnz  checkaddDi_if_7_1_
jz   isdigitaddDi_1_


checkaddDi_if_7_1_:
mov bh, 37h
cmp al, bh
jnz  checkaddDi_if_8_1_
jz   isdigitaddDi_1_


checkaddDi_if_8_1_:
mov bh, 38h
cmp al, bh
jnz  checkaddDi_if_9_1_
jz   isdigitaddDi_1_


checkaddDi_if_9_1_:
mov bh, 39h
cmp al, bh
jnz  isletteraddDi_1_
jz   isdigitaddDi_1_
isdigitaddDi_1_: ; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al
jmp  finish_checkaddDi_digits_and_letters_of_input_
isletteraddDi_1_:
sub al, 60h
add al, 9h
add ch, al
jmp  finish_checkaddDi_digits_and_letters_of_input_
finish_checkaddDi_digits_and_letters_of_input_:
mov ax, cx
mov dx, real_reg_di_2
add dx, ax
mov real_reg_di_2, dx
jc setCarryFlag
jmp continue
getRegisterName_di_add_op2:
    mov ah, 9
    mov dx, offset newline
    int 21h
    mov ah, 9
    mov dx, offset Mess_operand_2
    int 21h
    ; receive input from user
    mov ah, 0AH
    mov dx, offset operand_2
    int 21h
    ; check if register is ax or al or ah
    mov si, offset[operand_2 + 2]
    mov bl, 61h; ascii of a
    cmp bl, [si]
    jz AX_checkDiadd_4
    jnz another_register_name_checkDiadd_1_4
    Ax_checkDiadd_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz di_add_ax
jnz another_compareDiadd_of_ax_1_7
di_add_ax:
mov ax, real_reg_di_2
mov bx, real_reg_ax_2
add ax, bx
mov real_reg_di_2, ax
jc setCarryFlag
jmp continue

another_compareDiadd_of_ax_1_7:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareDiadd_of_ax_2_7

    another_compareDiadd_of_ax_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz another_register_name_checkDiadd_1_4



another_register_name_checkDiadd_1_4:
; check if register is bx
mov si, offset[operand_2 + 2]
mov bl, 62h; ascii of b
cmp bl, [si]
jz bx_checkDiadd_4
jnz another_register_name_checkDiadd_2_4

bx_checkDiadd_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz di_add_bx
jnz another_compareDiadd_of_cx_bx_1_4


di_add_bx:
mov ax, real_reg_di_2
mov bx, real_reg_bx_2
add ax, bx
mov real_reg_di_2, ax
jc setCarryFlag
jmp continue

another_compareDiadd_of_cx_bx_1_4:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareDiadd_of_bx_2_4

    another_compareDiadd_of_bx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareDiadd_BP_4




; to check if register is BP or not
compareDiadd_BP_4:
mov bl, 70h; ascii of p
cmp bl, [si]
jz di_add_BP
jnz error_register_name

di_add_BP:
mov ax, real_reg_di_2
mov bx, real_reg_BP_2
add ax, bx
mov real_reg_di_2, ax
jc setCarryFlag
jmp continue

another_register_name_checkDiadd_2_4:
    ; check if register is cx
    mov si, offset[operand_2 + 2]
    mov bl, 63h; ascii of c
    cmp bl, [si]
    jz cX_checkDiadd_4
    jnz another_register_name_checkDiadd_3_4


    cx_checkDiadd_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz di_add_cx
jnz error_register_name

di_add_cx:
mov ax, real_reg_di_2
mov bx, real_reg_cx_2
add ax, bx
mov real_reg_di_2, ax
jc setCarryFlag
jmp continue

another_compareDiadd_of_cx_1_4:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareDiadd_of_cx_2_4

    jmp continue

    another_compareDiadd_of_cx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkDiadd_3_4:
; check if register is dx or dl or dh
mov si, offset[operand_2 + 2]
mov bl, 64h; ascii of d
cmp bl, [si]
jz dX_checkDiadd_4
jnz another_register_name_checkDiadd_4_4


dx_checkDiadd_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz di_add_dx
jnz another_compareDiadd_of_dx_1_4

di_add_dx:
mov ax, real_reg_di_2
mov bx, real_reg_dx_2
add ax, bx
mov real_reg_di_2, ax
jc setCarryFlag
jmp continue

another_compareDiadd_of_dx_1_4:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareDiadd_of_dx_2_4

    another_compareDiadd_of_dx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareDiadd_DI_4

; to check if register is DI or not
compareDiadd_DI_4:
mov bl, 69h; ascii of i
cmp bl, [si]
jz di_add_DI
jnz error_register_name

di_add_DI:
mov ax, real_reg_di_2
mov bx, real_reg_di_2
add ax, bx
mov real_reg_di_2, ax
jc setCarryFlag
jmp continue

another_register_name_checkDiadd_4_4:
    mov bl, 73h; ascii of s
    cmp bl, [si]
    jz checkDiadd_si_4
    jnz error_register_name

    checkDiadd_si_4:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz di_add_si
jnz checkDiadd_sp_4

di_add_si:
mov ax, real_reg_di_2
mov bx, real_reg_si_2
add ax, bx
mov real_reg_di_2, ax
jc setCarryFlag
jmp continue

checkDiadd_sp_4:
    mov bl, 70h; ascii of p
    cmp bl, [si]
    jz di_add_sp
    jnz error_register_name

    di_add_sp:
mov ax, real_reg_di_2
mov bx, real_reg_sp_2
add ax, bx
mov real_reg_di_2, ax
jc setCarryFlag
jmp continue
;;;;;;;;;;;; di_add_? ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; endofcode

;;;;;;;;;;; si_add_? ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; startofcode
si_add_?:
    mov ah, 9
    mov dx, offset newline
    int 21h
    mov ah, 9
    mov dx, offset value_OR_register
    int 21h
    ; receive input from user
    mov ah, 0AH
    mov dx, offset vORr
    int 21h
    mov ah, vORr + 2
    mov al, 72h; ascii of r
    mov bl, 76h; ascii of v
    cmp ah, al
    jz getRegisterName_si_add_op2
    cmp ah, bl
    jz getValue_si_add_op2
    getValue_si_add_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_value
int 21h
mov ah, 0AH
mov dx, offset value
int 21h

mov al, value + 2
mov bh, 30h
cmp al, bh
jnz  checkaddSi_if_1_B
jz   isdigitaddSi_B

checkaddSi_if_1_B:
mov bh, 31h
cmp al, bh
jnz  checkaddSi_if_2_B
jz   isdigitaddSi_B

checkaddSi_if_2_B:
mov bh, 32h
cmp al, bh
jnz  checkaddSi_if_3_B
jz   isdigitaddSi_B

checkaddSi_if_3_B:
mov bh, 33h
cmp al, bh
jnz  checkaddSi_if_4_B
jz   isdigitaddSi_B

checkaddSi_if_4_B:
mov bh, 34h
cmp al, bh
jnz  checkaddSi_if_5_B
jz   isdigitaddSi_B


checkaddSi_if_5_B:
mov bh, 35h
cmp al, bh
jnz  checkaddSi_if_6_B
jz   isdigitaddSi_B


checkaddSi_if_6_B:
mov bh, 36h
cmp al, bh
jnz  checkaddSi_if_7_B
jz   isdigitaddSi_B


checkaddSi_if_7_B:
mov bh, 37h
cmp al, bh
jnz  checkaddSi_if_8_B
jz   isdigitaddSi_B


checkaddSi_if_8_B:
mov bh, 38h
cmp al, bh
jnz  checkaddSi_if_9_B
jz   isdigitaddSi_B


checkaddSi_if_9_B:
mov bh, 39h
cmp al, bh
jnz  isletteraddSi_B
jz   isdigitaddSi_B




isdigitaddSi_B:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkaddSi_2nd_char_B

isletteraddSi_B:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkaddSi_2nd_char_B


checkaddSi_2nd_char_B:
mov al, value + 3
mov bh, 30h
cmp al, bh
jnz  checkaddSi_if_1_B_1
jz   isdigitaddSi_B_1


checkaddSi_if_1_B_1:
mov bh, 31h
cmp al, bh
jnz  checkaddSi_if_2_B_1
jz   isdigitaddSi_B_1


checkaddSi_if_2_B_1:
mov bh, 32h
cmp al, bh
jnz  checkaddSi_if_3_B_1
jz   isdigitaddSi_B_1


checkaddSi_if_3_B_1:
mov bh, 33h
cmp al, bh
jnz  checkaddSi_if_4_B_1
jz   isdigitaddSi_B_1


checkaddSi_if_4_B_1:
mov bh, 34h
cmp al, bh
jnz  checkaddSi_if_5_B_1
jz   isdigitaddSi_B_1


checkaddSi_if_5_B_1:
mov bh, 35h
cmp al, bh
jnz  checkaddSi_if_6_B_1
jz   isdigitaddSi_B_1


checkaddSi_if_6_B_1:
mov bh, 36h
cmp al, bh
jnz  checkaddSi_if_7_B_1
jz   isdigitaddSi_B_1


checkaddSi_if_7_B_1:
mov bh, 37h
cmp al, bh
jnz checkaddSi_if_8_B_1
jz  isdigitaddSi_B_1


checkaddSi_if_8_B_1:
mov bh, 38h
cmp al, bh
jnz  checkaddSi_if_9_B_1
jz   isdigitaddSi_B_1


checkaddSi_if_9_B_1:
mov bh, 39h
cmp al, bh
jnz  isletteraddSi_B_1
jz   isdigitaddSi_B_1



isdigitaddSi_B_1:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  checkaddSi_3rd_char_B


isletteraddSi_B_1:
sub al, 60h
add al, 9h
add ch, al

jmp  checkaddSi_3rd_char_B
checkaddSi_3rd_char_B:
mov al, value + 4
mov bh, 30h
cmp al, bh
jnz  checkaddSi_if_1_B_2
jz   isdigitaddSi_B_2

checkaddSi_if_1_B_2:
mov bh, 31h
cmp al, bh
jnz  checkaddSi_if_2_B_2
jz   isdigitaddSi_B_2

checkaddSi_if_2_B_2:
mov bh, 32h
cmp al, bh
jnz  checkaddSi_if_3_B_2
jz   isdigitaddSi_B_2

checkaddSi_if_3_B_2:
mov bh, 33h
cmp al, bh
jnz  checkaddSi_if_4_B_2
jz   isdigitaddSi_B_2

checkaddSi_if_4_B_2:
mov bh, 34h
cmp al, bh
jnz  checkaddSi_if_5_B_2
jz   isdigitaddSi_B_2


checkaddSi_if_5_B_2:
mov bh, 35h
cmp al, bh
jnz  checkaddSi_if_6_B_2
jz   isdigitaddSi_B_2

checkaddSi_if_6_B_2:
mov bh, 36h
cmp al, bh
jnz  checkaddSi_if_7_B_2
jz   isdigitaddSi_B_2


checkaddSi_if_7_B_2:
mov bh, 37h
cmp al, bh
jnz  checkaddSi_if_8_B_2
jz   isdigitaddSi_B_2


checkaddSi_if_8_B_2:
mov bh, 38h
cmp al, bh
jnz  checkaddSi_if_9_B_2
jz   isdigitaddSi_B_2


checkaddSi_if_9_B_2:
mov bh, 39h
cmp al, bh
jnz  isletteraddSi_B_2
jz   isdigitaddSi_B_2



isdigitaddSi_B_2:; reg_Ax_1 + 4 is tens
sub al, 30h
mov bl, 10h
mul bl
mov cl, al


jmp  checkaddSi_4th_char_B


isletteraddSi_B_2:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov cl, al


checkaddSi_4th_char_B:

mov al, value + 5
mov bh, 30h
cmp al, bh
jnz  checkaddSi_if_1_B_3
jz   isdigitaddSi_B_3


checkaddSi_if_1_B_3:
mov bh, 31h
cmp al, bh
jnz  checkaddSi_if_2_B_3
jz   isdigitaddSi_B_3


checkaddSi_if_2_B_3:
mov bh, 32h
cmp al, bh
jnz  checkaddSi_if_3_B_3
jz   isdigitaddSi_B_3


checkaddSi_if_3_B_3:
mov bh, 33h
cmp al, bh
jnz  checkaddSi_if_4_B_3
jz   isdigitaddSi_B_3


checkaddSi_if_4_B_3:
mov bh, 34h
cmp al, bh
jnz  checkaddSi_if_5_B_3
jz   isdigitaddSi_B_3


checkaddSi_if_5_B_3:
mov bh, 35h
cmp al, bh
jnz  checkaddSi_if_6_B_3
jz   isdigitaddSi_B_3


checkaddSi_if_6_B_3:
mov bh, 36h
cmp al, bh
jnz  checkaddSi_if_7_B_3
jz   isdigitaddSi_B_3

checkaddSi_if_7_B_3:
mov bh, 37h
cmp al, bh
jnz  checkaddSi_if_8_B_3
jz   isdigitaddSi_B_3


checkaddSi_if_8_B_3:
mov bh, 38h
cmp al, bh
jnz  checkaddSi_if_9_B_3
jz   isdigitaddSi_B_3

checkaddSi_if_9_B_3:
mov bh, 39h
cmp al, bh
jnz  isletteraddSi_B_3
jz   isdigitaddSi_B_3



isdigitaddSi_B_3:; reg_Ax_1 + 5 is unit
sub al, 30h
add cl, al


jmp  finish_checkaddSi_digits_and_letters_of_input_B

isletteraddSi_B_3:
sub al, 60h
add al, 9h
add cl, al
finish_checkaddSi_digits_and_letters_of_input_B:
mov ax, cx
mov dx, real_reg_si_2
add dx, ax
mov real_reg_si_2, dx
jc setCarryFlag
jmp continue
getRegisterName_si_add_op2:

    mov ah, 9
    mov dx, offset newline
    int 21h
    mov ah, 9
    mov dx, offset Mess_operand_2
    int 21h
    ; receive input from user
    mov ah, 0AH
    mov dx, offset operand_2
    int 21h
    ; check if register is ax or al or ah
    mov si, offset[operand_2 + 2]
    mov bl, 61h; ascii of a
    cmp bl, [si]
    jz AX_checkSiadd_4
    jnz another_register_name_checkSiadd_1_4


    Ax_checkSiadd_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz si_add_ax
jnz another_compareSiadd_of_ax_1_7


si_add_ax:
mov ax, real_reg_si_2
mov bx, real_reg_ax_2
add ax, bx
mov real_reg_si_2, ax
jc setCarryFlag
jmp continue
another_compareSiadd_of_ax_1_7:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareSiadd_of_ax_2_7

    another_compareSiadd_of_ax_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz another_register_name_checkSiadd_1_4



another_register_name_checkSiadd_1_4:
; check if register is bx
mov si, offset[operand_2 + 2]
mov bl, 62h; ascii of b
cmp bl, [si]
jz bx_checkSiadd_4
jnz another_register_name_checkSiadd_2_4

bx_checkSiadd_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz si_add_bx
jnz another_compareSiadd_of_cx_bx_1_4


si_add_bx:
mov ax, real_reg_si_2
mov bx, real_reg_bx_2
add ax, bx
mov real_reg_si_2, ax
jc setCarryFlag
jmp continue

another_compareSiadd_of_cx_bx_1_4:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareSiadd_of_bx_2_4

    another_compareSiadd_of_bx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareSiadd_BP_4




; to check if register is BP or not
compareSiadd_BP_4:
mov bl, 70h; ascii of p
cmp bl, [si]
jz si_add_BP
jnz error_register_name

si_add_BP:
mov ax, real_reg_si_2
mov bx, real_reg_BP_2
add ax, bx
mov real_reg_si_2, ax
jc setCarryFlag
jmp continue

another_register_name_checkSiadd_2_4:
    ; check if register is cx
    mov si, offset[operand_2 + 2]
    mov bl, 63h; ascii of c
    cmp bl, [si]
    jz cX_checkSiadd_4
    jnz another_register_name_checkSiadd_3_4


    cx_checkSiadd_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz si_add_cx
jnz error_register_name

si_add_cx:
mov ax, real_reg_si_2
mov bx, real_reg_cx_2
add ax, bx
mov real_reg_si_2, ax
jc setCarryFlag
jmp continue

another_compareSiadd_of_cx_1_4:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareSiadd_of_cx_2_4

    jmp continue

    another_compareSiadd_of_cx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkSiadd_3_4:
; check if register is dx or dl or dh
mov si, offset[operand_2 + 2]
mov bl, 64h; ascii of d
cmp bl, [si]
jz dX_checkSiadd_4
jnz another_register_name_checkSiadd_4_4


dx_checkSiadd_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz si_add_dx
jnz another_compareSiadd_of_dx_1_4

si_add_dx:
mov ax, real_reg_si_2
mov bx, real_reg_dx_2
add ax, bx
mov real_reg_si_2, ax
jc setCarryFlag
jmp continue

another_compareSiadd_of_dx_1_4:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareSiadd_of_dx_2_4

    another_compareSiadd_of_dx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareSiadd_DI_4

; to check if register is DI or not
compareSiadd_DI_4:
mov bl, 69h; ascii of i
cmp bl, [si]
jz si_add_DI
jnz error_register_name

si_add_DI:
mov ax, real_reg_si_2
mov bx, real_reg_di_2
add ax, bx
mov real_reg_si_2, ax
jc setCarryFlag
jmp continue

another_register_name_checkSiadd_4_4:
    mov bl, 73h; ascii of s
    cmp bl, [si]
    jz checkSiadd_si_4
    jnz error_register_name

    checkSiadd_si_4:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz si_add_si
jnz checkSiadd_sp_4

si_add_si:
mov ax, real_reg_si_2
mov bx, real_reg_si_2
add ax, bx
mov real_reg_si_2, ax
jc setCarryFlag
jmp continue

checkSiadd_sp_4:
    mov bl, 70h; ascii of p
    cmp bl, [si]
    jz si_add_sp
    jnz error_register_name

    si_add_sp:
mov ax, real_reg_si_2
mov bx, real_reg_sp_2
add ax, bx
mov real_reg_si_2, ax
jc setCarryFlag
jmp continue
;;;;;;;;; si_add_? ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; endofcode

;;;;;;;; sp_add_? ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; startofcode
sp_add_?:
    mov ah, 9
    mov dx, offset newline
    int 21h
    mov ah, 9
    mov dx, offset value_OR_register
    int 21h
    ; receive input from user
    mov ah, 0AH
    mov dx, offset vORr
    int 21h
    mov ah, vORr + 2
    mov al, 72h; ascii of r
    mov bl, 76h; ascii of v
    cmp ah, al
    jz getRegisterName_sp_add_op2
    cmp ah, bl
    jz getValue_sp_add_op2
    getValue_sp_add_op2:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset Mess_value
int 21h
mov ah, 0AH
mov dx, offset value
int 21h
mov al, value + 2
mov bh, 30h
cmp al, bh
jnz  checkaddSp_if_1_B
jz   isdigitaddSp_B

checkaddSp_if_1_B:
mov bh, 31h
cmp al, bh
jnz  checkaddSp_if_2_B
jz   isdigitaddSp_B

checkaddSp_if_2_B:
mov bh, 32h
cmp al, bh
jnz  checkaddSp_if_3_B
jz   isdigitaddSp_B

checkaddSp_if_3_B:
mov bh, 33h
cmp al, bh
jnz  checkaddSp_if_4_B
jz   isdigitaddSp_B

checkaddSp_if_4_B:
mov bh, 34h
cmp al, bh
jnz  checkaddSp_if_5_B
jz   isdigitaddSp_B


checkaddSp_if_5_B:
mov bh, 35h
cmp al, bh
jnz  checkaddSp_if_6_B
jz   isdigitaddSp_B


checkaddSp_if_6_B:
mov bh, 36h
cmp al, bh
jnz  checkaddSp_if_7_B
jz   isdigitaddSp_B


checkaddSp_if_7_B:
mov bh, 37h
cmp al, bh
jnz  checkaddSp_if_8_B
jz   isdigitaddSp_B


checkaddSp_if_8_B:
mov bh, 38h
cmp al, bh
jnz  checkaddSp_if_9_B
jz   isdigitaddSp_B


checkaddSp_if_9_B:
mov bh, 39h
cmp al, bh
jnz  isletteraddSp_B
jz   isdigitaddSp_B




isdigitaddSp_B:
sub al, 30h
mov bl, 10h
mul bl
mov ch, al

jmp  checkaddSp_2nd_char_B

isletteraddSp_B:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov ch, al

jmp  checkaddSp_2nd_char_B


checkaddSp_2nd_char_B:
mov al, value + 3
mov bh, 30h
cmp al, bh
jnz  checkaddSp_if_1_B_1
jz   isdigitaddSp_B_1


checkaddSp_if_1_B_1:
mov bh, 31h
cmp al, bh
jnz  checkaddSp_if_2_B_1
jz   isdigitaddSp_B_1


checkaddSp_if_2_B_1:
mov bh, 32h
cmp al, bh
jnz  checkaddSp_if_3_B_1
jz   isdigitaddSp_B_1


checkaddSp_if_3_B_1:
mov bh, 33h
cmp al, bh
jnz  checkaddSp_if_4_B_1
jz   isdigitaddSp_B_1


checkaddSp_if_4_B_1:
mov bh, 34h
cmp al, bh
jnz  checkaddSp_if_5_B_1
jz   isdigitaddSp_B_1


checkaddSp_if_5_B_1:
mov bh, 35h
cmp al, bh
jnz  checkaddSp_if_6_B_1
jz   isdigitaddSp_B_1


checkaddSp_if_6_B_1:
mov bh, 36h
cmp al, bh
jnz  checkaddSp_if_7_B_1
jz   isdigitaddSp_B_1


checkaddSp_if_7_B_1:
mov bh, 37h
cmp al, bh
jnz checkaddSp_if_8_B_1
jz  isdigitaddSp_B_1


checkaddSp_if_8_B_1:
mov bh, 38h
cmp al, bh
jnz  checkaddSp_if_9_B_1
jz   isdigitaddSp_B_1


checkaddSp_if_9_B_1:
mov bh, 39h
cmp al, bh
jnz  isletteraddSp_B_1
jz   isdigitaddSp_B_1



isdigitaddSp_B_1:; reg_Ax_1 + 3 is unit
sub al, 30h
add ch, al


jmp  checkaddSp_3rd_char_B


isletteraddSp_B_1:
sub al, 60h
add al, 9h
add ch, al

jmp  checkaddSp_3rd_char_B
checkaddSp_3rd_char_B:
mov al, value + 4
mov bh, 30h
cmp al, bh
jnz  checkaddSp_if_1_B_2
jz   isdigitaddSp_B_2

checkaddSp_if_1_B_2:
mov bh, 31h
cmp al, bh
jnz  checkaddSp_if_2_B_2
jz   isdigitaddSp_B_2

checkaddSp_if_2_B_2:
mov bh, 32h
cmp al, bh
jnz  checkaddSp_if_3_B_2
jz   isdigitaddSp_B_2

checkaddSp_if_3_B_2:
mov bh, 33h
cmp al, bh
jnz  checkaddSp_if_4_B_2
jz   isdigitaddSp_B_2

checkaddSp_if_4_B_2:
mov bh, 34h
cmp al, bh
jnz  checkaddSp_if_5_B_2
jz   isdigitaddSp_B_2


checkaddSp_if_5_B_2:
mov bh, 35h
cmp al, bh
jnz  checkaddSp_if_6_B_2
jz   isdigitaddSp_B_2

checkaddSp_if_6_B_2:
mov bh, 36h
cmp al, bh
jnz  checkaddSp_if_7_B_2
jz   isdigitaddSp_B_2


checkaddSp_if_7_B_2:
mov bh, 37h
cmp al, bh
jnz  checkaddSp_if_8_B_2
jz   isdigitaddSp_B_2


checkaddSp_if_8_B_2:
mov bh, 38h
cmp al, bh
jnz  checkaddSp_if_9_B_2
jz   isdigitaddSp_B_2


checkaddSp_if_9_B_2:
mov bh, 39h
cmp al, bh
jnz  isletteraddSp_B_2
jz   isdigitaddSp_B_2



isdigitaddSp_B_2:; reg_Ax_1 + 4 is tens
sub al, 30h
mov bl, 10h
mul bl
mov cl, al


jmp  checkaddSp_4th_char_B


isletteraddSp_B_2:
sub al, 60h
add al, 9h
mov bl, 10h
mul bl
mov cl, al


checkaddSp_4th_char_B:

mov al, value + 5
mov bh, 30h
cmp al, bh
jnz  checkaddSp_if_1_B_3
jz   isdigitaddSp_B_3


checkaddSp_if_1_B_3:
mov bh, 31h
cmp al, bh
jnz  checkaddSp_if_2_B_3
jz   isdigitaddSp_B_3


checkaddSp_if_2_B_3:
mov bh, 32h
cmp al, bh
jnz  checkaddSp_if_3_B_3
jz   isdigitaddSp_B_3


checkaddSp_if_3_B_3:
mov bh, 33h
cmp al, bh
jnz  checkaddSp_if_4_B_3
jz   isdigitaddSp_B_3


checkaddSp_if_4_B_3:
mov bh, 34h
cmp al, bh
jnz  checkaddSp_if_5_B_3
jz   isdigitaddSp_B_3


checkaddSp_if_5_B_3:
mov bh, 35h
cmp al, bh
jnz  checkaddSp_if_6_B_3
jz   isdigitaddSp_B_3


checkaddSp_if_6_B_3:
mov bh, 36h
cmp al, bh
jnz  checkaddSp_if_7_B_3
jz   isdigitaddSp_B_3

checkaddSp_if_7_B_3:
mov bh, 37h
cmp al, bh
jnz  checkaddSp_if_8_B_3
jz   isdigitaddSp_B_3


checkaddSp_if_8_B_3:
mov bh, 38h
cmp al, bh
jnz  checkaddSp_if_9_B_3
jz   isdigitaddSp_B_3

checkaddSp_if_9_B_3:
mov bh, 39h
cmp al, bh
jnz  isletteraddSp_B_3
jz   isdigitaddSp_B_3
isdigitaddSp_B_3: ; reg_Ax_1 + 5 is unit
sub al, 30h
add cl, al
jmp  finish_checkaddSp_digits_and_letters_of_input_B
isletteraddSp_B_3:
sub al, 60h
add al, 9h
add cl, al
finish_checkaddSp_digits_and_letters_of_input_B:
mov ax, cx
mov dx, real_reg_SP_2
add dx, ax
mov real_reg_SP_2, dx
jc setCarryFlag
jmp continue
getRegisterName_sp_add_op2:
    mov ah, 9
    mov dx, offset newline
    int 21h
    mov ah, 9
    mov dx, offset Mess_operand_2
    int 21h
    ; receive input from user
    mov ah, 0AH
    mov dx, offset operand_2
    int 21h

    ; check if register is ax or al or ah
    mov si, offset[operand_2 + 2]
    mov bl, 61h; ascii of a
    cmp bl, [si]
    jz AX_checkSpadd_4
    jnz another_register_name_checkSpadd_1_4


    Ax_checkSpadd_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sp_add_ax
jnz another_compareSpadd_of_ax_1_7


sp_add_ax:
mov ax, real_reg_sp_2
mov bx, real_reg_ax_2
add ax, bx
mov real_reg_sp_2, ax
jc setCarryFlag
jmp continue

another_compareSpadd_of_ax_1_7:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareSpadd_of_ax_2_7

    another_compareSpadd_of_ax_2_7:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz another_register_name_checkSpadd_1_4



another_register_name_checkSpadd_1_4:
; check if register is bx
mov si, offset[operand_2 + 2]
mov bl, 62h; ascii of b
cmp bl, [si]
jz bx_checkSpadd_4
jnz another_register_name_checkSpadd_2_4

bx_checkSpadd_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sp_add_bx
jnz another_compareSpadd_of_cx_bx_1_4


sp_add_bx:
mov ax, real_reg_sp_2
mov bx, real_reg_bx_2
add ax, bx
mov real_reg_sp_2, ax
jc setCarryFlag
jmp continue

another_compareSpadd_of_cx_bx_1_4:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareSpadd_of_bx_2_4

    another_compareSpadd_of_bx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareSpadd_BP_4




; to check if register is BP or not
compareSpadd_BP_4:
mov bl, 70h; ascii of p
cmp bl, [si]
jz sp_add_BP
jnz error_register_name

sp_add_BP:
mov ax, real_reg_sp_2
mov bx, real_reg_BP_2
add ax, bx
mov real_reg_sp_2, ax
jc setCarryFlag
jmp continue

another_register_name_checkSpadd_2_4:
    ; check if register is cx
    mov si, offset[operand_2 + 2]
    mov bl, 63h; ascii of c
    cmp bl, [si]
    jz cX_checkSpadd_4
    jnz another_register_name_checkSpadd_3_4


    cx_checkSpadd_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sp_add_cx
jnz error_register_name

sp_add_cx:
mov ax, real_reg_sp_2
mov bx, real_reg_cx_2
add ax, bx
mov real_reg_sp_2, ax
jc setCarryFlag
jmp continue

another_compareSpadd_of_cx_1_4:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareSpadd_of_cx_2_4

    jmp continue

    another_compareSpadd_of_cx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz error_register_name


another_register_name_checkSpadd_3_4:
; check if register is dx or dl or dh
mov si, offset[operand_2 + 2]
mov bl, 64h; ascii of d
cmp bl, [si]
jz dX_checkSpadd_4
jnz another_register_name_checkSpadd_4_4


dx_checkSpadd_4:
mov bl, 78h; ascii of x
inc si
cmp bl, [si]
jz sp_add_dx
jnz another_compareSpadd_of_dx_1_4

sp_add_dx:
mov ax, real_reg_sp_2
mov bx, real_reg_dx_2
add ax, bx
mov real_reg_sp_2, ax
jc setCarryFlag
jmp continue

another_compareSpadd_of_dx_1_4:
    mov bl, 68h; ascii of h
    cmp bl, [si]
    jz sizemismatch
    jnz another_compareSpadd_of_dx_2_4

    another_compareSpadd_of_dx_2_4:
mov bl, 6ch; ascii of l
cmp bl, [si]
jz sizemismatch
jnz compareSpadd_DI_4

; to check if register is DI or not
compareSpadd_DI_4:
mov bl, 69h; ascii of i
cmp bl, [si]
jz sp_add_DI
jnz error_register_name

sp_add_DI:
mov ax, real_reg_sp_2
mov bx, real_reg_di_2
add ax, bx
mov real_reg_sp_2, ax
jc setCarryFlag
jmp continue

another_register_name_checkSpadd_4_4:
    mov bl, 73h; ascii of s
    cmp bl, [si]
    jz checkSpadd_si_4
    jnz error_register_name

    checkSpadd_si_4:
mov bl, 69h; ascii of  i
inc si
cmp bl, [si]
jz sp_add_si
jnz checkSpadd_sp_4

sp_add_si:
mov ax, real_reg_sp_2
mov bx, real_reg_si_2
add ax, bx
mov real_reg_sp_2, ax
jc setCarryFlag
jmp continue

checkSpadd_sp_4:
    mov bl, 70h; ascii of p
    cmp bl, [si]
    jz sp_add_sp
    jnz error_register_name

    sp_add_sp:
mov ax, real_reg_sp_2
mov bx, real_reg_sp_2
add ax, bx
mov real_reg_sp_2, ax
jc setCarryFlag
jmp continue




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Add_command;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;endofcode
                                                                                                                     
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
 error_Register_name:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset error_register
int 21h
dec real_pts1
jmp continue
sizemismatch:
mov ah, 9
mov dx, offset newline
int 21h
mov ah, 9
mov dx, offset size_mismatch
int 21h
dec real_pts1
jmp continue
setCarryFlag:
mov al,01h
mov carry_Flag_2,al
jmp continue

continue:
ret
function_taking_commands endp

;//////////s@s
display_commands_or_powerups_menu  proc
    
    
                 
mov ah,9            
mov dx,offset commands
int 21h  

mov ah,9            
mov dx,offset powerups
int 21h  
        
                    
                 ret
     
   display_commands_or_powerups_menu  endp  


get_key_commands_or_powerups   proc 
   
     
startin_get_key_commands_powerups:

     
mov ah,0      ;check if key is pressed
int 16h

cmp al,31h ;number 1 ascii 
jz hewants_command ;change jmp to jz
jmp other_than_f2
hewants_command:call function_taking_commands
          
                     jmp finish_turn_player1

 other_than_f2:
cmp al,32h ; 2 ascii
jnz  startin_get_key_commands_powerups  ;change jmp to jnz
call get_key_powerups

ret
 
    
    ret
  get_key_commands_or_powerups  endp
;/////////////////////////////////////////////
    
display_powerups_menu proc

        

mov ah,9            
mov dx,offset p1
int 21h   


  call newLine1 

        
mov ah,9            
mov dx,offset p2
int 21h 

  call newLine1 


        
mov ah,9            
mov dx,offset p3
int 21h 

  call newLine1  
        
mov ah,9            
mov dx,offset p4
int 21h 

          ret
          display_powerups_menu endp 
          ;////////////////////////////////////

player1_p1 proc
 
  
  cmp real_pts1,30h     ;to check if he has enough points to exexute
  jb points1_lessthan_30
 

inc counter1
  
sub  real_pts1 ,30h

mov real_reg_Ax_1     ,  0000h
mov real_reg_Bx_1     ,  0000h
mov real_reg_BP_1     ,  0000h
mov real_reg_cx_1     ,  0000h
mov real_reg_dx_1     ,  0000h
mov real_reg_di_1     ,  0000h
mov real_reg_si_1     ,  0000h
mov real_reg_sp_1     ,  0000h  
mov real_reg_BP_1     ,  0000h
 
mov real_reg_Ax_2     ,  0000h
mov real_reg_Bx_2     ,  0000h
mov real_reg_BP_2     ,  0000h
mov real_reg_cx_2     ,  0000h
mov real_reg_dx_2     ,  0000h
mov real_reg_di_2     ,  0000h
mov real_reg_si_2     ,  0000h
mov real_reg_sp_2     ,  0000h  
mov real_reg_BP_2     ,  0000h

ret
player1_p1 endp


 
player1_p2 proc

       cmp real_pts1,08h   ;to check if he has enough points to exexute
       jb points1_lessthan_30  
  
       sub  real_pts1 ,08h

       mov ah,9           ; display message
       LEA dx,enter_forbiddenchar 
       int 21h    
                                   ; for entering forbidden char 
       mov ah,0Ah
       LEA dx,  forbidden_char 
       int 21h  

       mov ah,9           ; display mess forbidden_char 
       LEA dx,disp_forbiddenchar
       int 21h   

       mov ah,9           ; display forbidden_char 
       LEA dx,forbidden_char+2
       int 21h   
       jmp finish_turn_player1
    
    points1_lessthan_30:
    mov ah , 9
    mov dx , offset error_points1_lessthan_30
    int 21h
    jmp finish_turn_player1
    ret

    points1_lessthan_08:
    mov ah , 9
    mov dx , offset error_points1_lessthan_08
    int 21h
    jmp finish_turn_player1
    ret

   player1_p2 endp
;////////powerup 1//////////////////////////

get_key_powerups   proc  


       call display_powerups_menu     ;disp the menu of player1

       start_get_key_power_up_fn:
              mov ah,0      ;wait user key press
              int 16h 
              cmp al,41h  ;ascci A 
              jnz check_if_power_up_a_small
              call player1_p1
              ret

       check_if_power_up_a_small:
              cmp al,61h ; ascii a
              jnz not_first_power_up_player1
              call player1_p1
              ret

       not_first_power_up_player1: 
              cmp al,62h  ;ascii b
              jnz check_if_power_up_b_capital
              call player1_p2
              jmp finish_turn_player1

       check_if_power_up_b_capital:
              cmp al,62h  ;ascii b
              jnz start_get_key_power_up_fn
              call player1_p2
              jmp finish_turn_player1

ret
get_key_powerups  endp 


     end main 

; =========================================================
; Game Engine Function: sub_13A948
; Address            : 0x13A948 - 0x13A98C
; =========================================================

13A948:  PUSH            {R4,R5,R7,LR}
13A94A:  ADD             R7, SP, #8
13A94C:  MOVS            R1, #0
13A94E:  MOV             R4, R0
13A950:  BL              sub_13D71C
13A954:  LDR             R0, =(_ZTV17DialogButtonPanel - 0x13A95A); `vtable for'DialogButtonPanel ...
13A956:  ADD             R0, PC; `vtable for'DialogButtonPanel
13A958:  ADDS            R0, #8
13A95A:  STR             R0, [R4]
13A95C:  MOVS            R0, #0x70 ; 'p'; unsigned int
13A95E:  BLX             j__Znwj; operator new(uint)
13A962:  MOV             R5, R0
13A964:  BL              sub_13A9A8
13A968:  STR             R5, [R4,#0x6C]
13A96A:  MOV             R0, R4
13A96C:  MOV             R1, R5
13A96E:  BL              sub_12BDF6
13A972:  MOVS            R0, #0x70 ; 'p'; unsigned int
13A974:  BLX             j__Znwj; operator new(uint)
13A978:  MOV             R5, R0
13A97A:  BL              sub_13AB7C
13A97E:  STR             R5, [R4,#0x70]
13A980:  MOV             R0, R4
13A982:  MOV             R1, R5
13A984:  BL              sub_12BDF6
13A988:  MOV             R0, R4
13A98A:  POP             {R4,R5,R7,PC}

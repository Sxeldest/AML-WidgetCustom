; =========================================================
; Game Engine Function: sub_135774
; Address            : 0x135774 - 0x13579C
; =========================================================

135774:  PUSH            {R4,R6,R7,LR}
135776:  ADD             R7, SP, #8
135778:  MOV             R4, R0
13577A:  LDR             R0, =(_ZTVN13ControlLayout11ValueEditorE - 0x135784); `vtable for'ControlLayout::ValueEditor ...
13577C:  LDRB.W          R1, [R4,#0x78]
135780:  ADD             R0, PC; `vtable for'ControlLayout::ValueEditor
135782:  ADDS            R0, #8
135784:  STR             R0, [R4]
135786:  LSLS            R0, R1, #0x1F
135788:  ITT NE
13578A:  LDRNE.W         R0, [R4,#0x80]; void *
13578E:  BLXNE           j__ZdlPv; operator delete(void *)
135792:  MOV             R0, R4
135794:  POP.W           {R4,R6,R7,LR}
135798:  B.W             sub_12BCE4

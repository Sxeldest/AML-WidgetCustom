; =========================================================
; Game Engine Function: sub_13D904
; Address            : 0x13D904 - 0x13D944
; =========================================================

13D904:  PUSH            {R4,R5,R7,LR}
13D906:  ADD             R7, SP, #8
13D908:  MOV             R4, R0
13D90A:  BL              sub_13DD5C
13D90E:  LDR             R0, =(_ZTV7ListBox - 0x13D914); `vtable for'ListBox ...
13D910:  ADD             R0, PC; `vtable for'ListBox
13D912:  ADDS            R0, #8
13D914:  STR             R0, [R4]
13D916:  MOVS            R0, #0x64 ; 'd'; unsigned int
13D918:  BLX             j__Znwj; operator new(uint)
13D91C:  MOV             R5, R0
13D91E:  BL              sub_12BC78
13D922:  LDR             R0, =(_ZTVN7ListBox5PanelE - 0x13D930); `vtable for'ListBox::Panel ...
13D924:  VMOV.I32        Q8, #0
13D928:  MOV             R1, R5
13D92A:  STR             R5, [R4,#0x60]
13D92C:  ADD             R0, PC; `vtable for'ListBox::Panel
13D92E:  ADDS            R0, #8
13D930:  STR.W           R0, [R1],#0x54
13D934:  VST1.32         {D16-D17}, [R1]
13D938:  MOV             R0, R4
13D93A:  MOV             R1, R5
13D93C:  BL              sub_12BDF6
13D940:  MOV             R0, R4
13D942:  POP             {R4,R5,R7,PC}

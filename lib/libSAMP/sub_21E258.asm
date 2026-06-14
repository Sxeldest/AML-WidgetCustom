; =========================================================
; Game Engine Function: sub_21E258
; Address            : 0x21E258 - 0x21E27E
; =========================================================

21E258:  PUSH            {R4,R6,R7,LR}
21E25A:  ADD             R7, SP, #8
21E25C:  BLX             R0
21E25E:  LDR             R0, =(aTerminateHandl - 0x21E264); "terminate_handler unexpectedly returned" ...
21E260:  ADD             R0, PC; "terminate_handler unexpectedly returned"
21E262:  BL              loc_21E164
21E266:  BLX             j___cxa_begin_catch
21E26A:  LDR             R0, =(aTerminateHandl_0 - 0x21E270); "terminate_handler unexpectedly threw an"... ...
21E26C:  ADD             R0, PC; "terminate_handler unexpectedly threw an"...
21E26E:  BL              loc_21E164
21E272:  MOV             R4, R0
21E274:  BLX             j___cxa_end_catch
21E278:  MOV             R0, R4
21E27A:  BL              sub_DC924

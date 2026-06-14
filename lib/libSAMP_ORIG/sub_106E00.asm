; =========================================================
; Game Engine Function: sub_106E00
; Address            : 0x106E00 - 0x106E26
; =========================================================

106E00:  PUSH            {R4,R6,R7,LR}
106E02:  ADD             R7, SP, #8
106E04:  BLX             R0
106E06:  LDR             R0, =(aTerminateHandl - 0x106E0C); "terminate_handler unexpectedly returned" ...
106E08:  ADD             R0, PC; "terminate_handler unexpectedly returned"
106E0A:  BL              loc_106D0C
106E0E:  BLX             j___cxa_begin_catch
106E12:  LDR             R0, =(aTerminateHandl_0 - 0x106E18); "terminate_handler unexpectedly threw an"... ...
106E14:  ADD             R0, PC; "terminate_handler unexpectedly threw an"...
106E16:  BL              loc_106D0C
106E1A:  MOV             R4, R0
106E1C:  BLX             j___cxa_end_catch
106E20:  MOV             R0, R4
106E22:  BL              sub_71D14

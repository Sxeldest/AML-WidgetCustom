; =========================================================
; Game Engine Function: sub_110C30
; Address            : 0x110C30 - 0x110C74
; =========================================================

110C30:  PUSH            {R4,R5,R7,LR}
110C32:  ADD             R7, SP, #8
110C34:  SUB             SP, SP, #0x18
110C36:  MOV             R4, R0
110C38:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvP8CVehicleiEEC1I14WingFreePlanesEEMT_FvS4_iEPS9_EUlS4_iE_NS_9allocatorISD_EES5_EE - 0x110C44); `vtable for'std::__function::__func<function_helper<void ()(CVehicle *,int)>::function_helper<WingFreePlanes>(void (WingFreePlanes::*)(CVehicle *,int),WingFreePlanes*)::{lambda(CVehicle *,int)#1},std::allocator<function_helper<void ()(CVehicle *,int)>::function_helper<WingFreePlanes>(void (WingFreePlanes::*)(CVehicle *,int),WingFreePlanes*)::{lambda(CVehicle *,int)#1}>,void ()(CVehicle *,int)> ...
110C3A:  LDRD.W          R2, R3, [R1]
110C3E:  MOV             R5, SP
110C40:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<void ()(CVehicle *,int)>::function_helper<WingFreePlanes>(void (WingFreePlanes::*)(CVehicle *,int),WingFreePlanes*)::{lambda(CVehicle *,int)#1},std::allocator<function_helper<void ()(CVehicle *,int)>::function_helper<WingFreePlanes>(void (WingFreePlanes::*)(CVehicle *,int),WingFreePlanes*)::{lambda(CVehicle *,int)#1}>,void ()(CVehicle *,int)>
110C42:  LDR             R1, [R1,#8]
110C44:  ADDS            R0, #8
110C46:  STRD.W          R1, R5, [SP,#0x20+var_14]
110C4A:  STR             R0, [SP,#0x20+var_20]
110C4C:  MOV             R0, R5
110C4E:  MOV             R1, R4
110C50:  STRD.W          R2, R3, [SP,#0x20+var_1C]
110C54:  BL              sub_110D10
110C58:  LDR             R0, [SP,#0x20+var_10]
110C5A:  CMP             R5, R0
110C5C:  BEQ             loc_110C64
110C5E:  CBZ             R0, loc_110C6E
110C60:  MOVS            R1, #5
110C62:  B               loc_110C66
110C64:  MOVS            R1, #4
110C66:  LDR             R2, [R0]
110C68:  LDR.W           R1, [R2,R1,LSL#2]
110C6C:  BLX             R1
110C6E:  MOV             R0, R4
110C70:  ADD             SP, SP, #0x18
110C72:  POP             {R4,R5,R7,PC}

; =========================================================
; Game Engine Function: sub_110C80
; Address            : 0x110C80 - 0x110CA2
; =========================================================

110C80:  PUSH            {R4,R6,R7,LR}
110C82:  ADD             R7, SP, #8
110C84:  MOV             R4, R0
110C86:  MOVS            R0, #0x10; unsigned int
110C88:  BLX             j__Znwj; operator new(uint)
110C8C:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvP8CVehicleiEEC1I14WingFreePlanesEEMT_FvS4_iEPS9_EUlS4_iE_NS_9allocatorISD_EES5_EE - 0x110C96); `vtable for'std::__function::__func<function_helper<void ()(CVehicle *,int)>::function_helper<WingFreePlanes>(void (WingFreePlanes::*)(CVehicle *,int),WingFreePlanes*)::{lambda(CVehicle *,int)#1},std::allocator<function_helper<void ()(CVehicle *,int)>::function_helper<WingFreePlanes>(void (WingFreePlanes::*)(CVehicle *,int),WingFreePlanes*)::{lambda(CVehicle *,int)#1}>,void ()(CVehicle *,int)> ...
110C8E:  VLDR            D16, [R4,#4]
110C92:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<void ()(CVehicle *,int)>::function_helper<WingFreePlanes>(void (WingFreePlanes::*)(CVehicle *,int),WingFreePlanes*)::{lambda(CVehicle *,int)#1},std::allocator<function_helper<void ()(CVehicle *,int)>::function_helper<WingFreePlanes>(void (WingFreePlanes::*)(CVehicle *,int),WingFreePlanes*)::{lambda(CVehicle *,int)#1}>,void ()(CVehicle *,int)>
110C94:  LDR             R2, [R4,#0xC]
110C96:  ADDS            R1, #8
110C98:  STR             R1, [R0]
110C9A:  STR             R2, [R0,#0xC]
110C9C:  VSTR            D16, [R0,#4]
110CA0:  POP             {R4,R6,R7,PC}

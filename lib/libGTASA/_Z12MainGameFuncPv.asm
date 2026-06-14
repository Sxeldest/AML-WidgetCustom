; =========================================================
; Game Engine Function: _Z12MainGameFuncPv
; Address            : 0x5E5068 - 0x5E51F4
; =========================================================

5E5068:  PUSH            {R4-R7,LR}
5E506A:  ADD             R7, SP, #0xC
5E506C:  PUSH.W          {R8-R11}
5E5070:  SUB             SP, SP, #4
5E5072:  VPUSH           {D8}
5E5076:  SUB             SP, SP, #0x20
5E5078:  MOV             R4, R0
5E507A:  STR             R4, [SP,#0x48+var_2C]
5E507C:  BLX.W           j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
5E5080:  VMOV            D17, R0, R1
5E5084:  VLDR            D16, =1.23423423e9
5E5088:  ADD             R1, SP, #0x48+var_2C
5E508A:  CMP             R4, #0
5E508C:  VMUL.F64        D16, D17, D16
5E5090:  VCVT.U32.F64    S0, D16
5E5094:  VMOV            R0, S0
5E5098:  IT NE
5E509A:  ADDNE           R0, R1; seed
5E509C:  BLX.W           srand
5E50A0:  LDR             R0, =(RsGlobal_ptr - 0x5E50A8)
5E50A2:  MOVS            R2, #0
5E50A4:  ADD             R0, PC; RsGlobal_ptr
5E50A6:  LDR             R0, [R0]; RsGlobal
5E50A8:  LDRD.W          R1, R0, [R0,#(dword_9FC900 - 0x9FC8FC)]
5E50AC:  STRD.W          R2, R2, [SP,#0x48+var_3C]
5E50B0:  STRD.W          R1, R0, [SP,#0x48+var_34]
5E50B4:  ADD             R1, SP, #0x48+var_3C
5E50B6:  MOVS            R0, #0
5E50B8:  BLX.W           j__Z14RsEventHandler7RsEventPv; RsEventHandler(RsEvent,void *)
5E50BC:  LDR             R0, =(RsGlobal_ptr - 0x5E50CC)
5E50BE:  VMOV.F32        S16, #0.5
5E50C2:  LDR             R1, =(RsGlobal_ptr - 0x5E50D0)
5E50C4:  MOVW            R6, #0x7531
5E50C8:  ADD             R0, PC; RsGlobal_ptr
5E50CA:  LDR             R4, =(dword_A98DA0 - 0x5E50D4)
5E50CC:  ADD             R1, PC; RsGlobal_ptr
5E50CE:  LDR             R0, [R0]; RsGlobal
5E50D0:  ADD             R4, PC; dword_A98DA0
5E50D2:  STR             R0, [SP,#0x48+var_40]
5E50D4:  LDR             R0, =(RwInitialized_ptr - 0x5E50DE)
5E50D6:  LDR.W           R11, [R1]; RsGlobal
5E50DA:  ADD             R0, PC; RwInitialized_ptr
5E50DC:  LDR             R0, [R0]; RwInitialized
5E50DE:  STR             R0, [SP,#0x48+var_44]
5E50E0:  LDR             R0, =(gMobileMenu_ptr - 0x5E50E6)
5E50E2:  ADD             R0, PC; gMobileMenu_ptr
5E50E4:  LDR             R0, [R0]; gMobileMenu
5E50E6:  STR             R0, [SP,#0x48+var_48]
5E50E8:  LDR             R0, =(gGameState_ptr - 0x5E50EE)
5E50EA:  ADD             R0, PC; gGameState_ptr
5E50EC:  LDR.W           R8, [R0]; gGameState
5E50F0:  LDR             R0, =(FrontEndMenuManager_ptr - 0x5E50F6)
5E50F2:  ADD             R0, PC; FrontEndMenuManager_ptr
5E50F4:  LDR.W           R9, [R0]; FrontEndMenuManager
5E50F8:  LDR             R0, =(gMobileMenu_ptr - 0x5E50FE)
5E50FA:  ADD             R0, PC; gMobileMenu_ptr
5E50FC:  LDR.W           R10, [R0]; gMobileMenu
5E5100:  LDR             R5, [SP,#0x48+var_40]
5E5102:  MOVS            R1, #1
5E5104:  VLDR            S0, [R5,#4]
5E5108:  VLDR            S2, [R5,#8]
5E510C:  VCVT.F32.S32    S0, S0
5E5110:  VCVT.F32.S32    S2, S2
5E5114:  LDR             R0, [SP,#0x48+var_44]
5E5116:  STR             R1, [R0]
5E5118:  ADD             R0, SP, #0x48+var_3C
5E511A:  VMUL.F32        S0, S0, S16
5E511E:  VMUL.F32        S2, S2, S16
5E5122:  VSTR            S0, [SP,#0x48+var_3C]
5E5126:  VSTR            S2, [SP,#0x48+var_38]
5E512A:  BLX.W           j__Z13RsMouseSetPosP5RwV2d; RsMouseSetPos(RwV2d *)
5E512E:  LDR             R0, [R5,#0x10]
5E5130:  CMP             R0, #0
5E5132:  BNE             loc_5E51B8
5E5134:  LDR             R0, [SP,#0x48+var_48]
5E5136:  LDRB.W          R0, [R0,#0x4C]
5E513A:  CBZ             R0, loc_5E5144
5E513C:  B               loc_5E51B8
5E513E:  LDRB.W          R0, [R10,#(byte_6E00B8 - 0x6E006C)]
5E5142:  CBNZ            R0, loc_5E51B8
5E5144:  BLX.W           j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
5E5148:  STRD.W          R0, R1, [R4]
5E514C:  MOVS            R0, #0xA; useconds
5E514E:  BLX.W           j__Z19OS_SystemCheckPausei; OS_SystemCheckPause(int)
5E5152:  CMP             R0, #1
5E5154:  BNE             loc_5E516C
5E5156:  MOVS            R0, #0; bool
5E5158:  BLX.W           j__Z11updateUsageb; updateUsage(bool)
5E515C:  MOV.W           R0, #0xFFFFFFFF; useconds
5E5160:  BLX.W           j__Z19OS_SystemCheckPausei; OS_SystemCheckPause(int)
5E5164:  MOVS            R0, #1; bool
5E5166:  BLX.W           j__Z11updateUsageb; updateUsage(bool)
5E516A:  B               loc_5E518A
5E516C:  BLX.W           j__Z9OS_TimeMSv; OS_TimeMS(void)
5E5170:  MOV             R5, R0
5E5172:  LDR             R0, =(dword_A98DA8 - 0x5E5178)
5E5174:  ADD             R0, PC; dword_A98DA8
5E5176:  LDR             R0, [R0]
5E5178:  SUBS            R0, R5, R0
5E517A:  CMP             R0, R6
5E517C:  BCC             loc_5E518A
5E517E:  MOVS            R0, #0; bool
5E5180:  BLX.W           j__Z11updateUsageb; updateUsage(bool)
5E5184:  LDR             R0, =(dword_A98DA8 - 0x5E518A)
5E5186:  ADD             R0, PC; dword_A98DA8
5E5188:  STR             R5, [R0]
5E518A:  LDR.W           R0, [R8]
5E518E:  CMP             R0, #9
5E5190:  ITT NE
5E5192:  MOVNE           R0, #1; int
5E5194:  BLXNE.W         j__Z15LIB_InputUpdatei; LIB_InputUpdate(int)
5E5198:  ADD.W           R1, R9, #0xA4; int *
5E519C:  ADD.W           R2, R9, #0xA8; int *
5E51A0:  MOVS            R0, #0; int
5E51A2:  MOVS            R3, #0; float *
5E51A4:  BLX.W           j__Z25LIB_PointerGetCoordinatesiPiS_Pf; LIB_PointerGetCoordinates(int,int *,int *,float *)
5E51A8:  BLX.W           j__Z11DoGameStatev; DoGameState(void)
5E51AC:  BLX.W           j__Z22SCCloudSaveStateUpdatev; SCCloudSaveStateUpdate(void)
5E51B0:  LDR.W           R0, [R11,#(dword_9FC90C - 0x9FC8FC)]
5E51B4:  CMP             R0, #0
5E51B6:  BEQ             loc_5E513E
5E51B8:  BLX.W           j__Z13DoGameRestartv; DoGameRestart(void)
5E51BC:  CMP             R0, #0
5E51BE:  BNE             loc_5E5100
5E51C0:  MOVS            R0, #0x16
5E51C2:  MOVS            R1, #0
5E51C4:  BLX.W           j__Z14RsEventHandler7RsEventPv; RsEventHandler(RsEvent,void *)
5E51C8:  MOVS            R0, #0x19
5E51CA:  MOVS            R1, #0
5E51CC:  BLX.W           j__Z14RsEventHandler7RsEventPv; RsEventHandler(RsEvent,void *)
5E51D0:  LDR             R0, =(renderQueue_ptr - 0x5E51D6)
5E51D2:  ADD             R0, PC; renderQueue_ptr
5E51D4:  LDR             R0, [R0]; renderQueue
5E51D6:  LDR             R0, [R0]; this
5E51D8:  BLX.W           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
5E51DC:  BLX.W           j__ZN11RenderQueue4KillEv; RenderQueue::Kill(void)
5E51E0:  BLX.W           j__ZN10CMemoryMgr8ShutdownEv; CMemoryMgr::Shutdown(void)
5E51E4:  MOVS            R0, #0
5E51E6:  ADD             SP, SP, #0x20 ; ' '
5E51E8:  VPOP            {D8}
5E51EC:  ADD             SP, SP, #4
5E51EE:  POP.W           {R8-R11}
5E51F2:  POP             {R4-R7,PC}

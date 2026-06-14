; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr13StartCutsceneEv
; Address            : 0x465110 - 0x465176
; =========================================================

465110:  LDR             R0, =(_ZN12CCutsceneMgr21ms_cutscenePlayStatusE_ptr - 0x46511A)
465112:  MOVS            R2, #1
465114:  LDR             R1, =(byte_9AE231 - 0x46511C)
465116:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_cutscenePlayStatusE_ptr
465118:  ADD             R1, PC; byte_9AE231
46511A:  LDR             R0, [R0]; CCutsceneMgr::ms_cutscenePlayStatus ...
46511C:  LDRB            R1, [R1]
46511E:  CMP             R1, #0
465120:  STR             R2, [R0]; CCutsceneMgr::ms_cutscenePlayStatus
465122:  IT EQ
465124:  BXEQ            LR
465126:  PUSH            {R4,R6,R7,LR}; unsigned int
465128:  ADD             R7, SP, #0x10+var_8
46512A:  SUB             SP, SP, #8
46512C:  LDR             R0, =(TheCamera_ptr - 0x465134)
46512E:  LDR             R1, =(_ZN12CCutsceneMgr17ms_cutsceneOffsetE_ptr - 0x465136)
465130:  ADD             R0, PC; TheCamera_ptr
465132:  ADD             R1, PC; _ZN12CCutsceneMgr17ms_cutsceneOffsetE_ptr
465134:  LDR             R4, [R0]; TheCamera
465136:  LDR             R1, [R1]; CVector *
465138:  MOV             R0, R4; this
46513A:  BLX             j__ZN7CCamera20SetCamCutSceneOffSetERK7CVector; CCamera::SetCamCutSceneOffSet(CVector const&)
46513E:  MOV             R0, R4; this
465140:  MOVS            R1, #2; __int16
465142:  BLX             j__ZN7CCamera21TakeControlWithSplineEs; CCamera::TakeControlWithSpline(short)
465146:  MOV             R0, R4; this
465148:  BLX             j__ZN7CCamera15SetWideScreenOnEv; CCamera::SetWideScreenOn(void)
46514C:  MOVS            R0, #0
46514E:  MOVS            R1, #0; char *
465150:  STRD.W          R0, R0, [SP,#0x18+var_18]; bool
465154:  MOVS            R0, #0; this
465156:  MOVS            R2, #(stderr+1); unsigned __int16 *
465158:  MOVS            R3, #0; bool
46515A:  BLX             j__ZN4CHud14SetHelpMessageEPKcPtbbbj; CHud::SetHelpMessage(char const*,ushort *,bool,bool,bool,uint)
46515E:  LDR             R1, [R4,#(dword_951FBC - 0x951FA8)]; CVector *
465160:  ADD.W           R0, R1, #0x30 ; '0'
465164:  CMP             R1, #0
465166:  IT EQ
465168:  ADDEQ           R0, R4, #4; this
46516A:  BLX             j__ZN9CPlantMgr28PreUpdateOnceForNewCameraPosERK7CVector; CPlantMgr::PreUpdateOnceForNewCameraPos(CVector const&)
46516E:  ADD             SP, SP, #8
465170:  POP.W           {R4,R6,R7,LR}
465174:  BX              LR

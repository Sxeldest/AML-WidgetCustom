; =========================================================
; Game Engine Function: _Z24OS_ApplicationInitializeiPPKc
; Address            : 0x5E5240 - 0x5E526A
; =========================================================

5E5240:  PUSH            {R7,LR}
5E5242:  MOV             R7, SP
5E5244:  CMP             R0, #2
5E5246:  BLT             loc_5E5254
5E5248:  MOV.W           R0, #0x500; unsigned int
5E524C:  MOV.W           R1, #0x2D0; unsigned int
5E5250:  BLX.W           j__Z22OS_ScreenSetResolutionjj; OS_ScreenSetResolution(uint,uint)
5E5254:  LDR             R1, =(byte_61CD7E - 0x5E525C)
5E5256:  ADR             R0, aForcegermanbui_0; "ForceGermanBuild"
5E5258:  ADD             R1, PC; byte_61CD7E ; char *
5E525A:  BLX.W           j__Z20OS_ServiceAppCommandPKcS0_; OS_ServiceAppCommand(char const*,char const*)
5E525E:  LDR             R1, =(ForceGermanBuild_ptr - 0x5E5264)
5E5260:  ADD             R1, PC; ForceGermanBuild_ptr
5E5262:  LDR             R1, [R1]; ForceGermanBuild
5E5264:  STRB            R0, [R1]
5E5266:  MOVS            R0, #1
5E5268:  POP             {R7,PC}

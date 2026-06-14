; =========================================================
; Game Engine Function: _Z37LIB_GameServiceSubmitLeaderboardQueryPKciiibb
; Address            : 0x26F080 - 0x26F096
; =========================================================

26F080:  PUSH            {R7,LR}
26F082:  MOV             R7, SP
26F084:  SUB             SP, SP, #8
26F086:  LDRD.W          R12, LR, [R7,#8]
26F08A:  STRD.W          R12, LR, [SP,#0x10+var_10]; bool
26F08E:  BLX             j__Z37WarGameService_SubmitLeaderboardQueryPKciiibb; WarGameService_SubmitLeaderboardQuery(char const*,int,int,int,bool,bool)
26F092:  ADD             SP, SP, #8
26F094:  POP             {R7,PC}

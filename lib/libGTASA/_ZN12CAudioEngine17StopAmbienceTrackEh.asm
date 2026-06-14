; =========================================================
; Game Engine Function: _ZN12CAudioEngine17StopAmbienceTrackEh
; Address            : 0x3BCF94 - 0x3BCFEA
; =========================================================

3BCF94:  PUSH            {R4,R5,R7,LR}
3BCF96:  ADD             R7, SP, #8
3BCF98:  LDR             R0, =(AEAmbienceTrackManager_ptr - 0x3BCFA0)
3BCF9A:  MOV             R4, R1
3BCF9C:  ADD             R0, PC; AEAmbienceTrackManager_ptr
3BCF9E:  LDR             R0, [R0]; AEAmbienceTrackManager ; this
3BCFA0:  BLX             j__ZN23CAEAmbienceTrackManager17StopAmbienceTrackEv; CAEAmbienceTrackManager::StopAmbienceTrack(void)
3BCFA4:  CBZ             R4, locret_3BCFE8
3BCFA6:  LDR             R0, =(AEAmbienceTrackManager_ptr - 0x3BCFAC)
3BCFA8:  ADD             R0, PC; AEAmbienceTrackManager_ptr
3BCFAA:  LDR             R0, [R0]; AEAmbienceTrackManager ; this
3BCFAC:  BLX             j__ZN23CAEAmbienceTrackManager21IsAmbienceTrackActiveEv; CAEAmbienceTrackManager::IsAmbienceTrackActive(void)
3BCFB0:  CMP             R0, #0
3BCFB2:  IT EQ
3BCFB4:  POPEQ           {R4,R5,R7,PC}
3BCFB6:  LDR             R0, =(AEAudioHardware_ptr - 0x3BCFBC)
3BCFB8:  ADD             R0, PC; AEAudioHardware_ptr
3BCFBA:  LDR             R4, [R0]; AEAudioHardware
3BCFBC:  LDR             R0, =(AEAmbienceTrackManager_ptr - 0x3BCFC2)
3BCFBE:  ADD             R0, PC; AEAmbienceTrackManager_ptr
3BCFC0:  LDR             R5, [R0]; AEAmbienceTrackManager
3BCFC2:  MOV             R0, R4; this
3BCFC4:  BLX             j__ZN16CAEAudioHardware16GetTrackPlayTimeEv; CAEAudioHardware::GetTrackPlayTime(void)
3BCFC8:  MOV             R1, R0; int
3BCFCA:  MOV             R0, R5; this
3BCFCC:  BLX             j__ZN23CAEAmbienceTrackManager7ServiceEi; CAEAmbienceTrackManager::Service(int)
3BCFD0:  MOV             R0, R4; this
3BCFD2:  BLX             j__ZN16CAEAudioHardware7ServiceEv; CAEAudioHardware::Service(void)
3BCFD6:  MOV.W           R0, #0x7D0; useconds
3BCFDA:  BLX             j__Z14OS_ThreadSleepi; OS_ThreadSleep(int)
3BCFDE:  MOV             R0, R5; this
3BCFE0:  BLX             j__ZN23CAEAmbienceTrackManager21IsAmbienceTrackActiveEv; CAEAmbienceTrackManager::IsAmbienceTrackActive(void)
3BCFE4:  CMP             R0, #0
3BCFE6:  BNE             loc_3BCFC2
3BCFE8:  POP             {R4,R5,R7,PC}

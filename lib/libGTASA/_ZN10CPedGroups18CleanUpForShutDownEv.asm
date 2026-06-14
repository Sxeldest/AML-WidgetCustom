; =========================================================
; Game Engine Function: _ZN10CPedGroups18CleanUpForShutDownEv
; Address            : 0x4B78B0 - 0x4B796A
; =========================================================

4B78B0:  PUSH            {R4,R5,R7,LR}
4B78B2:  ADD             R7, SP, #8
4B78B4:  LDR             R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B78BA)
4B78B6:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B78B8:  LDR             R4, [R0]; CPedGroups::ms_groups ...
4B78BA:  ADD.W           R0, R4, #8; this
4B78BE:  BLX             j__ZN19CPedGroupMembership5FlushEv; CPedGroupMembership::Flush(void)
4B78C2:  ADD.W           R0, R4, #0x30 ; '0'; this
4B78C6:  BLX             j__ZN21CPedGroupIntelligence5FlushEv; CPedGroupIntelligence::Flush(void)
4B78CA:  ADD.W           R0, R4, #0x2DC; this
4B78CE:  MOVS            R5, #0
4B78D0:  STRB.W          R5, [R4,#(byte_9EE5C8 - 0x9EE2F8)]
4B78D4:  BLX             j__ZN19CPedGroupMembership5FlushEv; CPedGroupMembership::Flush(void)
4B78D8:  ADD.W           R0, R4, #0x304; this
4B78DC:  BLX             j__ZN21CPedGroupIntelligence5FlushEv; CPedGroupIntelligence::Flush(void)
4B78E0:  ADD.W           R0, R4, #0x5B0; this
4B78E4:  STRB.W          R5, [R4,#(byte_9EE89C - 0x9EE2F8)]
4B78E8:  BLX             j__ZN19CPedGroupMembership5FlushEv; CPedGroupMembership::Flush(void)
4B78EC:  ADD.W           R0, R4, #0x5D8; this
4B78F0:  BLX             j__ZN21CPedGroupIntelligence5FlushEv; CPedGroupIntelligence::Flush(void)
4B78F4:  ADDW            R0, R4, #0x884; this
4B78F8:  STRB.W          R5, [R4,#(byte_9EEB70 - 0x9EE2F8)]
4B78FC:  BLX             j__ZN19CPedGroupMembership5FlushEv; CPedGroupMembership::Flush(void)
4B7900:  ADDW            R0, R4, #0x8AC; this
4B7904:  BLX             j__ZN21CPedGroupIntelligence5FlushEv; CPedGroupIntelligence::Flush(void)
4B7908:  ADDW            R0, R4, #0xB58; this
4B790C:  STRB.W          R5, [R4,#(byte_9EEE44 - 0x9EE2F8)]
4B7910:  BLX             j__ZN19CPedGroupMembership5FlushEv; CPedGroupMembership::Flush(void)
4B7914:  ADD.W           R0, R4, #0xB80; this
4B7918:  BLX             j__ZN21CPedGroupIntelligence5FlushEv; CPedGroupIntelligence::Flush(void)
4B791C:  ADDW            R0, R4, #0xE2C; this
4B7920:  STRB.W          R5, [R4,#(byte_9EF118 - 0x9EE2F8)]
4B7924:  BLX             j__ZN19CPedGroupMembership5FlushEv; CPedGroupMembership::Flush(void)
4B7928:  ADDW            R0, R4, #0xE54; this
4B792C:  BLX             j__ZN21CPedGroupIntelligence5FlushEv; CPedGroupIntelligence::Flush(void)
4B7930:  MOVW            R0, #(byte_9EF3EC - 0x9EE2F8)
4B7934:  STRB            R5, [R4,R0]
4B7936:  ADD.W           R0, R4, #0x1100; this
4B793A:  BLX             j__ZN19CPedGroupMembership5FlushEv; CPedGroupMembership::Flush(void)
4B793E:  MOVW            R0, #0x1128
4B7942:  ADD             R0, R4; this
4B7944:  BLX             j__ZN21CPedGroupIntelligence5FlushEv; CPedGroupIntelligence::Flush(void)
4B7948:  MOVW            R0, #(byte_9EF6C0 - 0x9EE2F8)
4B794C:  STRB            R5, [R4,R0]
4B794E:  MOVW            R0, #0x13D4
4B7952:  ADD             R0, R4; this
4B7954:  BLX             j__ZN19CPedGroupMembership5FlushEv; CPedGroupMembership::Flush(void)
4B7958:  MOVW            R0, #0x13FC
4B795C:  ADD             R0, R4; this
4B795E:  BLX             j__ZN21CPedGroupIntelligence5FlushEv; CPedGroupIntelligence::Flush(void)
4B7962:  MOVW            R0, #(byte_9EF994 - 0x9EE2F8)
4B7966:  STRB            R5, [R4,R0]
4B7968:  POP             {R4,R5,R7,PC}

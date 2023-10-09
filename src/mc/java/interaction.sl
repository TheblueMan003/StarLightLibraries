package mc.java.Interaction

import mc.java.nbt as nbt

[nbt="UUID[0]"] scoreboard json UUID0
[nbt="UUID[1]"] scoreboard json UUID1
[nbt="UUID[2]"] scoreboard json UUID2
[nbt="UUID[3]"] scoreboard json UUID3

class Interaction with minecraft:interaction for mcjava{
    int lastAttack
    int lastInteract

    bool disableAttack
    bool disableInteraction

    void check(){
        if (!disableAttack){
            int attack = 0
            nbt.getNBT(attack, "attack.timestamp")
            if (attack > lastAttack){
                lastAttack = attack
                int uuid0, uuid1, uuid2, uuid3
                nbt.getNBT(uuid0, "attack.player[0]")
                nbt.getNBT(uuid1, "attack.player[1]")
                nbt.getNBT(uuid2, "attack.player[2]")
                nbt.getNBT(uuid3, "attack.player[3]")
                with(@a, true, UUID0 == uuid0 && UUID1 == uuid1 && UUID2 == uuid2 && UUID3 == uuid3){
                    onAttack()
                }
            }
        }
        if (!disableInteraction){
            int interact = 0
            nbt.getNBT(interact, "interaction.timestamp")
            if (interact > lastInteract){
                lastInteract = interact
                int uuid0, uuid1, uuid2, uuid3
                nbt.getNBT(uuid0, "interaction.player[0]")
                nbt.getNBT(uuid1, "interaction.player[1]")
                nbt.getNBT(uuid2, "interaction.player[2]")
                nbt.getNBT(uuid3, "interaction.player[3]")
                with(@a, true, UUID0 == uuid0 && UUID1 == uuid1 && UUID2 == uuid2 && UUID3 == uuid3){
                    onInteraction()
                }
            }
        }
    }
    virtual void onAttack(){}
    virtual void onInteraction(){}
}
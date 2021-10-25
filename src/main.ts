import { addFlag, getPlayers } from "isaacscript-common";

let doit = 0;
export default function main(): void {
  const mod = RegisterMod("Tainted Laz Rework", 1);
  mod.AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, playerDMG);
  mod.AddCallback(ModCallbacks.MC_PRE_SPAWN_CLEAN_AWARD, roomClear);
  mod.AddCallback(ModCallbacks.MC_POST_UPDATE, update);
}
function update() {
  if (doit === 1) {
    for (const i of getPlayers(true)) {
      if (
        i.GetPlayerType() !== PlayerType.PLAYER_LAZARUS_B &&
        i.GetPlayerType() !== PlayerType.PLAYER_LAZARUS2_B
      ) {
        return;
      }
      i.UseActiveItem(
        CollectibleType.COLLECTIBLE_FLIP,
        addFlag(UseFlag.USE_NOANIM, UseFlag.USE_NOANNOUNCER),
        -1,
      );
    }
  }
  doit = doit <= 1 ? 0 : doit - 1;
}
function playerDMG(entity: Entity) {
  const player = entity.ToPlayer();
  if (player === undefined) return;
  if (
    player.GetPlayerType() !== PlayerType.PLAYER_LAZARUS_B &&
    player.GetPlayerType() !== PlayerType.PLAYER_LAZARUS2_B
  )
    return;
  player.UseActiveItem(
    CollectibleType.COLLECTIBLE_FLIP,
    addFlag(UseFlag.USE_NOANIM, UseFlag.USE_NOANNOUNCER),
    -1,
  );
}

function roomClear() {
  doit = 5;
}

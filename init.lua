bls = {}
local modname = minetest.get_current_modname()
bls.modname = modname
bls.modpath = minetest.get_modpath(modname)
bls.mod_storage = minetest.get_mod_storage()

function bls.log(level, message, ...)
    minetest.log(level, ("[%s] %s"):format(modname, message:format(...)))
end

dofile(bls.modpath .. "/util.lua")

dofile(bls.modpath .. "/afk_tag.lua")
dofile(bls.modpath .. "/aliases.lua")
dofile(bls.modpath .. "/crafting_overrides.lua")
dofile(bls.modpath .. "/item_overrides.lua")

dofile(bls.modpath .. "/custom_items/currency.lua")
dofile(bls.modpath .. "/custom_items/doors.lua")
dofile(bls.modpath .. "/custom_items/fake_atm.lua")
dofile(bls.modpath .. "/custom_items/fake_nodes.lua")
dofile(bls.modpath .. "/custom_items/food.lua")
dofile(bls.modpath .. "/custom_items/highly_protected_node.lua")
dofile(bls.modpath .. "/custom_items/infinity_bracer.lua")
dofile(bls.modpath .. "/custom_items/maptools.lua")
dofile(bls.modpath .. "/custom_items/marble.lua")
dofile(bls.modpath .. "/custom_items/node_replacer_long_distance.lua")
dofile(bls.modpath .. "/custom_items/old_signs.lua")
dofile(bls.modpath .. "/custom_items/public_chests.lua")
dofile(bls.modpath .. "/custom_items/staff_armor.lua")
dofile(bls.modpath .. "/custom_items/water2.lua")
dofile(bls.modpath .. "/custom_items/mining_helmet.lua")

dofile(bls.modpath .. "/commands/antitroll.lua")
dofile(bls.modpath .. "/commands/areas_aliases.lua")
dofile(bls.modpath .. "/commands/dumptiles.lua")
dofile(bls.modpath .. "/commands/hax.lua")
dofile(bls.modpath .. "/commands/other.lua")
dofile(bls.modpath .. "/commands/punishments.lua")
dofile(bls.modpath .. "/commands/rollback_check.lua")
dofile(bls.modpath .. "/commands/snoop_cheats.lua")

dofile(bls.modpath .. "/fighting_overrides.lua")
dofile(bls.modpath .. "/fix_dead_on_login.lua")
dofile(bls.modpath .. "/fix_luacontroller_crash.lua")
dofile(bls.modpath .. "/fix_paper_posters.lua")
dofile(bls.modpath .. "/fix_playeranim_skinsdb.lua")
dofile(bls.modpath .. "/fix_tnt_effects.lua")
dofile(bls.modpath .. "/flowers.lua")
dofile(bls.modpath .. "/kelp_spread.lua")
dofile(bls.modpath .. "/lava.lua")
dofile(bls.modpath .. "/login_handling.lua")
dofile(bls.modpath .. "/mesecon/mvps_stoppers.lua")
dofile(bls.modpath .. "/microblocks.lua")
-- dofile(bls.modpath .. "/no_prediction.lua")  -- disable this, it doesn't work well w/ lag
dofile(bls.modpath .. "/node_inventory_protection.lua")
dofile(bls.modpath .. "/old_mod_cleanup.lua")
dofile(bls.modpath .. "/oregen.lua")
dofile(bls.modpath .. "/orienteering.lua")
dofile(bls.modpath .. "/remove_smartrenting.lua")
dofile(bls.modpath .. "/text_entry_logging.lua")
dofile(bls.modpath .. "/tnt.lua")

dofile(bls.modpath .. "/privs/caps.lua")
dofile(bls.modpath .. "/privs/zoom.lua")

dofile(bls.modpath .. "/techpack/gravelsieve.lua")
dofile(bls.modpath .. "/techpack/grinder.lua")
dofile(bls.modpath .. "/techpack/harvester.lua")
dofile(bls.modpath .. "/techpack/quarry.lua")
dofile(bls.modpath .. "/techpack/dispenser.lua")
dofile(bls.modpath .. "/techpack/repair_crafts.lua")
dofile(bls.modpath .. "/terumet/alloy_smelter.lua")
dofile(bls.modpath .. "/terumet/ore_saw.lua")
dofile(bls.modpath .. "/terumet/reformer.lua")
dofile(bls.modpath .. "/terumet/vulcanizer.lua")
dofile(bls.modpath .. "/tool_damage_alert.lua")
dofile(bls.modpath .. "/update_initial_privs.lua")
dofile(bls.modpath .. "/unified_inventory/inventory_categories.lua")
dofile(bls.modpath .. "/unified_inventory/group_images.lua")
dofile(bls.modpath .. "/unified_inventory/craft_sorter.lua")
dofile(bls.modpath .. "/caverealms.lua")
dofile(bls.modpath .. "/bigdoors/init.lua")
dofile(bls.modpath .. "/artificial_leather.lua")
dofile(bls.modpath .. "/plantlife_modpack.lua")

local http = minetest.request_http_api()
if http then
    assert(loadfile(bls.modpath .. "/report_webhook.lua"))(http)
end

--
if minetest.global_exists("xdecor") then
    dofile(bls.modpath .. "/microblocks_cleanup.lua")
end

-- last, because it overrides stuff in this mod even...
dofile(bls.modpath .. "/hunger_overrides.lua")

bls.mod_storage = nil

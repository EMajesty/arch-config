local hostname = dcli.system.hostname()
local is_laptop = dcli.hardware.is_laptop()

local enabled_modules = { "base" }
local packages = {}
local services = { enabled = {}, disabled = {} }

local cpu = dcli.hardware.cpu_vendor()

if cpu == "amd" then
    table.insert(packages, "amd-ucode")
elseif cpu == "intel" then
    table.insert(packages, "intel-ucode")
end

if dcli.hardware.has_amd_gpu() then
    table.insert(packages, "mesa")
    table.insert(packages, "lib32-mesa")
    table.insert(packages, "vulkan-radeon")
    table.insert(packages, "lib32-vulkan-radeon")
    table.insert(packages, "xf86-video-amdgpu")
elseif dcli.hardware.has_intel_gpu() then
    table.insert(packages, "mesa")
    table.insert(packages, "vulkan-intel")
    table.insert(packages, "intel-media-driver")
elseif dcli.hardware.has_nvidia() then
end

if is_laptop then
    table.insert(enabled_modules, "")
    table.insert(packages, "tlp")
    table.insert(packages, "tlp-rdw")
    table.insert(packages, "powertop")
    table.insert(packages, "acpi")
    table.insert(packages, "acpid")
    table.insert(services.enabled, "tlp.service")
    table.insert(services.enabled, "acpid.service")
else
    table.insert(enabled_modules, "musicprod")
    table.insert(enabled_modules, "gamedev")
    table.insert(enabled_modules, "creative")
    table.insert(enabled_modules, "3dprint")
end

return {
    host = hostname,
    description = string.format(),
    enabled_modules = enabled_modules,
    packages = packages,
    services = services,

    default_apps = {
        scope = "system",
        browser = "zen",
        text_editor = "nvim",
        file_manager = "nautilus",
        terminal = "kitty",
        video_player = "mpc-qt",
        image_viewer = "feh",
        pdf_viewer = "zathura",
    },
    config_backups = {
        enabled = true,
        max_backups = 5,
    },
    system_backups = {
        enabled = true,
        backup_on_sync = true,
        backup_on_update = true,
        tool = "snapper",
        snapper_config = "root",
        max_backups = 5,
    },

    auto_prune = true,
    module_processing = "parallel",
    editor = "nvim",
    aur_helper = "yay",
}

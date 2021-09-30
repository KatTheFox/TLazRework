--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]

local ____modules = {}
local ____moduleCache = {}
local ____originalRequire = require
local function require(file, ...)
    if ____moduleCache[file] then
        return ____moduleCache[file].value
    end
    if ____modules[file] then
        local module = ____modules[file]
        ____moduleCache[file] = { value = (select("#", ...) > 0) and module(...) or module(file) }
        return ____moduleCache[file].value
    else
        if ____originalRequire then
            return ____originalRequire(file)
        else
            error("module '" .. file .. "' not found")
        end
    end
end
____modules = {
["lualib_bundle"] = function(...) function __TS__ArrayIsArray(value)
    return (type(value) == "table") and ((value[1] ~= nil) or (next(value, nil) == nil))
end

function __TS__ArrayConcat(arr1, ...)
    local args = {...}
    local out = {}
    for ____, val in ipairs(arr1) do
        out[#out + 1] = val
    end
    for ____, arg in ipairs(args) do
        if __TS__ArrayIsArray(arg) then
            local argAsArray = arg
            for ____, val in ipairs(argAsArray) do
                out[#out + 1] = val
            end
        else
            out[#out + 1] = arg
        end
    end
    return out
end

function __TS__ArrayEntries(array)
    local key = 0
    return {
        [Symbol.iterator] = function(self)
            return self
        end,
        next = function(self)
            local result = {done = array[key + 1] == nil, value = {key, array[key + 1]}}
            key = key + 1
            return result
        end
    }
end

function __TS__ArrayEvery(arr, callbackfn)
    do
        local i = 0
        while i < #arr do
            if not callbackfn(_G, arr[i + 1], i, arr) then
                return false
            end
            i = i + 1
        end
    end
    return true
end

function __TS__ArrayFilter(arr, callbackfn)
    local result = {}
    do
        local i = 0
        while i < #arr do
            if callbackfn(_G, arr[i + 1], i, arr) then
                result[#result + 1] = arr[i + 1]
            end
            i = i + 1
        end
    end
    return result
end

function __TS__ArrayForEach(arr, callbackFn)
    do
        local i = 0
        while i < #arr do
            callbackFn(_G, arr[i + 1], i, arr)
            i = i + 1
        end
    end
end

function __TS__ArrayFind(arr, predicate)
    local len = #arr
    local k = 0
    while k < len do
        local elem = arr[k + 1]
        if predicate(_G, elem, k, arr) then
            return elem
        end
        k = k + 1
    end
    return nil
end

function __TS__ArrayFindIndex(arr, callbackFn)
    do
        local i = 0
        local len = #arr
        while i < len do
            if callbackFn(_G, arr[i + 1], i, arr) then
                return i
            end
            i = i + 1
        end
    end
    return -1
end

function __TS__ArrayIncludes(self, searchElement, fromIndex)
    if fromIndex == nil then
        fromIndex = 0
    end
    local len = #self
    local k = fromIndex
    if fromIndex < 0 then
        k = len + fromIndex
    end
    if k < 0 then
        k = 0
    end
    for i = k, len do
        if self[i + 1] == searchElement then
            return true
        end
    end
    return false
end

function __TS__ArrayIndexOf(arr, searchElement, fromIndex)
    local len = #arr
    if len == 0 then
        return -1
    end
    local n = 0
    if fromIndex then
        n = fromIndex
    end
    if n >= len then
        return -1
    end
    local k
    if n >= 0 then
        k = n
    else
        k = len + n
        if k < 0 then
            k = 0
        end
    end
    do
        local i = k
        while i < len do
            if arr[i + 1] == searchElement then
                return i
            end
            i = i + 1
        end
    end
    return -1
end

function __TS__ArrayJoin(self, separator)
    if separator == nil then
        separator = ","
    end
    local result = ""
    for index, value in ipairs(self) do
        if index > 1 then
            result = result .. separator
        end
        result = result .. tostring(value)
    end
    return result
end

function __TS__ArrayMap(arr, callbackfn)
    local newArray = {}
    do
        local i = 0
        while i < #arr do
            newArray[i + 1] = callbackfn(_G, arr[i + 1], i, arr)
            i = i + 1
        end
    end
    return newArray
end

function __TS__ArrayPush(arr, ...)
    local items = {...}
    for ____, item in ipairs(items) do
        arr[#arr + 1] = item
    end
    return #arr
end

function __TS__ArrayReduce(arr, callbackFn, ...)
    local len = #arr
    local k = 0
    local accumulator = nil
    if select("#", ...) ~= 0 then
        accumulator = select(1, ...)
    elseif len > 0 then
        accumulator = arr[1]
        k = 1
    else
        error("Reduce of empty array with no initial value", 0)
    end
    for i = k, len - 1 do
        accumulator = callbackFn(_G, accumulator, arr[i + 1], i, arr)
    end
    return accumulator
end

function __TS__ArrayReduceRight(arr, callbackFn, ...)
    local len = #arr
    local k = len - 1
    local accumulator = nil
    if select("#", ...) ~= 0 then
        accumulator = select(1, ...)
    elseif len > 0 then
        accumulator = arr[k + 1]
        k = k - 1
    else
        error("Reduce of empty array with no initial value", 0)
    end
    for i = k, 0, -1 do
        accumulator = callbackFn(_G, accumulator, arr[i + 1], i, arr)
    end
    return accumulator
end

function __TS__ArrayReverse(arr)
    local i = 0
    local j = #arr - 1
    while i < j do
        local temp = arr[j + 1]
        arr[j + 1] = arr[i + 1]
        arr[i + 1] = temp
        i = i + 1
        j = j - 1
    end
    return arr
end

function __TS__ArrayShift(arr)
    return table.remove(arr, 1)
end

function __TS__ArrayUnshift(arr, ...)
    local items = {...}
    do
        local i = #items - 1
        while i >= 0 do
            table.insert(arr, 1, items[i + 1])
            i = i - 1
        end
    end
    return #arr
end

function __TS__ArraySort(arr, compareFn)
    if compareFn ~= nil then
        table.sort(
            arr,
            function(a, b) return compareFn(_G, a, b) < 0 end
        )
    else
        table.sort(arr)
    end
    return arr
end

function __TS__ArraySlice(list, first, last)
    local len = #list
    local relativeStart = first or 0
    local k
    if relativeStart < 0 then
        k = math.max(len + relativeStart, 0)
    else
        k = math.min(relativeStart, len)
    end
    local relativeEnd = last
    if last == nil then
        relativeEnd = len
    end
    local final
    if relativeEnd < 0 then
        final = math.max(len + relativeEnd, 0)
    else
        final = math.min(relativeEnd, len)
    end
    local out = {}
    local n = 0
    while k < final do
        out[n + 1] = list[k + 1]
        k = k + 1
        n = n + 1
    end
    return out
end

function __TS__ArraySome(arr, callbackfn)
    do
        local i = 0
        while i < #arr do
            if callbackfn(_G, arr[i + 1], i, arr) then
                return true
            end
            i = i + 1
        end
    end
    return false
end

function __TS__ArraySplice(list, ...)
    local len = #list
    local actualArgumentCount = select("#", ...)
    local start = select(1, ...)
    local deleteCount = select(2, ...)
    local actualStart
    if start < 0 then
        actualStart = math.max(len + start, 0)
    else
        actualStart = math.min(start, len)
    end
    local itemCount = math.max(actualArgumentCount - 2, 0)
    local actualDeleteCount
    if actualArgumentCount == 0 then
        actualDeleteCount = 0
    elseif actualArgumentCount == 1 then
        actualDeleteCount = len - actualStart
    else
        actualDeleteCount = math.min(
            math.max(deleteCount or 0, 0),
            len - actualStart
        )
    end
    local out = {}
    do
        local k = 0
        while k < actualDeleteCount do
            local from = actualStart + k
            if list[from + 1] then
                out[k + 1] = list[from + 1]
            end
            k = k + 1
        end
    end
    if itemCount < actualDeleteCount then
        do
            local k = actualStart
            while k < (len - actualDeleteCount) do
                local from = k + actualDeleteCount
                local to = k + itemCount
                if list[from + 1] then
                    list[to + 1] = list[from + 1]
                else
                    list[to + 1] = nil
                end
                k = k + 1
            end
        end
        do
            local k = len
            while k > ((len - actualDeleteCount) + itemCount) do
                list[k] = nil
                k = k - 1
            end
        end
    elseif itemCount > actualDeleteCount then
        do
            local k = len - actualDeleteCount
            while k > actualStart do
                local from = (k + actualDeleteCount) - 1
                local to = (k + itemCount) - 1
                if list[from + 1] then
                    list[to + 1] = list[from + 1]
                else
                    list[to + 1] = nil
                end
                k = k - 1
            end
        end
    end
    local j = actualStart
    for i = 3, actualArgumentCount do
        list[j + 1] = select(i, ...)
        j = j + 1
    end
    do
        local k = #list - 1
        while k >= ((len - actualDeleteCount) + itemCount) do
            list[k + 1] = nil
            k = k - 1
        end
    end
    return out
end

function __TS__ArrayToObject(array)
    local object = {}
    do
        local i = 0
        while i < #array do
            object[i] = array[i + 1]
            i = i + 1
        end
    end
    return object
end

function __TS__ArrayFlat(array, depth)
    if depth == nil then
        depth = 1
    end
    local result = {}
    for ____, value in ipairs(array) do
        if (depth > 0) and __TS__ArrayIsArray(value) then
            result = __TS__ArrayConcat(
                result,
                __TS__ArrayFlat(value, depth - 1)
            )
        else
            result[#result + 1] = value
        end
    end
    return result
end

function __TS__ArrayFlatMap(array, callback)
    local result = {}
    do
        local i = 0
        while i < #array do
            local value = callback(_G, array[i + 1], i, array)
            if (type(value) == "table") and __TS__ArrayIsArray(value) then
                result = __TS__ArrayConcat(result, value)
            else
                result[#result + 1] = value
            end
            i = i + 1
        end
    end
    return result
end

function __TS__ArraySetLength(arr, length)
    if (((length < 0) or (length ~= length)) or (length == math.huge)) or (math.floor(length) ~= length) then
        error(
            "invalid array length: " .. tostring(length),
            0
        )
    end
    do
        local i = #arr - 1
        while i >= length do
            arr[i + 1] = nil
            i = i - 1
        end
    end
    return length
end

____symbolMetatable = {
    __tostring = function(self)
        return ("Symbol(" .. (self.description or "")) .. ")"
    end
}
function __TS__Symbol(description)
    return setmetatable({description = description}, ____symbolMetatable)
end
Symbol = {
    iterator = __TS__Symbol("Symbol.iterator"),
    hasInstance = __TS__Symbol("Symbol.hasInstance"),
    species = __TS__Symbol("Symbol.species"),
    toStringTag = __TS__Symbol("Symbol.toStringTag")
}

function __TS__InstanceOf(obj, classTbl)
    if type(classTbl) ~= "table" then
        error("Right-hand side of 'instanceof' is not an object", 0)
    end
    if classTbl[Symbol.hasInstance] ~= nil then
        return not (not classTbl[Symbol.hasInstance](classTbl, obj))
    end
    if type(obj) == "table" then
        local luaClass = obj.constructor
        while luaClass ~= nil do
            if luaClass == classTbl then
                return true
            end
            luaClass = luaClass.____super
        end
    end
    return false
end

function __TS__New(target, ...)
    local instance = setmetatable({}, target.prototype)
    instance:____constructor(...)
    return instance
end

function __TS__AsyncAwaiter(generator)
    return __TS__New(
        __TS__Promise,
        function(____, resolve, reject)
            local asyncCoroutine, adopt, fulfilled, step
            function adopt(self, value)
                return ((__TS__InstanceOf(value, __TS__Promise) and (function() return value end)) or (function() return __TS__Promise.resolve(value) end))()
            end
            function fulfilled(self, value)
                local success, resultOrError = coroutine.resume(asyncCoroutine, value)
                if success then
                    step(_G, resultOrError)
                else
                    reject(_G, resultOrError)
                end
            end
            function step(self, result)
                if coroutine.status(asyncCoroutine) == "dead" then
                    resolve(_G, result)
                else
                    (function()
                        local ____self = adopt(_G, result)
                        return ____self["then"](
                            ____self,
                            fulfilled,
                            function(____, reason) return reject(_G, reason) end
                        )
                    end)()
                end
            end
            asyncCoroutine = coroutine.create(generator)
            local success, resultOrError = coroutine.resume(asyncCoroutine)
            if success then
                step(_G, resultOrError)
            else
                reject(_G, resultOrError)
            end
        end
    )
end
function __TS__Await(thing)
    return coroutine.yield(thing)
end

function __TS__Class(self)
    local c = {prototype = {}}
    c.prototype.__index = c.prototype
    c.prototype.constructor = c
    return c
end

function __TS__ClassExtends(target, base)
    target.____super = base
    local staticMetatable = setmetatable({__index = base}, base)
    setmetatable(target, staticMetatable)
    local baseMetatable = getmetatable(base)
    if baseMetatable then
        if type(baseMetatable.__index) == "function" then
            staticMetatable.__index = baseMetatable.__index
        end
        if type(baseMetatable.__newindex) == "function" then
            staticMetatable.__newindex = baseMetatable.__newindex
        end
    end
    setmetatable(target.prototype, base.prototype)
    if type(base.prototype.__index) == "function" then
        target.prototype.__index = base.prototype.__index
    end
    if type(base.prototype.__newindex) == "function" then
        target.prototype.__newindex = base.prototype.__newindex
    end
    if type(base.prototype.__tostring) == "function" then
        target.prototype.__tostring = base.prototype.__tostring
    end
end

function __TS__CloneDescriptor(____bindingPattern0)
    local enumerable
    enumerable = ____bindingPattern0.enumerable
    local configurable
    configurable = ____bindingPattern0.configurable
    local get
    get = ____bindingPattern0.get
    local set
    set = ____bindingPattern0.set
    local writable
    writable = ____bindingPattern0.writable
    local value
    value = ____bindingPattern0.value
    local descriptor = {enumerable = enumerable == true, configurable = configurable == true}
    local hasGetterOrSetter = (get ~= nil) or (set ~= nil)
    local hasValueOrWritableAttribute = (writable ~= nil) or (value ~= nil)
    if hasGetterOrSetter and hasValueOrWritableAttribute then
        error("Invalid property descriptor. Cannot both specify accessors and a value or writable attribute.", 0)
    end
    if get or set then
        descriptor.get = get
        descriptor.set = set
    else
        descriptor.value = value
        descriptor.writable = writable == true
    end
    return descriptor
end

function __TS__ObjectGetOwnPropertyDescriptor(object, key)
    local metatable = getmetatable(object)
    if not metatable then
        return
    end
    if not rawget(metatable, "_descriptors") then
        return
    end
    return rawget(metatable, "_descriptors")[key]
end

function ____descriptorIndex(self, key)
    local value = rawget(self, key)
    if value ~= nil then
        return value
    end
    local metatable = getmetatable(self)
    while metatable do
        local rawResult = rawget(metatable, key)
        if rawResult ~= nil then
            return rawResult
        end
        local descriptors = rawget(metatable, "_descriptors")
        if descriptors then
            local descriptor = descriptors[key]
            if descriptor then
                if descriptor.get then
                    return descriptor.get(self)
                end
                return descriptor.value
            end
        end
        metatable = getmetatable(metatable)
    end
end
function ____descriptorNewindex(self, key, value)
    local metatable = getmetatable(self)
    while metatable do
        local descriptors = rawget(metatable, "_descriptors")
        if descriptors then
            local descriptor = descriptors[key]
            if descriptor then
                if descriptor.set then
                    descriptor.set(self, value)
                else
                    if descriptor.writable == false then
                        error(
                            ((("Cannot assign to read only property '" .. key) .. "' of object '") .. tostring(self)) .. "'",
                            0
                        )
                    end
                    descriptor.value = value
                end
                return
            end
        end
        metatable = getmetatable(metatable)
    end
    rawset(self, key, value)
end
function __TS__SetDescriptor(target, key, desc, isPrototype)
    if isPrototype == nil then
        isPrototype = false
    end
    local metatable = ((isPrototype and (function() return target end)) or (function() return getmetatable(target) end))()
    if not metatable then
        metatable = {}
        setmetatable(target, metatable)
    end
    local value = rawget(target, key)
    if value ~= nil then
        rawset(target, key, nil)
    end
    if not rawget(metatable, "_descriptors") then
        metatable._descriptors = {}
    end
    local descriptor = __TS__CloneDescriptor(desc)
    metatable._descriptors[key] = descriptor
    metatable.__index = ____descriptorIndex
    metatable.__newindex = ____descriptorNewindex
end

function __TS__ObjectAssign(to, ...)
    local sources = {...}
    if to == nil then
        return to
    end
    for ____, source in ipairs(sources) do
        for key in pairs(source) do
            to[key] = source[key]
        end
    end
    return to
end

function __TS__Decorate(decorators, target, key, desc)
    local result = target
    do
        local i = #decorators
        while i >= 0 do
            local decorator = decorators[i + 1]
            if decorator then
                local oldResult = result
                if key == nil then
                    result = decorator(_G, result)
                elseif desc == true then
                    local value = rawget(target, key)
                    local descriptor = __TS__ObjectGetOwnPropertyDescriptor(target, key) or ({configurable = true, writable = true, value = value})
                    local desc = decorator(_G, target, key, descriptor) or descriptor
                    local isSimpleValue = (((desc.configurable == true) and (desc.writable == true)) and (not desc.get)) and (not desc.set)
                    if isSimpleValue then
                        rawset(target, key, desc.value)
                    else
                        __TS__SetDescriptor(
                            target,
                            key,
                            __TS__ObjectAssign({}, descriptor, desc)
                        )
                    end
                elseif desc == false then
                    result = decorator(_G, target, key, desc)
                else
                    result = decorator(_G, target, key)
                end
                result = result or oldResult
            end
            i = i - 1
        end
    end
    return result
end

function __TS__DecorateParam(paramIndex, decorator)
    return function(____, target, key) return decorator(_G, target, key, paramIndex) end
end

function __TS__ObjectGetOwnPropertyDescriptors(object)
    local metatable = getmetatable(object)
    if not metatable then
        return {}
    end
    return rawget(metatable, "_descriptors") or ({})
end

function __TS__Delete(target, key)
    local descriptors = __TS__ObjectGetOwnPropertyDescriptors(target)
    local descriptor = descriptors[key]
    if descriptor then
        if not descriptor.configurable then
            error(
                ((("Cannot delete property " .. tostring(key)) .. " of ") .. tostring(target)) .. ".",
                0
            )
        end
        descriptors[key] = nil
        return true
    end
    if target[key] ~= nil then
        target[key] = nil
        return true
    end
    return false
end

function __TS__StringAccess(self, index)
    if (index >= 0) and (index < #self) then
        return string.sub(self, index + 1, index + 1)
    end
end

function __TS__DelegatedYield(iterable)
    if type(iterable) == "string" then
        for index = 0, #iterable - 1 do
            coroutine.yield(
                __TS__StringAccess(iterable, index)
            )
        end
    elseif iterable.____coroutine ~= nil then
        local co = iterable.____coroutine
        while true do
            local status, value = coroutine.resume(co)
            if not status then
                error(value, 0)
            end
            if coroutine.status(co) == "dead" then
                return value
            else
                coroutine.yield(value)
            end
        end
    elseif iterable[Symbol.iterator] then
        local iterator = iterable[Symbol.iterator](iterable)
        while true do
            local result = iterator:next()
            if result.done then
                return result.value
            else
                coroutine.yield(result.value)
            end
        end
    else
        for ____, value in ipairs(iterable) do
            coroutine.yield(value)
        end
    end
end

function __TS__GetErrorStack(self, constructor)
    local level = 1
    while true do
        local info = debug.getinfo(level, "f")
        level = level + 1
        if not info then
            level = 1
            break
        elseif info.func == constructor then
            break
        end
    end
    return debug.traceback(nil, level)
end
function __TS__WrapErrorToString(self, getDescription)
    return function(self)
        local description = getDescription(self)
        local caller = debug.getinfo(3, "f")
        if (_VERSION == "Lua 5.1") or (caller and (caller.func ~= error)) then
            return description
        else
            return (tostring(description) .. "\n") .. self.stack
        end
    end
end
function __TS__InitErrorClass(self, Type, name)
    Type.name = name
    return setmetatable(
        Type,
        {
            __call = function(____, _self, message) return __TS__New(Type, message) end
        }
    )
end
Error = __TS__InitErrorClass(
    _G,
    (function()
        local ____ = __TS__Class()
        ____.name = ""
        function ____.prototype.____constructor(self, message)
            if message == nil then
                message = ""
            end
            self.message = message
            self.name = "Error"
            self.stack = __TS__GetErrorStack(_G, self.constructor.new)
            local metatable = getmetatable(self)
            if not metatable.__errorToStringPatched then
                metatable.__errorToStringPatched = true
                metatable.__tostring = __TS__WrapErrorToString(_G, metatable.__tostring)
            end
        end
        function ____.prototype.__tostring(self)
            return (((self.message ~= "") and (function() return (self.name .. ": ") .. self.message end)) or (function() return self.name end))()
        end
        return ____
    end)(),
    "Error"
)
for ____, errorName in ipairs({"RangeError", "ReferenceError", "SyntaxError", "TypeError", "URIError"}) do
    _G[errorName] = __TS__InitErrorClass(
        _G,
        (function()
            local ____ = __TS__Class()
            ____.name = ____.name
            __TS__ClassExtends(____, Error)
            function ____.prototype.____constructor(self, ...)
                Error.prototype.____constructor(self, ...)
                self.name = errorName
            end
            return ____
        end)(),
        errorName
    )
end

__TS__Unpack = table.unpack or unpack

function __TS__FunctionBind(fn, thisArg, ...)
    local boundArgs = {...}
    return function(____, ...)
        local args = {...}
        do
            local i = 0
            while i < #boundArgs do
                table.insert(args, i + 1, boundArgs[i + 1])
                i = i + 1
            end
        end
        return fn(
            thisArg,
            __TS__Unpack(args)
        )
    end
end

function __TS__GeneratorIterator(self)
    return self
end
function __TS__GeneratorNext(self, ...)
    local co = self.____coroutine
    if coroutine.status(co) == "dead" then
        return {done = true}
    end
    local status, value = coroutine.resume(co, ...)
    if not status then
        error(value, 0)
    end
    return {
        value = value,
        done = coroutine.status(co) == "dead"
    }
end
function __TS__Generator(fn)
    return function(...)
        local args = {...}
        local argsLength = select("#", ...)
        return {
            ____coroutine = coroutine.create(
                function() return fn(
                    (unpack or table.unpack)(args, 1, argsLength)
                ) end
            ),
            [Symbol.iterator] = __TS__GeneratorIterator,
            next = __TS__GeneratorNext
        }
    end
end

function __TS__InstanceOfObject(value)
    local valueType = type(value)
    return (valueType == "table") or (valueType == "function")
end

function __TS__IteratorGeneratorStep(self)
    local co = self.____coroutine
    local status, value = coroutine.resume(co)
    if not status then
        error(value, 0)
    end
    if coroutine.status(co) == "dead" then
        return
    end
    return true, value
end
function __TS__IteratorIteratorStep(self)
    local result = self:next()
    if result.done then
        return
    end
    return true, result.value
end
function __TS__IteratorStringStep(self, index)
    index = index + 1
    if index > #self then
        return
    end
    return index, string.sub(self, index, index)
end
function __TS__Iterator(iterable)
    if type(iterable) == "string" then
        return __TS__IteratorStringStep, iterable, 0
    elseif iterable.____coroutine ~= nil then
        return __TS__IteratorGeneratorStep, iterable
    elseif iterable[Symbol.iterator] then
        local iterator = iterable[Symbol.iterator](iterable)
        return __TS__IteratorIteratorStep, iterator
    else
        return ipairs(iterable)
    end
end

Map = (function()
    local Map = __TS__Class()
    Map.name = "Map"
    function Map.prototype.____constructor(self, entries)
        self[Symbol.toStringTag] = "Map"
        self.items = {}
        self.size = 0
        self.nextKey = {}
        self.previousKey = {}
        if entries == nil then
            return
        end
        local iterable = entries
        if iterable[Symbol.iterator] then
            local iterator = iterable[Symbol.iterator](iterable)
            while true do
                local result = iterator:next()
                if result.done then
                    break
                end
                local value = result.value
                self:set(value[1], value[2])
            end
        else
            local array = entries
            for ____, kvp in ipairs(array) do
                self:set(kvp[1], kvp[2])
            end
        end
    end
    function Map.prototype.clear(self)
        self.items = {}
        self.nextKey = {}
        self.previousKey = {}
        self.firstKey = nil
        self.lastKey = nil
        self.size = 0
    end
    function Map.prototype.delete(self, key)
        local contains = self:has(key)
        if contains then
            self.size = self.size - 1
            local next = self.nextKey[key]
            local previous = self.previousKey[key]
            if next and previous then
                self.nextKey[previous] = next
                self.previousKey[next] = previous
            elseif next then
                self.firstKey = next
                self.previousKey[next] = nil
            elseif previous then
                self.lastKey = previous
                self.nextKey[previous] = nil
            else
                self.firstKey = nil
                self.lastKey = nil
            end
            self.nextKey[key] = nil
            self.previousKey[key] = nil
        end
        self.items[key] = nil
        return contains
    end
    function Map.prototype.forEach(self, callback)
        for ____, key in __TS__Iterator(
            self:keys()
        ) do
            callback(_G, self.items[key], key, self)
        end
    end
    function Map.prototype.get(self, key)
        return self.items[key]
    end
    function Map.prototype.has(self, key)
        return (self.nextKey[key] ~= nil) or (self.lastKey == key)
    end
    function Map.prototype.set(self, key, value)
        local isNewValue = not self:has(key)
        if isNewValue then
            self.size = self.size + 1
        end
        self.items[key] = value
        if self.firstKey == nil then
            self.firstKey = key
            self.lastKey = key
        elseif isNewValue then
            self.nextKey[self.lastKey] = key
            self.previousKey[key] = self.lastKey
            self.lastKey = key
        end
        return self
    end
    Map.prototype[Symbol.iterator] = function(self)
        return self:entries()
    end
    function Map.prototype.entries(self)
        local ____ = self
        local items = ____.items
        local nextKey = ____.nextKey
        local key = self.firstKey
        return {
            [Symbol.iterator] = function(self)
                return self
            end,
            next = function(self)
                local result = {done = not key, value = {key, items[key]}}
                key = nextKey[key]
                return result
            end
        }
    end
    function Map.prototype.keys(self)
        local nextKey = self.nextKey
        local key = self.firstKey
        return {
            [Symbol.iterator] = function(self)
                return self
            end,
            next = function(self)
                local result = {done = not key, value = key}
                key = nextKey[key]
                return result
            end
        }
    end
    function Map.prototype.values(self)
        local ____ = self
        local items = ____.items
        local nextKey = ____.nextKey
        local key = self.firstKey
        return {
            [Symbol.iterator] = function(self)
                return self
            end,
            next = function(self)
                local result = {done = not key, value = items[key]}
                key = nextKey[key]
                return result
            end
        }
    end
    Map[Symbol.species] = Map
    return Map
end)()

__TS__MathAtan2 = math.atan2 or math.atan

function __TS__Number(value)
    local valueType = type(value)
    if valueType == "number" then
        return value
    elseif valueType == "string" then
        local numberValue = tonumber(value)
        if numberValue then
            return numberValue
        end
        if value == "Infinity" then
            return math.huge
        end
        if value == "-Infinity" then
            return -math.huge
        end
        local stringWithoutSpaces = string.gsub(value, "%s", "")
        if stringWithoutSpaces == "" then
            return 0
        end
        return 0 / 0
    elseif valueType == "boolean" then
        return (value and 1) or 0
    else
        return 0 / 0
    end
end

function __TS__NumberIsFinite(value)
    return (((type(value) == "number") and (value == value)) and (value ~= math.huge)) and (value ~= -math.huge)
end

function __TS__NumberIsNaN(value)
    return value ~= value
end

____radixChars = "0123456789abcdefghijklmnopqrstuvwxyz"
function __TS__NumberToString(self, radix)
    if ((((radix == nil) or (radix == 10)) or (self == math.huge)) or (self == -math.huge)) or (self ~= self) then
        return tostring(self)
    end
    radix = math.floor(radix)
    if (radix < 2) or (radix > 36) then
        error("toString() radix argument must be between 2 and 36", 0)
    end
    local integer, fraction = math.modf(
        math.abs(self)
    )
    local result = ""
    if radix == 8 then
        result = string.format("%o", integer)
    elseif radix == 16 then
        result = string.format("%x", integer)
    else
        repeat
            do
                result = __TS__StringAccess(____radixChars, integer % radix) .. result
                integer = math.floor(integer / radix)
            end
        until not (integer ~= 0)
    end
    if fraction ~= 0 then
        result = result .. "."
        local delta = 1e-16
        repeat
            do
                fraction = fraction * radix
                delta = delta * radix
                local digit = math.floor(fraction)
                result = result .. __TS__StringAccess(____radixChars, digit)
                fraction = fraction - digit
            end
        until not (fraction >= delta)
    end
    if self < 0 then
        result = "-" .. result
    end
    return result
end

function __TS__ObjectDefineProperty(target, key, desc)
    local luaKey = (((type(key) == "number") and (function() return key + 1 end)) or (function() return key end))()
    local value = rawget(target, luaKey)
    local hasGetterOrSetter = (desc.get ~= nil) or (desc.set ~= nil)
    local descriptor
    if hasGetterOrSetter then
        if value ~= nil then
            error(
                "Cannot redefine property: " .. tostring(key),
                0
            )
        end
        descriptor = desc
    else
        local valueExists = value ~= nil
        descriptor = {
            set = desc.set,
            get = desc.get,
            configurable = (((desc.configurable ~= nil) and (function() return desc.configurable end)) or (function() return valueExists end))(),
            enumerable = (((desc.enumerable ~= nil) and (function() return desc.enumerable end)) or (function() return valueExists end))(),
            writable = (((desc.writable ~= nil) and (function() return desc.writable end)) or (function() return valueExists end))(),
            value = (((desc.value ~= nil) and (function() return desc.value end)) or (function() return value end))()
        }
    end
    __TS__SetDescriptor(target, luaKey, descriptor)
    return target
end

function __TS__ObjectEntries(obj)
    local result = {}
    for key in pairs(obj) do
        result[#result + 1] = {key, obj[key]}
    end
    return result
end

function __TS__ObjectFromEntries(entries)
    local obj = {}
    local iterable = entries
    if iterable[Symbol.iterator] then
        local iterator = iterable[Symbol.iterator](iterable)
        while true do
            local result = iterator:next()
            if result.done then
                break
            end
            local value = result.value
            obj[value[1]] = value[2]
        end
    else
        for ____, entry in ipairs(entries) do
            obj[entry[1]] = entry[2]
        end
    end
    return obj
end

function __TS__ObjectKeys(obj)
    local result = {}
    for key in pairs(obj) do
        result[#result + 1] = key
    end
    return result
end

function __TS__ObjectRest(target, usedProperties)
    local result = {}
    for property in pairs(target) do
        if not usedProperties[property] then
            result[property] = target[property]
        end
    end
    return result
end

function __TS__ObjectValues(obj)
    local result = {}
    for key in pairs(obj) do
        result[#result + 1] = obj[key]
    end
    return result
end

function __TS__OptionalChainAccess(____table, key)
    if ____table then
        return ____table[key]
    end
    return nil
end

function __TS__OptionalFunctionCall(f, ...)
    if f then
        return f(...)
    end
    return nil
end

function __TS__OptionalMethodCall(____table, methodName, isMethodOptional, ...)
    if ____table then
        local method = ____table[methodName]
        if method then
            return method(____table, ...)
        elseif not isMethodOptional then
            error(methodName .. " is not a function", 0)
        end
    end
    return nil
end

function __TS__ParseFloat(numberString)
    local infinityMatch = string.match(numberString, "^%s*(-?Infinity)")
    if infinityMatch then
        return (((__TS__StringAccess(infinityMatch, 0) == "-") and (function() return -math.huge end)) or (function() return math.huge end))()
    end
    local number = tonumber(
        string.match(numberString, "^%s*(-?%d+%.?%d*)")
    )
    return number or (0 / 0)
end

function __TS__StringSubstr(self, from, length)
    if from ~= from then
        from = 0
    end
    if length ~= nil then
        if (length ~= length) or (length <= 0) then
            return ""
        end
        length = length + from
    end
    if from >= 0 then
        from = from + 1
    end
    return string.sub(self, from, length)
end

function __TS__StringSubstring(self, start, ____end)
    if ____end ~= ____end then
        ____end = 0
    end
    if (____end ~= nil) and (start > ____end) then
        start, ____end = ____end, start
    end
    if start >= 0 then
        start = start + 1
    else
        start = 1
    end
    if (____end ~= nil) and (____end < 0) then
        ____end = 0
    end
    return string.sub(self, start, ____end)
end

__TS__parseInt_base_pattern = "0123456789aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTvVwWxXyYzZ"
function __TS__ParseInt(numberString, base)
    if base == nil then
        base = 10
        local hexMatch = string.match(numberString, "^%s*-?0[xX]")
        if hexMatch then
            base = 16
            numberString = ((string.match(hexMatch, "-") and (function() return "-" .. __TS__StringSubstr(numberString, #hexMatch) end)) or (function() return __TS__StringSubstr(numberString, #hexMatch) end))()
        end
    end
    if (base < 2) or (base > 36) then
        return 0 / 0
    end
    local allowedDigits = (((base <= 10) and (function() return __TS__StringSubstring(__TS__parseInt_base_pattern, 0, base) end)) or (function() return __TS__StringSubstr(__TS__parseInt_base_pattern, 0, 10 + (2 * (base - 10))) end))()
    local pattern = ("^%s*(-?[" .. allowedDigits) .. "]*)"
    local number = tonumber(
        string.match(numberString, pattern),
        base
    )
    if number == nil then
        return 0 / 0
    end
    if number >= 0 then
        return math.floor(number)
    else
        return math.ceil(number)
    end
end

__TS__PromiseState = __TS__PromiseState or ({})
__TS__PromiseState.Pending = 0
__TS__PromiseState[__TS__PromiseState.Pending] = "Pending"
__TS__PromiseState.Fulfilled = 1
__TS__PromiseState[__TS__PromiseState.Fulfilled] = "Fulfilled"
__TS__PromiseState.Rejected = 2
__TS__PromiseState[__TS__PromiseState.Rejected] = "Rejected"
function __TS__PromiseDeferred(self)
    local resolve
    local reject
    local promise = __TS__New(
        __TS__Promise,
        function(____, res, rej)
            resolve = res
            reject = rej
        end
    )
    return {promise = promise, resolve = resolve, reject = reject}
end
function __TS__IsPromiseLike(self, thing)
    return __TS__InstanceOf(thing, __TS__Promise)
end
__TS__Promise = __TS__Class()
__TS__Promise.name = "__TS__Promise"
function __TS__Promise.prototype.____constructor(self, executor)
    self.state = __TS__PromiseState.Pending
    self.fulfilledCallbacks = {}
    self.rejectedCallbacks = {}
    self.finallyCallbacks = {}
    do
        local ____try, e = pcall(
            function()
                executor(
                    _G,
                    __TS__FunctionBind(self.resolve, self),
                    __TS__FunctionBind(self.reject, self)
                )
            end
        )
        if not ____try then
            self:reject(e)
        end
    end
end
function __TS__Promise.resolve(data)
    local promise = __TS__New(
        __TS__Promise,
        function()
        end
    )
    promise.state = __TS__PromiseState.Fulfilled
    promise.value = data
    return promise
end
function __TS__Promise.reject(reason)
    local promise = __TS__New(
        __TS__Promise,
        function()
        end
    )
    promise.state = __TS__PromiseState.Rejected
    promise.rejectionReason = reason
    return promise
end
__TS__Promise.prototype["then"] = function(self, onFulfilled, onRejected)
    local ____ = __TS__PromiseDeferred(_G)
    local promise = ____.promise
    local resolve = ____.resolve
    local reject = ____.reject
    if onFulfilled then
        local internalCallback = self:createPromiseResolvingCallback(onFulfilled, resolve, reject)
        __TS__ArrayPush(self.fulfilledCallbacks, internalCallback)
        if self.state == __TS__PromiseState.Fulfilled then
            internalCallback(_G, self.value)
        end
    else
        __TS__ArrayPush(
            self.fulfilledCallbacks,
            function() return resolve(_G, nil) end
        )
    end
    if onRejected then
        local internalCallback = self:createPromiseResolvingCallback(onRejected, resolve, reject)
        __TS__ArrayPush(self.rejectedCallbacks, internalCallback)
        if self.state == __TS__PromiseState.Rejected then
            internalCallback(_G, self.rejectionReason)
        end
    end
    return promise
end
function __TS__Promise.prototype.catch(self, onRejected)
    return self["then"](self, nil, onRejected)
end
function __TS__Promise.prototype.finally(self, onFinally)
    if onFinally then
        __TS__ArrayPush(self.finallyCallbacks, onFinally)
        if self.state ~= __TS__PromiseState.Pending then
            onFinally(_G)
        end
    end
    return self
end
function __TS__Promise.prototype.resolve(self, data)
    if self.state == __TS__PromiseState.Pending then
        self.state = __TS__PromiseState.Fulfilled
        self.value = data
        for ____, callback in ipairs(self.fulfilledCallbacks) do
            callback(_G, data)
        end
        for ____, callback in ipairs(self.finallyCallbacks) do
            callback(_G)
        end
    end
end
function __TS__Promise.prototype.reject(self, reason)
    if self.state == __TS__PromiseState.Pending then
        self.state = __TS__PromiseState.Rejected
        self.rejectionReason = reason
        for ____, callback in ipairs(self.rejectedCallbacks) do
            callback(_G, reason)
        end
        for ____, callback in ipairs(self.finallyCallbacks) do
            callback(_G)
        end
    end
end
function __TS__Promise.prototype.createPromiseResolvingCallback(self, f, resolve, reject)
    return function(____, value)
        do
            local ____try, e = pcall(
                function()
                    self:handleCallbackData(
                        f(_G, value),
                        resolve,
                        reject
                    )
                end
            )
            if not ____try then
                reject(_G, e)
            end
        end
    end
end
function __TS__Promise.prototype.handleCallbackData(self, data, resolve, reject)
    if __TS__IsPromiseLike(_G, data) then
        local nextpromise = data
        if nextpromise.state == __TS__PromiseState.Fulfilled then
            resolve(_G, nextpromise.value)
        elseif nextpromise.state == __TS__PromiseState.Rejected then
            reject(_G, nextpromise.rejectionReason)
        else
            data["then"](data, resolve, reject)
        end
    else
        resolve(_G, data)
    end
end

function __TS__PromiseAll(iterable)
    local results = {}
    local toResolve = {}
    local numToResolve = 0
    local i = 0
    for ____, item in __TS__Iterator(iterable) do
        if __TS__InstanceOf(item, __TS__Promise) then
            if item.state == __TS__PromiseState.Fulfilled then
                results[i + 1] = item.value
            elseif item.state == __TS__PromiseState.Rejected then
                return __TS__Promise.reject(item.rejectionReason)
            else
                numToResolve = numToResolve + 1
                toResolve[i] = item
            end
        else
            results[i + 1] = item
        end
        i = i + 1
    end
    if numToResolve == 0 then
        return __TS__Promise.resolve(results)
    end
    return __TS__New(
        __TS__Promise,
        function(____, resolve, reject)
            for index, promise in pairs(toResolve) do
                promise["then"](
                    promise,
                    function(____, data)
                        results[index + 1] = data
                        numToResolve = numToResolve - 1
                        if numToResolve == 0 then
                            resolve(_G, results)
                        end
                    end,
                    function(____, reason)
                        reject(_G, reason)
                    end
                )
            end
        end
    )
end

function __TS__PromiseAllSettled(iterable)
    local results = {}
    local toResolve = {}
    local numToResolve = 0
    local i = 0
    for ____, item in __TS__Iterator(iterable) do
        if __TS__InstanceOf(item, __TS__Promise) then
            if item.state == __TS__PromiseState.Fulfilled then
                results[i + 1] = {status = "fulfilled", value = item.value}
            elseif item.state == __TS__PromiseState.Rejected then
                results[i + 1] = {status = "rejected", reason = item.rejectionReason}
            else
                numToResolve = numToResolve + 1
                toResolve[i] = item
            end
        else
            results[i + 1] = {status = "fulfilled", value = item}
        end
        i = i + 1
    end
    if numToResolve == 0 then
        return __TS__Promise.resolve(results)
    end
    return __TS__New(
        __TS__Promise,
        function(____, resolve)
            for index, promise in pairs(toResolve) do
                promise["then"](
                    promise,
                    function(____, data)
                        results[index + 1] = {status = "fulfilled", value = data}
                        numToResolve = numToResolve - 1
                        if numToResolve == 0 then
                            resolve(_G, results)
                        end
                    end,
                    function(____, reason)
                        results[index + 1] = {status = "rejected", reason = reason}
                        numToResolve = numToResolve - 1
                        if numToResolve == 0 then
                            resolve(_G, results)
                        end
                    end
                )
            end
        end
    )
end

function __TS__PromiseAny(iterable)
    local rejections = {}
    local pending = {}
    for ____, item in __TS__Iterator(iterable) do
        if __TS__InstanceOf(item, __TS__Promise) then
            if item.state == __TS__PromiseState.Fulfilled then
                return __TS__Promise.resolve(item.value)
            elseif item.state == __TS__PromiseState.Rejected then
                __TS__ArrayPush(rejections, item.rejectionReason)
            else
                __TS__ArrayPush(pending, item)
            end
        else
            return __TS__Promise.resolve(item)
        end
    end
    if #pending == 0 then
        return __TS__Promise.reject("No promises to resolve with .any()")
    end
    local numResolved = 0
    return __TS__New(
        __TS__Promise,
        function(____, resolve, reject)
            for ____, promise in ipairs(pending) do
                promise["then"](
                    promise,
                    function(____, data)
                        resolve(_G, data)
                    end,
                    function(____, reason)
                        __TS__ArrayPush(rejections, reason)
                        numResolved = numResolved + 1
                        if numResolved == #pending then
                            reject(_G, {name = "AggregateError", message = "All Promises rejected", errors = rejections})
                        end
                    end
                )
            end
        end
    )
end

function __TS__PromiseRace(iterable)
    local pending = {}
    for ____, item in __TS__Iterator(iterable) do
        if __TS__InstanceOf(item, __TS__Promise) then
            if item.state == __TS__PromiseState.Fulfilled then
                return __TS__Promise.resolve(item.value)
            elseif item.state == __TS__PromiseState.Rejected then
                return __TS__Promise.reject(item.rejectionReason)
            else
                __TS__ArrayPush(pending, item)
            end
        else
            return __TS__Promise.resolve(item)
        end
    end
    return __TS__New(
        __TS__Promise,
        function(____, resolve, reject)
            for ____, promise in ipairs(pending) do
                promise["then"](
                    promise,
                    function(____, value) return resolve(_G, value) end,
                    function(____, reason) return reject(_G, reason) end
                )
            end
        end
    )
end

Set = (function()
    local Set = __TS__Class()
    Set.name = "Set"
    function Set.prototype.____constructor(self, values)
        self[Symbol.toStringTag] = "Set"
        self.size = 0
        self.nextKey = {}
        self.previousKey = {}
        if values == nil then
            return
        end
        local iterable = values
        if iterable[Symbol.iterator] then
            local iterator = iterable[Symbol.iterator](iterable)
            while true do
                local result = iterator:next()
                if result.done then
                    break
                end
                self:add(result.value)
            end
        else
            local array = values
            for ____, value in ipairs(array) do
                self:add(value)
            end
        end
    end
    function Set.prototype.add(self, value)
        local isNewValue = not self:has(value)
        if isNewValue then
            self.size = self.size + 1
        end
        if self.firstKey == nil then
            self.firstKey = value
            self.lastKey = value
        elseif isNewValue then
            self.nextKey[self.lastKey] = value
            self.previousKey[value] = self.lastKey
            self.lastKey = value
        end
        return self
    end
    function Set.prototype.clear(self)
        self.nextKey = {}
        self.previousKey = {}
        self.firstKey = nil
        self.lastKey = nil
        self.size = 0
    end
    function Set.prototype.delete(self, value)
        local contains = self:has(value)
        if contains then
            self.size = self.size - 1
            local next = self.nextKey[value]
            local previous = self.previousKey[value]
            if next and previous then
                self.nextKey[previous] = next
                self.previousKey[next] = previous
            elseif next then
                self.firstKey = next
                self.previousKey[next] = nil
            elseif previous then
                self.lastKey = previous
                self.nextKey[previous] = nil
            else
                self.firstKey = nil
                self.lastKey = nil
            end
            self.nextKey[value] = nil
            self.previousKey[value] = nil
        end
        return contains
    end
    function Set.prototype.forEach(self, callback)
        for ____, key in __TS__Iterator(
            self:keys()
        ) do
            callback(_G, key, key, self)
        end
    end
    function Set.prototype.has(self, value)
        return (self.nextKey[value] ~= nil) or (self.lastKey == value)
    end
    Set.prototype[Symbol.iterator] = function(self)
        return self:values()
    end
    function Set.prototype.entries(self)
        local nextKey = self.nextKey
        local key = self.firstKey
        return {
            [Symbol.iterator] = function(self)
                return self
            end,
            next = function(self)
                local result = {done = not key, value = {key, key}}
                key = nextKey[key]
                return result
            end
        }
    end
    function Set.prototype.keys(self)
        local nextKey = self.nextKey
        local key = self.firstKey
        return {
            [Symbol.iterator] = function(self)
                return self
            end,
            next = function(self)
                local result = {done = not key, value = key}
                key = nextKey[key]
                return result
            end
        }
    end
    function Set.prototype.values(self)
        local nextKey = self.nextKey
        local key = self.firstKey
        return {
            [Symbol.iterator] = function(self)
                return self
            end,
            next = function(self)
                local result = {done = not key, value = key}
                key = nextKey[key]
                return result
            end
        }
    end
    Set[Symbol.species] = Set
    return Set
end)()

WeakMap = (function()
    local WeakMap = __TS__Class()
    WeakMap.name = "WeakMap"
    function WeakMap.prototype.____constructor(self, entries)
        self[Symbol.toStringTag] = "WeakMap"
        self.items = {}
        setmetatable(self.items, {__mode = "k"})
        if entries == nil then
            return
        end
        local iterable = entries
        if iterable[Symbol.iterator] then
            local iterator = iterable[Symbol.iterator](iterable)
            while true do
                local result = iterator:next()
                if result.done then
                    break
                end
                local value = result.value
                self.items[value[1]] = value[2]
            end
        else
            for ____, kvp in ipairs(entries) do
                self.items[kvp[1]] = kvp[2]
            end
        end
    end
    function WeakMap.prototype.delete(self, key)
        local contains = self:has(key)
        self.items[key] = nil
        return contains
    end
    function WeakMap.prototype.get(self, key)
        return self.items[key]
    end
    function WeakMap.prototype.has(self, key)
        return self.items[key] ~= nil
    end
    function WeakMap.prototype.set(self, key, value)
        self.items[key] = value
        return self
    end
    WeakMap[Symbol.species] = WeakMap
    return WeakMap
end)()

WeakSet = (function()
    local WeakSet = __TS__Class()
    WeakSet.name = "WeakSet"
    function WeakSet.prototype.____constructor(self, values)
        self[Symbol.toStringTag] = "WeakSet"
        self.items = {}
        setmetatable(self.items, {__mode = "k"})
        if values == nil then
            return
        end
        local iterable = values
        if iterable[Symbol.iterator] then
            local iterator = iterable[Symbol.iterator](iterable)
            while true do
                local result = iterator:next()
                if result.done then
                    break
                end
                self.items[result.value] = true
            end
        else
            for ____, value in ipairs(values) do
                self.items[value] = true
            end
        end
    end
    function WeakSet.prototype.add(self, value)
        self.items[value] = true
        return self
    end
    function WeakSet.prototype.delete(self, value)
        local contains = self:has(value)
        self.items[value] = nil
        return contains
    end
    function WeakSet.prototype.has(self, value)
        return self.items[value] == true
    end
    WeakSet[Symbol.species] = WeakSet
    return WeakSet
end)()

function __TS__SourceMapTraceBack(fileName, sourceMap)
    _G.__TS__sourcemap = _G.__TS__sourcemap or ({})
    _G.__TS__sourcemap[fileName] = sourceMap
    if _G.__TS__originalTraceback == nil then
        _G.__TS__originalTraceback = debug.traceback
        debug.traceback = function(thread, message, level)
            local trace
            if ((thread == nil) and (message == nil)) and (level == nil) then
                trace = _G.__TS__originalTraceback()
            else
                trace = _G.__TS__originalTraceback(thread, message, level)
            end
            if type(trace) ~= "string" then
                return trace
            end
            local result = string.gsub(
                trace,
                "(%S+).lua:(%d+)",
                function(file, line)
                    local fileSourceMap = _G.__TS__sourcemap[file .. ".lua"]
                    if fileSourceMap and fileSourceMap[line] then
                        return (file .. ".ts:") .. tostring(fileSourceMap[line])
                    end
                    return (file .. ".lua:") .. line
                end
            )
            return result
        end
    end
end

function __TS__Spread(iterable)
    local arr = {}
    if type(iterable) == "string" then
        do
            local i = 0
            while i < #iterable do
                arr[#arr + 1] = __TS__StringAccess(iterable, i)
                i = i + 1
            end
        end
    else
        for ____, item in __TS__Iterator(iterable) do
            arr[#arr + 1] = item
        end
    end
    return __TS__Unpack(arr)
end

function __TS__StringCharAt(self, pos)
    if pos ~= pos then
        pos = 0
    end
    if pos < 0 then
        return ""
    end
    return string.sub(self, pos + 1, pos + 1)
end

function __TS__StringCharCodeAt(self, index)
    if index ~= index then
        index = 0
    end
    if index < 0 then
        return 0 / 0
    end
    return string.byte(self, index + 1) or (0 / 0)
end

function __TS__StringConcat(str1, ...)
    local args = {...}
    local out = str1
    for ____, arg in ipairs(args) do
        out = out .. arg
    end
    return out
end

function __TS__StringEndsWith(self, searchString, endPosition)
    if (endPosition == nil) or (endPosition > #self) then
        endPosition = #self
    end
    return string.sub(self, (endPosition - #searchString) + 1, endPosition) == searchString
end

function __TS__StringIncludes(self, searchString, position)
    if not position then
        position = 1
    else
        position = position + 1
    end
    local index = string.find(self, searchString, position, true)
    return index ~= nil
end

function __TS__StringPadEnd(self, maxLength, fillString)
    if fillString == nil then
        fillString = " "
    end
    if maxLength ~= maxLength then
        maxLength = 0
    end
    if (maxLength == -math.huge) or (maxLength == math.huge) then
        error("Invalid string length", 0)
    end
    if (#self >= maxLength) or (#fillString == 0) then
        return self
    end
    maxLength = maxLength - #self
    if maxLength > #fillString then
        fillString = fillString .. string.rep(
            fillString,
            math.floor(maxLength / #fillString)
        )
    end
    return self .. string.sub(
        fillString,
        1,
        math.floor(maxLength)
    )
end

function __TS__StringPadStart(self, maxLength, fillString)
    if fillString == nil then
        fillString = " "
    end
    if maxLength ~= maxLength then
        maxLength = 0
    end
    if (maxLength == -math.huge) or (maxLength == math.huge) then
        error("Invalid string length", 0)
    end
    if (#self >= maxLength) or (#fillString == 0) then
        return self
    end
    maxLength = maxLength - #self
    if maxLength > #fillString then
        fillString = fillString .. string.rep(
            fillString,
            math.floor(maxLength / #fillString)
        )
    end
    return string.sub(
        fillString,
        1,
        math.floor(maxLength)
    ) .. self
end

function __TS__StringReplace(source, searchValue, replaceValue)
    searchValue = string.gsub(searchValue, "[%%%(%)%.%+%-%*%?%[%^%$]", "%%%1")
    if type(replaceValue) == "string" then
        replaceValue = string.gsub(replaceValue, "%%", "%%%%")
        local result = string.gsub(source, searchValue, replaceValue, 1)
        return result
    else
        local result = string.gsub(
            source,
            searchValue,
            function(match) return replaceValue(_G, match) end,
            1
        )
        return result
    end
end

function __TS__StringSlice(self, start, ____end)
    if (start == nil) or (start ~= start) then
        start = 0
    end
    if ____end ~= ____end then
        ____end = 0
    end
    if start >= 0 then
        start = start + 1
    end
    if (____end ~= nil) and (____end < 0) then
        ____end = ____end - 1
    end
    return string.sub(self, start, ____end)
end

function __TS__StringSplit(source, separator, limit)
    if limit == nil then
        limit = 4294967295
    end
    if limit == 0 then
        return {}
    end
    local out = {}
    local index = 0
    local count = 0
    if (separator == nil) or (separator == "") then
        while (index < (#source - 1)) and (count < limit) do
            out[count + 1] = __TS__StringAccess(source, index)
            count = count + 1
            index = index + 1
        end
    else
        local separatorLength = #separator
        local nextIndex = (string.find(source, separator, nil, true) or 0) - 1
        while (nextIndex >= 0) and (count < limit) do
            out[count + 1] = __TS__StringSubstring(source, index, nextIndex)
            count = count + 1
            index = nextIndex + separatorLength
            nextIndex = (string.find(
                source,
                separator,
                math.max(index + 1, 1),
                true
            ) or 0) - 1
        end
    end
    if count < limit then
        out[count + 1] = __TS__StringSubstring(source, index)
    end
    return out
end

function __TS__StringStartsWith(self, searchString, position)
    if (position == nil) or (position < 0) then
        position = 0
    end
    return string.sub(self, position + 1, #searchString + position) == searchString
end

function __TS__StringTrim(self)
    local result = string.gsub(self, "^[%s ﻿]*(.-)[%s ﻿]*$", "%1")
    return result
end

function __TS__StringTrimEnd(self)
    local result = string.gsub(self, "[%s ﻿]*$", "")
    return result
end

function __TS__StringTrimStart(self)
    local result = string.gsub(self, "^[%s ﻿]*", "")
    return result
end

____symbolRegistry = {}
function __TS__SymbolRegistryFor(key)
    if not ____symbolRegistry[key] then
        ____symbolRegistry[key] = __TS__Symbol(key)
    end
    return ____symbolRegistry[key]
end
function __TS__SymbolRegistryKeyFor(sym)
    for key in pairs(____symbolRegistry) do
        if ____symbolRegistry[key] == sym then
            return key
        end
    end
end

function __TS__TypeOf(value)
    local luaType = type(value)
    if luaType == "table" then
        return "object"
    elseif luaType == "nil" then
        return "undefined"
    else
        return luaType
    end
end

 end,
["main"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____isaacscript_2Dcommon = require("lua_modules.isaacscript-common.dist.index")
local addFlag = ____isaacscript_2Dcommon.addFlag
local getPlayers = ____isaacscript_2Dcommon.getPlayers
local playerDMG, roomClear
function playerDMG(self, entity)
    local player = entity:ToPlayer()
    if player == nil then
        return
    end
    if (player:GetPlayerType() ~= PlayerType.PLAYER_LAZARUS_B) and (player:GetPlayerType() ~= PlayerType.PLAYER_LAZARUS2_B) then
        return
    end
    player:UseActiveItem(
        CollectibleType.COLLECTIBLE_FLIP,
        addFlag(nil, UseFlag.USE_NOANIM, UseFlag.USE_NOANNOUNCER),
        -1
    )
end
function roomClear(self)
    for ____, i in ipairs(
        getPlayers(nil, true)
    ) do
        if (i:GetPlayerType() ~= PlayerType.PLAYER_LAZARUS_B) and (i:GetPlayerType() ~= PlayerType.PLAYER_LAZARUS2_B) then
            return
        end
        i:UseActiveItem(
            CollectibleType.COLLECTIBLE_FLIP,
            addFlag(nil, UseFlag.USE_NOANIM, UseFlag.USE_NOANNOUNCER),
            -1
        )
    end
end
function ____exports.default(self)
    local mod = RegisterMod("Tainted Laz Rework", 1)
    mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, playerDMG)
    mod:AddCallback(ModCallbacks.MC_PRE_SPAWN_CLEAN_AWARD, roomClear)
end
return ____exports
 end,
["bundleEntry"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____main = require("main")
local main = ____main.default
main(nil)
return ____exports
 end,
["lua_modules.isaacscript-common.dist.index"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
do
    local ____reorderedCallbacks = require("lua_modules.isaacscript-common.dist.callbacks.reorderedCallbacks")
    local forceNewLevelCallback = ____reorderedCallbacks.forceNewLevelCallback
    local forceNewRoomCallback = ____reorderedCallbacks.forceNewRoomCallback
    ____exports.forceNewLevelCallback = forceNewLevelCallback
    ____exports.forceNewRoomCallback = forceNewRoomCallback
end
do
    local ____constants = require("lua_modules.isaacscript-common.dist.constants")
    local CHARACTERS_WITH_NO_RED_HEARTS = ____constants.CHARACTERS_WITH_NO_RED_HEARTS
    local DISTANCE_OF_GRID_TILE = ____constants.DISTANCE_OF_GRID_TILE
    local DOOR_HITBOX_DISTANCE = ____constants.DOOR_HITBOX_DISTANCE
    local FIRST_GLITCHED_COLLECTIBLE_TYPE = ____constants.FIRST_GLITCHED_COLLECTIBLE_TYPE
    local GENESIS_ROOM_VARIANT = ____constants.GENESIS_ROOM_VARIANT
    local GOLDEN_TRINKET_SHIFT = ____constants.GOLDEN_TRINKET_SHIFT
    local GRID_INDEX_CENTER_OF_1X1_ROOM = ____constants.GRID_INDEX_CENTER_OF_1X1_ROOM
    local MAX_NUM_DOORS = ____constants.MAX_NUM_DOORS
    local MAX_NUM_INPUTS = ____constants.MAX_NUM_INPUTS
    local MAX_PLAYER_POCKET_ITEM_SLOTS = ____constants.MAX_PLAYER_POCKET_ITEM_SLOTS
    local MAX_PLAYER_SPEED_IN_UNITS = ____constants.MAX_PLAYER_SPEED_IN_UNITS
    local MAX_PLAYER_TRINKET_SLOTS = ____constants.MAX_PLAYER_TRINKET_SLOTS
    local MAX_ROOM_INDEX = ____constants.MAX_ROOM_INDEX
    local MAX_VANILLA_COLLECTIBLE_TYPE = ____constants.MAX_VANILLA_COLLECTIBLE_TYPE
    local SINGLE_USE_ACTIVE_COLLECTIBLE_TYPES = ____constants.SINGLE_USE_ACTIVE_COLLECTIBLE_TYPES
    ____exports.CHARACTERS_WITH_NO_RED_HEARTS = CHARACTERS_WITH_NO_RED_HEARTS
    ____exports.DISTANCE_OF_GRID_TILE = DISTANCE_OF_GRID_TILE
    ____exports.DOOR_HITBOX_DISTANCE = DOOR_HITBOX_DISTANCE
    ____exports.FIRST_GLITCHED_COLLECTIBLE_TYPE = FIRST_GLITCHED_COLLECTIBLE_TYPE
    ____exports.GENESIS_ROOM_VARIANT = GENESIS_ROOM_VARIANT
    ____exports.GOLDEN_TRINKET_SHIFT = GOLDEN_TRINKET_SHIFT
    ____exports.GRID_INDEX_CENTER_OF_1X1_ROOM = GRID_INDEX_CENTER_OF_1X1_ROOM
    ____exports.MAX_NUM_DOORS = MAX_NUM_DOORS
    ____exports.MAX_NUM_INPUTS = MAX_NUM_INPUTS
    ____exports.MAX_PLAYER_POCKET_ITEM_SLOTS = MAX_PLAYER_POCKET_ITEM_SLOTS
    ____exports.MAX_PLAYER_SPEED_IN_UNITS = MAX_PLAYER_SPEED_IN_UNITS
    ____exports.MAX_PLAYER_TRINKET_SLOTS = MAX_PLAYER_TRINKET_SLOTS
    ____exports.MAX_ROOM_INDEX = MAX_ROOM_INDEX
    ____exports.MAX_VANILLA_COLLECTIBLE_TYPE = MAX_VANILLA_COLLECTIBLE_TYPE
    ____exports.SINGLE_USE_ACTIVE_COLLECTIBLE_TYPES = SINGLE_USE_ACTIVE_COLLECTIBLE_TYPES
end
do
    local ____disableInputs = require("lua_modules.isaacscript-common.dist.features.disableInputs")
    local disableAllInputs = ____disableInputs.disableAllInputs
    local disableAllInputsExceptFor = ____disableInputs.disableAllInputsExceptFor
    local disableMovementInputs = ____disableInputs.disableMovementInputs
    local disableShootingInputs = ____disableInputs.disableShootingInputs
    local enableAllInputs = ____disableInputs.enableAllInputs
    local enableAllInputsExceptFor = ____disableInputs.enableAllInputsExceptFor
    ____exports.disableAllInputs = disableAllInputs
    ____exports.disableAllInputsExceptFor = disableAllInputsExceptFor
    ____exports.disableMovementInputs = disableMovementInputs
    ____exports.disableShootingInputs = disableShootingInputs
    ____exports.enableAllInputs = enableAllInputs
    ____exports.enableAllInputsExceptFor = enableAllInputsExceptFor
end
do
    local ____forgottenSwitch = require("lua_modules.isaacscript-common.dist.features.forgottenSwitch")
    local forgottenSwitch = ____forgottenSwitch.forgottenSwitch
    ____exports.forgottenSwitch = forgottenSwitch
end
do
    local ____runInNFrames = require("lua_modules.isaacscript-common.dist.features.runInNFrames")
    local runInNFrames = ____runInNFrames.runInNFrames
    local runNextFrame = ____runInNFrames.runNextFrame
    ____exports.runInNFrames = runInNFrames
    ____exports.runNextFrame = runNextFrame
end
do
    local ____main = require("lua_modules.isaacscript-common.dist.features.saveDataManager.main")
    local saveDataManager = ____main.saveDataManager
    local saveDataManagerSave = ____main.saveDataManagerSave
    local saveDataManagerSetGlobal = ____main.saveDataManagerSetGlobal
    ____exports.saveDataManager = saveDataManager
    ____exports.saveDataManagerSave = saveDataManagerSave
    ____exports.saveDataManagerSetGlobal = saveDataManagerSetGlobal
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.array")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.collectibles")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____deepCopy = require("lua_modules.isaacscript-common.dist.functions.deepCopy")
    local deepCopy = ____deepCopy.deepCopy
    ____exports.deepCopy = deepCopy
end
do
    local ____deepCopyTests = require("lua_modules.isaacscript-common.dist.functions.deepCopyTests")
    local deepCopyTests = ____deepCopyTests.deepCopyTests
    ____exports.deepCopyTests = deepCopyTests
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.doors")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.entity")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.flag")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.gridEntity")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.input")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.items")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.json")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.log")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.math")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.pickups")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.player")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.random")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.revive")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.rooms")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.sprite")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.stage")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.tears")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.transformations")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.trinkets")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.ui")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.util")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____transformationMap = require("lua_modules.isaacscript-common.dist.transformationMap")
    local ITEM_TO_TRANSFORMATION_MAP = ____transformationMap.ITEM_TO_TRANSFORMATION_MAP
    local TRANSFORMATION_TO_ITEMS_MAP = ____transformationMap.TRANSFORMATION_TO_ITEMS_MAP
    local TRANSFORMATION_TO_TAG_MAP = ____transformationMap.TRANSFORMATION_TO_TAG_MAP
    ____exports.ITEM_TO_TRANSFORMATION_MAP = ITEM_TO_TRANSFORMATION_MAP
    ____exports.TRANSFORMATION_TO_ITEMS_MAP = TRANSFORMATION_TO_ITEMS_MAP
    ____exports.TRANSFORMATION_TO_TAG_MAP = TRANSFORMATION_TO_TAG_MAP
end
do
    local ____HealthType = require("lua_modules.isaacscript-common.dist.types.HealthType")
    local HealthType = ____HealthType.default
    ____exports.HealthType = HealthType
end
do
    local ____ModCallbacksCustom = require("lua_modules.isaacscript-common.dist.types.ModCallbacksCustom")
    local ModCallbacksCustom = ____ModCallbacksCustom.default
    ____exports.ModCallbacksCustom = ModCallbacksCustom
end
do
    local ____ModUpgraded = require("lua_modules.isaacscript-common.dist.types.ModUpgraded")
    local ModUpgraded = ____ModUpgraded.default
    ____exports.ModUpgraded = ModUpgraded
end
do
    local ____PocketItemType = require("lua_modules.isaacscript-common.dist.types.PocketItemType")
    local PocketItemType = ____PocketItemType.default
    ____exports.PocketItemType = PocketItemType
end
do
    local ____upgradeMod = require("lua_modules.isaacscript-common.dist.upgradeMod")
    local upgradeMod = ____upgradeMod.upgradeMod
    ____exports.upgradeMod = upgradeMod
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.reorderedCallbacks"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local postGameStartedReordered = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postGameStartedReordered")
local postNewLevelReordered = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postNewLevelReordered")
local postNewRoomReordered = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postNewRoomReordered")
local currentStage, currentStageType, usedGlowingHourGlass, forceNewLevel, forceNewRoom, hasSubscriptions, useItemGlowingHourGlass, postGameStartedVanilla, postNewLevelVanilla, postNewRoomVanilla, recordCurrentStage
function hasSubscriptions(self)
    return (postGameStartedReordered:hasSubscriptions() or postNewLevelReordered:hasSubscriptions()) or postNewRoomReordered:hasSubscriptions()
end
function useItemGlowingHourGlass(self)
    usedGlowingHourGlass = true
end
function postGameStartedVanilla(self, isContinued)
    if not hasSubscriptions(nil) then
        return
    end
    postGameStartedReordered:fire(isContinued)
    recordCurrentStage(nil)
    postNewLevelReordered:fire()
    postNewRoomReordered:fire()
end
function postNewLevelVanilla(self)
    if not hasSubscriptions(nil) then
        return
    end
    local game = Game()
    local gameFrameCount = game:GetFrameCount()
    if (gameFrameCount == 0) and (not forceNewLevel) then
        return
    end
    forceNewLevel = false
    recordCurrentStage(nil)
    postNewLevelReordered:fire()
    postNewRoomReordered:fire()
end
function postNewRoomVanilla(self)
    if not hasSubscriptions(nil) then
        return
    end
    local game = Game()
    local gameFrameCount = game:GetFrameCount()
    local level = game:GetLevel()
    local stage = level:GetStage()
    local stageType = level:GetStageType()
    if usedGlowingHourGlass then
        usedGlowingHourGlass = false
        if (currentStage ~= stage) or (currentStageType ~= stageType) then
            recordCurrentStage(nil)
            postNewLevelReordered:fire()
            postNewRoomReordered:fire()
            return
        end
    end
    if (((gameFrameCount == 0) or (currentStage ~= stage)) or (currentStageType ~= stageType)) and (not forceNewRoom) then
        return
    end
    forceNewRoom = false
    postNewRoomReordered:fire()
end
function recordCurrentStage(self)
    local game = Game()
    local level = game:GetLevel()
    local stage = level:GetStage()
    local stageType = level:GetStageType()
    currentStage = stage
    currentStageType = stageType
end
currentStage = nil
currentStageType = nil
usedGlowingHourGlass = false
forceNewLevel = false
forceNewRoom = false
function ____exports.init(self, mod)
    mod:AddCallback(ModCallbacks.MC_USE_ITEM, useItemGlowingHourGlass, CollectibleType.COLLECTIBLE_GLOWING_HOUR_GLASS)
    mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, postGameStartedVanilla)
    mod:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, postNewLevelVanilla)
    mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, postNewRoomVanilla)
end
function ____exports.forceNewLevelCallback(self)
    forceNewLevel = true
end
function ____exports.forceNewRoomCallback(self)
    forceNewRoom = true
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postGameStartedReordered"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback)
    __TS__ArrayPush(subscriptions, {callback})
end
function ____exports.fire(self, isContinued)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        callback(nil, isContinued)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postNewLevelReordered"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback)
    __TS__ArrayPush(subscriptions, {callback})
end
function ____exports.fire(self)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        callback(nil)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postNewRoomReordered"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback)
    __TS__ArrayPush(subscriptions, {callback})
end
function ____exports.fire(self)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        callback(nil)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.constants"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
____exports.CHARACTERS_WITH_NO_RED_HEARTS = __TS__New(Set, {PlayerType.PLAYER_XXX, PlayerType.PLAYER_BLACKJUDAS, PlayerType.PLAYER_JUDAS_B, PlayerType.PLAYER_XXX_B, PlayerType.PLAYER_THEFORGOTTEN_B, PlayerType.PLAYER_BETHANY_B})
____exports.DISTANCE_OF_GRID_TILE = 40
____exports.DOOR_HITBOX_DISTANCE = 11
____exports.FIRST_GLITCHED_COLLECTIBLE_TYPE = (1 << 32) - 1
____exports.GENESIS_ROOM_VARIANT = 1000
____exports.GOLDEN_TRINKET_SHIFT = 1 << 15
____exports.GRID_INDEX_CENTER_OF_1X1_ROOM = 67
____exports.MAX_NUM_DOORS = 8
____exports.MAX_NUM_INPUTS = 4
____exports.MAX_PLAYER_POCKET_ITEM_SLOTS = 4
____exports.MAX_ROOM_INDEX = 168
____exports.MAX_PLAYER_SPEED_IN_UNITS = 9.8
____exports.MAX_PLAYER_TRINKET_SLOTS = 2
____exports.MAX_VANILLA_COLLECTIBLE_TYPE = CollectibleType.COLLECTIBLE_DECAP_ATTACK
____exports.SINGLE_USE_ACTIVE_COLLECTIBLE_TYPES = __TS__New(Set, {CollectibleType.COLLECTIBLE_FORGET_ME_NOW, CollectibleType.COLLECTIBLE_EDENS_SOUL, CollectibleType.COLLECTIBLE_ALABASTER_BOX, CollectibleType.COLLECTIBLE_PLAN_C, CollectibleType.COLLECTIBLE_MAMA_MEGA, CollectibleType.COLLECTIBLE_SACRIFICIAL_ALTAR, CollectibleType.COLLECTIBLE_DEATH_CERTIFICATE, CollectibleType.COLLECTIBLE_R_KEY})
____exports.TSTL_MAP_BRAND = "__TSTL_MAP"
____exports.TSTL_SET_BRAND = "__TSTL_SET"
____exports.TSTL_CLASS_BRAND = "__TSTL_CLASS"
____exports.TSTL_OBJECT_WITH_NUMBER_KEYS_BRAND = "__TSTL_OBJECT_WITH_NUMBER_KEYS"
____exports.VECTOR_BRAND = "__VECTOR"
return ____exports
 end,
["lua_modules.isaacscript-common.dist.features.disableInputs"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____errors = require("lua_modules.isaacscript-common.dist.errors")
local getUpgradeErrorMsg = ____errors.getUpgradeErrorMsg
local ____main = require("lua_modules.isaacscript-common.dist.features.saveDataManager.main")
local saveDataManager = ____main.saveDataManager
local v, isActionPressed, isActionTriggered, getActionValue, getReturnValue
function isActionPressed(self, _entity, _inputHook, buttonAction)
    return getReturnValue(nil, buttonAction, true)
end
function isActionTriggered(self, _entity, _inputHook, buttonAction)
    return getReturnValue(nil, buttonAction, true)
end
function getActionValue(self, _entity, _inputHook, buttonAction)
    return getReturnValue(nil, buttonAction, false)
end
function getReturnValue(self, buttonAction, booleanCallback)
    local disableValue = ((booleanCallback and (function() return false end)) or (function() return 0 end))()
    if not v.run.enableSomeInputs then
        return disableValue
    end
    if (v.run.whitelist ~= nil) and (not v.run.whitelist:has(buttonAction)) then
        return disableValue
    end
    if (v.run.blacklist ~= nil) and v.run.blacklist:has(buttonAction) then
        return disableValue
    end
    return nil
end
local FEATURE_NAME = "input disabler"
local MOVEMENT_BUTTONS = __TS__New(Set, {ButtonAction.ACTION_LEFT, ButtonAction.ACTION_RIGHT, ButtonAction.ACTION_UP, ButtonAction.ACTION_DOWN})
local SHOOTING_BUTTONS = __TS__New(Set, {ButtonAction.ACTION_SHOOTLEFT, ButtonAction.ACTION_SHOOTRIGHT, ButtonAction.ACTION_SHOOTUP, ButtonAction.ACTION_SHOOTDOWN})
local initialized = false
v = {run = {enableSomeInputs = true, whitelist = nil, blacklist = nil}}
function ____exports.init(self, mod)
    initialized = true
    saveDataManager(nil, "disableInputs", v)
    mod:AddCallback(ModCallbacks.MC_INPUT_ACTION, isActionPressed, InputHook.IS_ACTION_PRESSED)
    mod:AddCallback(ModCallbacks.MC_INPUT_ACTION, isActionTriggered, InputHook.IS_ACTION_TRIGGERED)
    mod:AddCallback(ModCallbacks.MC_INPUT_ACTION, getActionValue, InputHook.GET_ACTION_VALUE)
end
function ____exports.enableAllInputs(self)
    if not initialized then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    v.run.enableSomeInputs = true
    v.run.whitelist = nil
    v.run.blacklist = nil
end
function ____exports.disableAllInputs(self)
    if not initialized then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    v.run.enableSomeInputs = false
    v.run.whitelist = nil
    v.run.blacklist = nil
end
function ____exports.enableAllInputsExceptFor(self, blacklist)
    if not initialized then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    v.run.enableSomeInputs = true
    v.run.whitelist = nil
    v.run.blacklist = blacklist
end
function ____exports.disableAllInputsExceptFor(self, whitelist)
    if not initialized then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    v.run.enableSomeInputs = true
    v.run.whitelist = whitelist
    v.run.blacklist = nil
end
function ____exports.disableMovementInputs(self)
    ____exports.enableAllInputsExceptFor(nil, MOVEMENT_BUTTONS)
end
function ____exports.disableShootingInputs(self)
    ____exports.enableAllInputsExceptFor(nil, SHOOTING_BUTTONS)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.errors"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
function ____exports.getUpgradeErrorMsg(self, featureName)
    return ("The " .. featureName) .. " is not initialized. You must first upgrade your mod object by calling the \"upgradeMod()\" function."
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.features.saveDataManager.main"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____errors = require("lua_modules.isaacscript-common.dist.errors")
local getUpgradeErrorMsg = ____errors.getUpgradeErrorMsg
local ____deepCopy = require("lua_modules.isaacscript-common.dist.functions.deepCopy")
local deepCopy = ____deepCopy.deepCopy
local SerializationType = ____deepCopy.SerializationType
local ____util = require("lua_modules.isaacscript-common.dist.functions.util")
local tableClear = ____util.tableClear
local ____SaveData = require("lua_modules.isaacscript-common.dist.types.SaveData")
local SaveDataKeys = ____SaveData.SaveDataKeys
local ____load = require("lua_modules.isaacscript-common.dist.features.saveDataManager.load")
local loadFromDisk = ____load.loadFromDisk
local ____save = require("lua_modules.isaacscript-common.dist.features.saveDataManager.save")
local saveToDisk = ____save.saveToDisk
local FEATURE_NAME, mod, loadedDataOnThisRun, saveDataMap, saveDataDefaultsMap, saveDataConditionalFuncMap, postPlayerInit, preGameExit, postNewLevel, postNewRoom, restoreDefaultsAll, restoreDefaults, clearAndCopyAllElements
function postPlayerInit(self)
    if mod == nil then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    if loadedDataOnThisRun then
        return
    end
    loadedDataOnThisRun = true
    loadFromDisk(nil, mod, saveDataMap)
    local game = Game()
    local gameFrameCount = game:GetFrameCount()
    local isContinued = gameFrameCount ~= 0
    if not isContinued then
        restoreDefaultsAll(nil)
    end
end
function preGameExit(self)
    if mod == nil then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    saveToDisk(nil, mod, saveDataMap, saveDataConditionalFuncMap)
    restoreDefaultsAll(nil)
    loadedDataOnThisRun = false
end
function postNewLevel(self)
    restoreDefaults(nil, SaveDataKeys.Level)
end
function postNewRoom(self)
    restoreDefaults(nil, SaveDataKeys.Room)
end
function restoreDefaultsAll(self)
    restoreDefaults(nil, SaveDataKeys.Run)
    restoreDefaults(nil, SaveDataKeys.Level)
    restoreDefaults(nil, SaveDataKeys.Room)
end
function restoreDefaults(self, childTableName)
    if ((childTableName ~= SaveDataKeys.Run) and (childTableName ~= SaveDataKeys.Level)) and (childTableName ~= SaveDataKeys.Room) then
        error("Unknown child table name of: " .. childTableName)
    end
    for subscriberName, saveData in pairs(saveDataMap) do
        do
            local childTable = saveData[childTableName]
            if childTable == nil then
                goto __continue14
            end
            local saveDataDefaults = saveDataDefaultsMap[subscriberName]
            if saveDataDefaults == nil then
                error("Failed to find the default copy of the save data for subscriber: " .. subscriberName)
            end
            local childTableDefaults = saveDataDefaults[childTableName]
            if childTableDefaults == nil then
                error((("Failed to find the default copy of the child table \"" .. childTableName) .. "\" for subscriber: ") .. subscriberName)
            end
            local childTableDefaultsTable = childTableDefaults
            local childTableDefaultsTableCopy = deepCopy(nil, childTableDefaultsTable, SerializationType.NONE, (subscriberName .. " --> ") .. childTableName)
            clearAndCopyAllElements(nil, childTable, childTableDefaultsTableCopy)
        end
        ::__continue14::
    end
end
function clearAndCopyAllElements(self, oldTable, newTable)
    tableClear(nil, oldTable)
    for key, value in pairs(newTable) do
        oldTable[key] = value
    end
end
FEATURE_NAME = "save data manager"
mod = nil
loadedDataOnThisRun = false
saveDataMap = {}
saveDataDefaultsMap = {}
saveDataConditionalFuncMap = __TS__New(Map)
function ____exports.init(self, incomingMod)
    mod = incomingMod
    mod:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, postPlayerInit)
    mod:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT, preGameExit)
    mod:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, postNewLevel)
    mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, postNewRoom)
end
function ____exports.saveDataManager(self, key, saveData, conditionalFunc)
    if mod == nil then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    local keyType = type(key)
    if keyType ~= "string" then
        error("The save data manager requires that keys are strings. You tried to use a key of type: " .. keyType)
    end
    if saveDataMap[key] ~= nil then
        error("The save data manager is already managing save data for a key of: " .. key)
    end
    saveDataMap[key] = saveData
    local saveDataTable = saveData
    local saveDataTableCopy = deepCopy(nil, saveDataTable, SerializationType.NONE, key)
    local saveDataCopy = saveDataTableCopy
    saveDataDefaultsMap[key] = saveDataCopy
    if conditionalFunc ~= nil then
        saveDataConditionalFuncMap:set(key, conditionalFunc)
    end
end
function ____exports.saveDataManagerSave(self)
    if mod == nil then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    saveToDisk(nil, mod, saveDataMap, saveDataConditionalFuncMap)
end
function ____exports.saveDataManagerSetGlobal(self)
    g = saveDataMap
    gd = saveDataDefaultsMap
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.deepCopy"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____constants = require("lua_modules.isaacscript-common.dist.constants")
local TSTL_CLASS_BRAND = ____constants.TSTL_CLASS_BRAND
local TSTL_MAP_BRAND = ____constants.TSTL_MAP_BRAND
local TSTL_OBJECT_WITH_NUMBER_KEYS_BRAND = ____constants.TSTL_OBJECT_WITH_NUMBER_KEYS_BRAND
local TSTL_SET_BRAND = ____constants.TSTL_SET_BRAND
local VECTOR_BRAND = ____constants.VECTOR_BRAND
local ____debug = require("lua_modules.isaacscript-common.dist.debug")
local DEBUG = ____debug.DEBUG
local ____log = require("lua_modules.isaacscript-common.dist.functions.log")
local log = ____log.log
local ____util = require("lua_modules.isaacscript-common.dist.functions.util")
local isSerializedVector = ____util.isSerializedVector
local isVector = ____util.isVector
local TSTL_CLASS_KEYS, isTSTLClass, cloneClass, getNewClassFromMetatable, deepCopyValue, copyVector, checkMetatable, validateValue
function ____exports.deepCopy(self, oldObject, serializationType, traversalDescription)
    if serializationType == nil then
        serializationType = ____exports.SerializationType.NONE
    end
    if traversalDescription == nil then
        traversalDescription = ""
    end
    local oldObjectType = type(oldObject)
    if oldObjectType ~= "table" then
        error(("The deepCopy function was given a " .. oldObjectType) .. " instead of a table.")
    end
    if DEBUG then
        local logString = "deepCopy is operating on: " .. traversalDescription
        if serializationType == ____exports.SerializationType.SERIALIZE then
            logString = logString .. " (serializing)"
        elseif serializationType == ____exports.SerializationType.DESERIALIZE then
            logString = logString .. " (deserializing)"
        end
        log(nil, logString)
    end
    local oldTable = oldObject
    local isClass = isTSTLClass(nil, oldTable)
    local hasTSTLMapBrand = false
    local hasTSTLSetBrand = false
    local hasTSTLClassBrand = false
    if ((not __TS__InstanceOf(oldObject, Map)) and (not __TS__InstanceOf(oldObject, Set))) and (not isClass) then
        checkMetatable(nil, oldTable, traversalDescription)
        hasTSTLMapBrand = oldTable[TSTL_MAP_BRAND] ~= nil
        hasTSTLSetBrand = oldTable[TSTL_SET_BRAND] ~= nil
        hasTSTLClassBrand = oldTable[TSTL_CLASS_BRAND] ~= nil
    end
    local newObject
    if ((serializationType == ____exports.SerializationType.NONE) and __TS__InstanceOf(oldObject, Map)) or ((serializationType == ____exports.SerializationType.DESERIALIZE) and hasTSTLMapBrand) then
        newObject = __TS__New(Map)
    elseif ((serializationType == ____exports.SerializationType.NONE) and __TS__InstanceOf(oldObject, Set)) or ((serializationType == ____exports.SerializationType.DESERIALIZE) and hasTSTLSetBrand) then
        newObject = __TS__New(Set)
    elseif ((serializationType == ____exports.SerializationType.NONE) and isClass) or ((serializationType == ____exports.SerializationType.DESERIALIZE) and hasTSTLClassBrand) then
        newObject = cloneClass(nil, oldObject)
    else
        newObject = {}
    end
    if serializationType == ____exports.SerializationType.SERIALIZE then
        local newTable = newObject
        if __TS__InstanceOf(oldObject, Map) then
            newTable[TSTL_MAP_BRAND] = ""
        elseif __TS__InstanceOf(oldObject, Set) then
            newTable[TSTL_SET_BRAND] = ""
        elseif isClass then
            newTable[TSTL_CLASS_BRAND] = ""
        end
    end
    if __TS__InstanceOf(oldObject, Map) then
        for ____, ____value in __TS__Iterator(
            oldObject:entries()
        ) do
            local key
            key = ____value[1]
            local value
            value = ____value[2]
            do
                if ____exports.isBrand(nil, key) then
                    goto __continue17
                end
                deepCopyValue(nil, oldObject, newObject, key, value, traversalDescription, serializationType)
            end
            ::__continue17::
        end
    elseif __TS__InstanceOf(oldObject, Set) then
        for ____, key in __TS__Iterator(
            oldObject:values()
        ) do
            do
                if ____exports.isBrand(nil, key) then
                    goto __continue20
                end
                local value = ""
                deepCopyValue(nil, oldObject, newObject, key, value, traversalDescription, serializationType)
            end
            ::__continue20::
        end
    else
        for key, value in pairs(oldObject) do
            do
                if ____exports.isBrand(nil, key) then
                    goto __continue23
                end
                deepCopyValue(nil, oldObject, newObject, key, value, traversalDescription, serializationType)
            end
            ::__continue23::
        end
    end
    return newObject
end
function isTSTLClass(self, object)
    local metatable = getmetatable(object)
    if metatable == nil then
        return false
    end
    if __TS__InstanceOf(object, Map) or __TS__InstanceOf(object, Set) then
        return false
    end
    local numKeys = 0
    for key in pairs(metatable) do
        numKeys = numKeys + 1
        if not TSTL_CLASS_KEYS:has(key) then
            return false
        end
    end
    return numKeys == TSTL_CLASS_KEYS.size
end
function cloneClass(self, oldClass)
    local metatable = getmetatable(oldClass)
    local newClass = getNewClassFromMetatable(nil, metatable)
    for key, value in pairs(oldClass) do
        newClass[key] = value
    end
    return newClass
end
function getNewClassFromMetatable(self, metatable)
    local instance = setmetatable({}, metatable.constructor.prototype)
    local newClass = instance
    newClass:____constructor()
    return newClass
end
function ____exports.isBrand(self, key)
    return ((((key == TSTL_MAP_BRAND) or (key == TSTL_SET_BRAND)) or (key == TSTL_CLASS_BRAND)) or (key == TSTL_OBJECT_WITH_NUMBER_KEYS_BRAND)) or (key == VECTOR_BRAND)
end
function deepCopyValue(self, oldObject, newObject, key, value, traversalDescription, serializationType)
    local valueType = type(value)
    validateValue(nil, value, valueType, traversalDescription)
    local convertNumberKeysToString = false
    local isTSTLObject = __TS__InstanceOf(oldObject, Map) or __TS__InstanceOf(oldObject, Set)
    local keyType = type(key)
    if ((serializationType == ____exports.SerializationType.SERIALIZE) and isTSTLObject) and (keyType == "number") then
        convertNumberKeysToString = true
        local newTable = newObject
        newTable[TSTL_OBJECT_WITH_NUMBER_KEYS_BRAND] = ""
        if DEBUG then
            log(nil, "deepCopy is converting a TSTL map with number keys to strings.")
        end
    end
    local newValue
    if isVector(nil, value) then
        local vector = value
        newValue = copyVector(nil, vector, serializationType)
    elseif isSerializedVector(nil, value) and (serializationType == ____exports.SerializationType.DESERIALIZE) then
        local serializedVector = value
        newValue = ____exports.deserializeVector(nil, serializedVector)
    elseif valueType == "table" then
        local ____table = value
        traversalDescription = ____exports.addTraversalDescription(nil, key, traversalDescription)
        newValue = ____exports.deepCopy(nil, ____table, serializationType, traversalDescription)
    else
        newValue = value
    end
    if __TS__InstanceOf(newObject, Map) then
        newObject:set(key, newValue)
    elseif __TS__InstanceOf(newObject, Set) then
        newObject:add(key)
    else
        local keyToUse = (convertNumberKeysToString and tostring(key)) or key
        newObject[keyToUse] = newValue
    end
end
function copyVector(self, vector, serializationType)
    if serializationType == ____exports.SerializationType.SERIALIZE then
        local vectorTable = {}
        vectorTable.X = vector.X
        vectorTable.Y = vector.Y
        vectorTable[VECTOR_BRAND] = ""
        return vectorTable
    end
    local newVector = Vector(vector.X, vector.Y)
    return newVector
end
function ____exports.deserializeVector(self, vectorTable)
    local xString = vectorTable.X
    local x = tonumber(xString)
    if x == nil then
        error("Failed to read the X value of a serialized vector.")
    end
    local yString = vectorTable.Y
    local y = tonumber(yString)
    if y == nil then
        error("Failed to read the Y value of a serialized vector.")
    end
    return Vector(x, y)
end
function checkMetatable(self, ____table, traversalDescription)
    local metatable = getmetatable(____table)
    if metatable == nil then
        return
    end
    local tableDescription = ((traversalDescription == "") and "the table to copy") or (("\"" .. traversalDescription) .. "\"")
    error(("The deepCopy function detected that " .. tableDescription) .. " has a metatable. Copying tables with metatables is not supported (unless they are TypeScriptToLua Maps, Sets, or Classes).")
end
function validateValue(self, value, valueType, traversalDescription)
    if isVector(nil, value) then
        return
    end
    if (((valueType == "function") or (valueType == "nil")) or (valueType == "thread")) or (valueType == "userdata") then
        error(((("The deepCopy function detected that \"" .. traversalDescription) .. "\" is type ") .. valueType) .. ", which is not supported.")
    end
end
function ____exports.addTraversalDescription(self, key, traversalDescription)
    if traversalDescription ~= "" then
        traversalDescription = traversalDescription .. " --> "
    end
    traversalDescription = traversalDescription .. tostring(key)
    return traversalDescription
end
____exports.SerializationType = SerializationType or ({})
____exports.SerializationType.NONE = 0
____exports.SerializationType[____exports.SerializationType.NONE] = "NONE"
____exports.SerializationType.SERIALIZE = 1
____exports.SerializationType[____exports.SerializationType.SERIALIZE] = "SERIALIZE"
____exports.SerializationType.DESERIALIZE = 2
____exports.SerializationType[____exports.SerializationType.DESERIALIZE] = "DESERIALIZE"
TSTL_CLASS_KEYS = __TS__New(Set, {"____constructor", "__index", "constructor"})
return ____exports
 end,
["lua_modules.isaacscript-common.dist.debug"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
____exports.DEBUG = false
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.log"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____array = require("lua_modules.isaacscript-common.dist.functions.array")
local arrayToString = ____array.arrayToString
local ____flag = require("lua_modules.isaacscript-common.dist.functions.flag")
local hasFlag = ____flag.hasFlag
function ____exports.getDebugPrependString(self, msg, numParentFunctions)
    if numParentFunctions == nil then
        numParentFunctions = 3
    end
    if debug ~= nil then
        local debugTable = debug.getinfo(numParentFunctions)
        if debugTable ~= nil then
            return (((tostring(debugTable.name) .. ":") .. tostring(debugTable.linedefined)) .. " - ") .. msg
        end
    end
    if getParentFunctionDescription ~= nil then
        return (getParentFunctionDescription(numParentFunctions + 1) .. " - ") .. msg
    end
    return msg
end
function ____exports.log(self, msg)
    local debugMsg = ____exports.getDebugPrependString(nil, msg)
    Isaac.DebugString(debugMsg)
end
function ____exports.logAllFlags(self, flags, flagEnum, description)
    if description == nil then
        description = ""
    end
    if description ~= "" then
        description = description .. " "
    end
    ____exports.log(nil, ("Logging all " .. description) .. "flags:")
    for key, value in pairs(flagEnum) do
        if hasFlag(nil, flags, value) then
            ____exports.log(
                nil,
                "- Has flag: " .. tostring(key)
            )
        end
    end
end
function ____exports.logAllDamageFlags(self, flags)
    ____exports.logAllFlags(nil, flags, DamageFlag, "damage")
end
function ____exports.logAllEntityFlags(self, flags)
    ____exports.logAllFlags(nil, flags, EntityFlag, "entity")
end
function ____exports.logAllGameStateFlags(self)
    local game = Game()
    ____exports.log(nil, "Logging all game state flags:")
    for ____, ____value in ipairs(
        __TS__ObjectEntries(GameStateFlag)
    ) do
        local key
        key = ____value[1]
        local value
        value = ____value[2]
        local gameStateFlag = value
        local flagValue = game:GetStateFlag(gameStateFlag)
        if flagValue then
            ____exports.log(nil, "- Has flag: " .. key)
        end
    end
end
function ____exports.logAllProjectileFlags(self, flags)
    ____exports.logAllFlags(nil, flags, ProjectileFlags, "projectile")
end
function ____exports.logAllUseFlags(self, flags)
    ____exports.logAllFlags(nil, flags, UseFlag, "use")
end
function ____exports.logArray(self, array)
    local arrayString = arrayToString(nil, array)
    ____exports.log(nil, "Array: " .. arrayString)
end
function ____exports.logColor(self, color)
    ____exports.log(
        nil,
        (((((((((((("Color: R" .. tostring(color.R)) .. ", G") .. tostring(color.G)) .. ", B") .. tostring(color.B)) .. ", A") .. tostring(color.A)) .. ", RO") .. tostring(color.RO)) .. ", BO") .. tostring(color.BO)) .. ", GO") .. tostring(color.GO)
    )
end
function ____exports.logEntity(self, entity)
    ____exports.log(
        nil,
        (((("Entity: " .. tostring(entity.Type)) .. ".") .. tostring(entity.Variant)) .. ".") .. tostring(entity.SubType)
    )
end
function ____exports.logKColor(self, kColor)
    ____exports.log(
        nil,
        (((((("Color: R" .. tostring(kColor.Red)) .. ", G") .. tostring(kColor.Green)) .. ", B") .. tostring(kColor.Blue)) .. ", A") .. tostring(kColor.Alpha)
    )
end
function ____exports.logMap(self, map)
    ____exports.log(nil, "Printing out map:")
    for ____, ____value in __TS__Iterator(
        map:entries()
    ) do
        local key
        key = ____value[1]
        local value
        value = ____value[2]
        ____exports.log(
            nil,
            (("  Key: " .. tostring(key)) .. ", Value: ") .. tostring(value)
        )
    end
    ____exports.log(
        nil,
        "The size of the map was: " .. tostring(map.size)
    )
end
function ____exports.logSet(self, set)
    ____exports.log(nil, "Printing out set:")
    for ____, value in __TS__Iterator(
        set:values()
    ) do
        ____exports.log(
            nil,
            "  Value: " .. tostring(value)
        )
    end
    ____exports.log(
        nil,
        "The size of the set was: " .. tostring(set.size)
    )
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.array"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____random = require("lua_modules.isaacscript-common.dist.functions.random")
local getRandomInt = ____random.getRandomInt
function ____exports.arrayEquals(self, array1, array2)
    if #array1 ~= #array2 then
        return false
    end
    do
        local i = 0
        while i < #array1 do
            if array1[i + 1] ~= array2[i + 1] then
                return false
            end
            i = i + 1
        end
    end
    return true
end
function ____exports.arrayEmpty(self, array)
    __TS__ArraySplice(array, 0, #array)
end
function ____exports.arraySum(self, array)
    local sum = 0
    for ____, element in ipairs(array) do
        sum = sum + element
    end
    return sum
end
function ____exports.arrayInArray(self, arrayToMatch, parentArray)
    for ____, element in ipairs(parentArray) do
        if ____exports.arrayEquals(nil, element, arrayToMatch) then
            return true
        end
    end
    return false
end
function ____exports.arrayToString(self, array)
    local strings = {}
    for ____, value in ipairs(array) do
        __TS__ArrayPush(
            strings,
            tostring(value)
        )
    end
    return ("[" .. table.concat(strings, ", " or ",")) .. "]"
end
function ____exports.getRandomArrayElement(self, array, seed)
    if #array == 0 then
        error("Failed to get a random array element since the provided array is empty.")
    end
    local randomIndex = getRandomInt(nil, 0, #array - 1, seed)
    return array[randomIndex + 1]
end
function ____exports.arrayRemove(self, array, element)
    local arrayCopy = {
        table.unpack(array)
    }
    local index = __TS__ArrayIndexOf(array, element)
    __TS__ArraySplice(arrayCopy, index, 1)
    return arrayCopy
end
function ____exports.initArray(self, defaultValue, size)
    local array = {}
    do
        local i = 0
        while i < size do
            __TS__ArrayPush(array, defaultValue)
            i = i + 1
        end
    end
    return array
end
function ____exports.isArray(self, ____table)
    local metatable = getmetatable(____table)
    if metatable ~= nil then
        return false
    end
    local numEntries = 0
    for key in pairs(____table) do
        numEntries = numEntries + 1
        local keyType = type(key)
        if keyType ~= "number" then
            return false
        end
    end
    do
        local i = 1
        while i <= numEntries do
            local element = ____table[i]
            if element == nil then
                return false
            end
            i = i + 1
        end
    end
    return true
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.random"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local RECOMMENDED_SHIFT_IDX
function ____exports.initRNG(self, seed)
    if seed == 0 then
        error("You cannot initialize an RNG object with a seed of 0, or the game will crash.")
    end
    local rng = RNG()
    rng:SetSeed(seed, RECOMMENDED_SHIFT_IDX)
    return rng
end
RECOMMENDED_SHIFT_IDX = 35
function ____exports.getRandom(self, seed)
    local rng = ____exports.initRNG(nil, seed)
    return rng:RandomFloat()
end
function ____exports.getRandomFloat(self, min, max, seed)
    return min + (____exports.getRandom(nil, seed) * (max - min))
end
function ____exports.getRandomInt(self, min, max, seed)
    local rng = ____exports.initRNG(nil, seed)
    return rng:RandomInt((max - min) + 1) + min
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.flag"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
function ____exports.addFlag(self, flags, ...)
    local flag = {...}
    for ____, f in ipairs(flag) do
        flags = flags | f
    end
    return flags
end
function ____exports.hasFlag(self, flags, ...)
    local flag = {...}
    for ____, f in ipairs(flag) do
        if not ((flags & f) == f) then
            return false
        end
    end
    return true
end
function ____exports.removeFlag(self, flags, ...)
    local flag = {...}
    for ____, f in ipairs(flag) do
        flags = flags & ~f
    end
    return flags
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.util"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____constants = require("lua_modules.isaacscript-common.dist.constants")
local VECTOR_BRAND = ____constants.VECTOR_BRAND
local ____collectibles = require("lua_modules.isaacscript-common.dist.functions.collectibles")
local getMaxCollectibleID = ____collectibles.getMaxCollectibleID
local ____math = require("lua_modules.isaacscript-common.dist.functions.math")
local getAngleDifference = ____math.getAngleDifference
local HEX_STRING_LENGTH = 6
____exports.ensureAllCases = function(____, obj) return obj end
function ____exports.getEnumValues(self, transpiledEnum)
    local enumValues = {}
    for key, value in pairs(transpiledEnum) do
        if type(key) == "string" then
            __TS__ArrayPush(enumValues, value)
        end
    end
    __TS__ArraySort(enumValues)
    return enumValues
end
function ____exports.getCollectibleSet(self)
    local itemConfig = Isaac.GetItemConfig()
    local collectibleSet = __TS__New(Set)
    do
        local collectibleType = 1
        while collectibleType <= getMaxCollectibleID(nil) do
            local itemConfigItem = itemConfig:GetCollectible(collectibleType)
            if itemConfigItem ~= nil then
                collectibleSet:add(collectibleType)
            end
            collectibleType = collectibleType + 1
        end
    end
    return collectibleSet
end
function ____exports.hexToKColor(self, hexString, alpha)
    hexString = __TS__StringReplace(hexString, "#", "")
    if #hexString ~= HEX_STRING_LENGTH then
        error(
            ("Hex strings must be of length " .. tostring(HEX_STRING_LENGTH)) .. "."
        )
    end
    local rString = __TS__StringSubstr(hexString, 0, 2)
    local R = tonumber("0x" .. rString)
    if R == nil then
        error(("Failed to convert `0x" .. rString) .. "` to a number.")
    end
    local gString = __TS__StringSubstr(hexString, 2, 2)
    local G = tonumber("0x" .. gString)
    if G == nil then
        error(("Failed to convert `0x" .. gString) .. "` to a number.")
    end
    local bString = __TS__StringSubstr(hexString, 4, 2)
    local B = tonumber("0x" .. bString)
    if B == nil then
        error(("Failed to convert `0x" .. bString) .. "` to a number.")
    end
    local base = 255
    return KColor(R / base, G / base, B / base, alpha)
end
function ____exports.isGreedMode(self)
    local game = Game()
    return (game.Difficulty == Difficulty.DIFFICULTY_GREED) or (game.Difficulty == Difficulty.DIFFICULTY_GREEDIER)
end
function ____exports.isSerializedVector(self, object)
    local objectType = type(object)
    if objectType ~= "table" then
        return false
    end
    local ____table = object
    return ((____table[VECTOR_BRAND] ~= nil) and (____table.X ~= nil)) and (____table.Y ~= nil)
end
function ____exports.isVector(self, object)
    local objectType = type(object)
    if objectType ~= "userdata" then
        return false
    end
    local metatable = getmetatable(object)
    if metatable == nil then
        return false
    end
    local vectorMetatable = metatable
    return vectorMetatable.__type == "Vector"
end
function ____exports.lerp(self, a, b, pos)
    return a + ((b - a) * pos)
end
function ____exports.lerpAngleDegrees(self, aStart, aEnd, percent)
    return aStart + (getAngleDifference(nil, aStart, aEnd) * percent)
end
function ____exports.onSetSeed(self)
    local game = Game()
    local seeds = game:GetSeeds()
    local customRun = seeds:IsCustomRun()
    local challenge = Isaac.GetChallenge()
    return (challenge == Challenge.CHALLENGE_NULL) and customRun
end
function ____exports.tableClear(self, ____table)
    for key in pairs(____table) do
        ____table[key] = nil
    end
end
function ____exports.teleport(self, roomIndex, direction, roomTransitionAnim)
    if direction == nil then
        direction = Direction.NO_DIRECTION
    end
    if roomTransitionAnim == nil then
        roomTransitionAnim = RoomTransitionAnim.TELEPORT
    end
    local game = Game()
    local level = game:GetLevel()
    level.LeaveDoor = -1
    game:StartRoomTransition(roomIndex, direction, roomTransitionAnim)
end
function ____exports.vectorToDirection(self, vector)
    local degrees = vector:GetAngleDegrees()
    if (degrees >= -45) and (degrees < 45) then
        return Direction.RIGHT
    end
    if (degrees >= 45) and (degrees < 135) then
        return Direction.DOWN
    end
    if (degrees < -45) and (degrees >= -135) then
        return Direction.UP
    end
    if (degrees >= 135) or (degrees < -135) then
        return Direction.LEFT
    end
    return Direction.NO_DIRECTION
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.collectibles"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local COLLECTIBLE_SPRITE_LAYER
function ____exports.setCollectibleSprite(self, pickup, pngPath)
    if pickup.Variant ~= PickupVariant.PICKUP_COLLECTIBLE then
        error(
            "You cannot set a collectible sprite for pickups of variant: " .. tostring(pickup.Variant)
        )
    end
    local sprite = pickup:GetSprite()
    sprite:ReplaceSpritesheet(COLLECTIBLE_SPRITE_LAYER, pngPath)
    sprite:LoadGraphics()
end
COLLECTIBLE_SPRITE_LAYER = 1
local BLIND_ITEM_PNG_PATH = "gfx/items/collectibles/questionmark.png"
function ____exports.changeCollectibleSubType(self, collectible, newCollectibleType)
    collectible.SubType = newCollectibleType
    local itemConfig = Isaac.GetItemConfig()
    local itemConfigItem = itemConfig:GetCollectible(newCollectibleType)
    if itemConfigItem == nil then
        error(
            "Failed to get the item config for: " .. tostring(newCollectibleType)
        )
    end
    ____exports.setCollectibleSprite(nil, collectible, itemConfigItem.GfxFileName)
end
function ____exports.collectibleHasTag(self, collectibleType, tag)
    local itemConfig = Isaac.GetItemConfig()
    local itemConfigItem = itemConfig:GetCollectible(collectibleType)
    if itemConfigItem == nil then
        return false
    end
    return itemConfigItem:HasTags(tag)
end
function ____exports.getCollectibleInitCharges(self, collectibleType)
    local itemConfig = Isaac.GetItemConfig()
    local itemConfigItem = itemConfig:GetCollectible(collectibleType)
    if itemConfigItem == nil then
        return 0
    end
    return itemConfigItem.InitCharge
end
function ____exports.getCollectibleMaxCharges(self, collectibleType)
    local itemConfig = Isaac.GetItemConfig()
    local itemConfigItem = itemConfig:GetCollectible(collectibleType)
    if itemConfigItem == nil then
        return 0
    end
    return itemConfigItem.MaxCharges
end
function ____exports.getMaxCollectibleID(self)
    local itemConfig = Isaac.GetItemConfig()
    return itemConfig:GetCollectibles().Size - 1
end
function ____exports.isQuestCollectible(self, collectibleType)
    return ____exports.collectibleHasTag(nil, collectibleType, 32768)
end
function ____exports.setCollectibleBlind(self, pickup)
    ____exports.setCollectibleSprite(nil, pickup, BLIND_ITEM_PNG_PATH)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.math"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
function ____exports.getAngleDifference(self, angle1, angle2)
    local subtractedAngle = angle1 - angle2
    return ((subtractedAngle + 180) % 360) - 180
end
function ____exports.isEven(self, num)
    return (num & 1) == 0
end
function ____exports.isOdd(self, num)
    return (num & 1) == 1
end
function ____exports.round(self, num, numDecimalPlaces)
    if numDecimalPlaces == nil then
        numDecimalPlaces = 0
    end
    local roundedNum = tonumber(
        string.format(
            ("%." .. tostring(numDecimalPlaces)) .. "f",
            num
        )
    )
    return ((roundedNum == nil) and 0) or roundedNum
end
function ____exports.tanh(self, x)
    return (math.exp(x) - math.exp(-x)) / (math.exp(x) + math.exp(-x))
end
function ____exports.sign(self, n)
    if n > 0 then
        return 1
    end
    if n < 0 then
        return -1
    end
    return 0
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.types.SaveData"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
____exports.SaveDataKeys = SaveDataKeys or ({})
____exports.SaveDataKeys.Persistent = "persistent"
____exports.SaveDataKeys.Run = "run"
____exports.SaveDataKeys.Level = "level"
____exports.SaveDataKeys.Room = "room"
return ____exports
 end,
["lua_modules.isaacscript-common.dist.features.saveDataManager.load"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____debug = require("lua_modules.isaacscript-common.dist.debug")
local DEBUG = ____debug.DEBUG
local ____json = require("lua_modules.isaacscript-common.dist.functions.json")
local jsonDecode = ____json.jsonDecode
local ____log = require("lua_modules.isaacscript-common.dist.functions.log")
local log = ____log.log
local ____merge = require("lua_modules.isaacscript-common.dist.features.saveDataManager.merge")
local merge = ____merge.merge
local DEFAULT_MOD_DATA, readSaveDatFile, tryLoadModData
function readSaveDatFile(self, mod)
    local isaacFrameCount = Isaac.GetFrameCount()
    local ok, jsonStringOrErrMsg = pcall(tryLoadModData, mod)
    if not ok then
        log(
            nil,
            (("Failed to read from the \"save#.dat\" file on Isaac frame " .. tostring(isaacFrameCount)) .. ": ") .. jsonStringOrErrMsg
        )
        return DEFAULT_MOD_DATA
    end
    if jsonStringOrErrMsg == nil then
        return DEFAULT_MOD_DATA
    end
    local jsonStringTrimmed = __TS__StringTrim(jsonStringOrErrMsg)
    if jsonStringTrimmed == "" then
        return DEFAULT_MOD_DATA
    end
    return jsonStringTrimmed
end
function tryLoadModData(mod)
    return mod:LoadData()
end
DEFAULT_MOD_DATA = "{}"
function ____exports.loadFromDisk(self, mod, oldSaveData)
    if not mod:HasData() then
        return
    end
    local jsonString = readSaveDatFile(nil, mod)
    local newSaveData = jsonDecode(nil, jsonString)
    if DEBUG then
        log(nil, "Converted data from the \"save#.dat\" to a Lua table.")
    end
    for key, value in pairs(newSaveData) do
        do
            local keyType = type(key)
            if keyType ~= "string" then
                goto __continue5
            end
            local valueType = type(value)
            if valueType ~= "table" then
                goto __continue5
            end
            local oldSaveDataForSubscriber = oldSaveData[key]
            if oldSaveDataForSubscriber == nil then
                goto __continue5
            end
            if DEBUG then
                log(
                    nil,
                    "Merging in stored data for feature: " .. tostring(key)
                )
            end
            merge(nil, oldSaveDataForSubscriber, value, key)
        end
        ::__continue5::
    end
    log(nil, "The save data manager loaded data from the \"save#.dat\" file.")
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.json"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local json = require("json")
local ____log = require("lua_modules.isaacscript-common.dist.functions.log")
local log = ____log.log
local tryEncode, tryDecode
function tryEncode(____table)
    return json.encode(____table)
end
function tryDecode(jsonString)
    return json.decode(jsonString)
end
function ____exports.jsonEncode(self, ____table)
    local ok, jsonStringOrErrMsg = pcall(tryEncode, ____table)
    if not ok then
        error("Failed to convert the Lua table to JSON: " .. jsonStringOrErrMsg)
    end
    return jsonStringOrErrMsg
end
function ____exports.jsonDecode(self, jsonString)
    local ok, luaTableOrErrMsg = pcall(tryDecode, jsonString)
    if not ok then
        log(nil, "Failed to convert the JSON string to a Lua table: " .. jsonString)
        return {}
    end
    return luaTableOrErrMsg
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.features.saveDataManager.merge"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____constants = require("lua_modules.isaacscript-common.dist.constants")
local TSTL_OBJECT_WITH_NUMBER_KEYS_BRAND = ____constants.TSTL_OBJECT_WITH_NUMBER_KEYS_BRAND
local ____debug = require("lua_modules.isaacscript-common.dist.debug")
local DEBUG = ____debug.DEBUG
local ____array = require("lua_modules.isaacscript-common.dist.functions.array")
local isArray = ____array.isArray
local ____deepCopy = require("lua_modules.isaacscript-common.dist.functions.deepCopy")
local addTraversalDescription = ____deepCopy.addTraversalDescription
local deepCopy = ____deepCopy.deepCopy
local deserializeVector = ____deepCopy.deserializeVector
local isBrand = ____deepCopy.isBrand
local SerializationType = ____deepCopy.SerializationType
local ____log = require("lua_modules.isaacscript-common.dist.functions.log")
local log = ____log.log
local ____util = require("lua_modules.isaacscript-common.dist.functions.util")
local isSerializedVector = ____util.isSerializedVector
local tableClear = ____util.tableClear
local mergeArray, mergeTSTLObject, mergeTable, mergeVector
function ____exports.merge(self, oldObject, newTable, traversalDescription)
    local oldObjectType = type(oldObject)
    if oldObjectType ~= "table" then
        error("The first argument given to the merge function is not a table.")
    end
    local newTableType = type(newTable)
    if newTableType ~= "table" then
        error("The second argument given to the merge function is not a table.")
    end
    if DEBUG then
        log(nil, "merge is operating on: " .. traversalDescription)
    end
    if mergeArray(nil, oldObject, newTable) then
        return
    end
    if __TS__InstanceOf(oldObject, Map) or __TS__InstanceOf(oldObject, Set) then
        mergeTSTLObject(nil, oldObject, newTable, traversalDescription)
    else
        mergeTable(nil, oldObject, newTable, traversalDescription)
    end
end
function mergeArray(self, oldObject, newTable)
    local oldArray = oldObject
    if (not isArray(nil, oldArray)) or (not isArray(nil, newTable)) then
        return false
    end
    tableClear(nil, oldArray)
    for key, value in pairs(newTable) do
        oldArray[key] = value
    end
    return true
end
function mergeTSTLObject(self, oldObject, newTable, traversalDescription)
    oldObject:clear()
    local convertStringKeysToNumbers = newTable[TSTL_OBJECT_WITH_NUMBER_KEYS_BRAND] ~= nil
    for key, value in pairs(newTable) do
        do
            if isBrand(nil, key) then
                goto __continue13
            end
            local keyToUse = key
            if convertStringKeysToNumbers then
                local numberKey = tonumber(key)
                if numberKey == nil then
                    goto __continue13
                end
                keyToUse = numberKey
            end
            if __TS__InstanceOf(oldObject, Map) then
                local valueType = type(value)
                local valueCopy
                if valueType == "table" then
                    valueCopy = deepCopy(nil, value, SerializationType.DESERIALIZE, traversalDescription)
                else
                    valueCopy = value
                end
                oldObject:set(keyToUse, valueCopy)
            elseif __TS__InstanceOf(oldObject, Set) then
                oldObject:add(keyToUse)
            end
        end
        ::__continue13::
    end
end
function mergeTable(self, oldTable, newTable, traversalDescription)
    for key, value in pairs(newTable) do
        do
            if isBrand(nil, key) then
                goto __continue22
            end
            if mergeVector(nil, oldTable, key, value) then
                goto __continue22
            end
            local valueType = type(value)
            if valueType == "table" then
                local oldValue = oldTable[key]
                local oldValueType = type(oldValue)
                if oldValueType == "table" then
                    traversalDescription = addTraversalDescription(nil, key, traversalDescription)
                    ____exports.merge(nil, oldValue, value, traversalDescription)
                end
            else
                if DEBUG then
                    log(
                        nil,
                        (("Merging key \"" .. tostring(key)) .. "\" with value: ") .. tostring(value)
                    )
                end
                oldTable[key] = value
            end
        end
        ::__continue22::
    end
end
function mergeVector(self, oldTable, key, value)
    if not isSerializedVector(nil, value) then
        return false
    end
    local serializedVector = value
    local vector = deserializeVector(nil, serializedVector)
    oldTable[key] = vector
    return true
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.features.saveDataManager.save"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____deepCopy = require("lua_modules.isaacscript-common.dist.functions.deepCopy")
local deepCopy = ____deepCopy.deepCopy
local SerializationType = ____deepCopy.SerializationType
local ____json = require("lua_modules.isaacscript-common.dist.functions.json")
local jsonEncode = ____json.jsonEncode
local ____log = require("lua_modules.isaacscript-common.dist.functions.log")
local log = ____log.log
local getAllSaveDataToWriteToDisk
function getAllSaveDataToWriteToDisk(self, saveDataMap, saveDataConditionalFuncMap)
    local allSaveData = {}
    for subscriberName, saveData in pairs(saveDataMap) do
        do
            if saveData.dontSave ~= nil then
                goto __continue4
            end
            local conditionalFunc = saveDataConditionalFuncMap:get(subscriberName)
            if conditionalFunc ~= nil then
                local shouldSave = conditionalFunc(nil)
                if not shouldSave then
                    goto __continue4
                end
            end
            local saveDataWithoutRoom = {persistent = saveData.persistent, run = saveData.run, level = saveData.level}
            local saveDataCopy = deepCopy(nil, saveDataWithoutRoom, SerializationType.SERIALIZE, subscriberName)
            allSaveData[subscriberName] = saveDataCopy
        end
        ::__continue4::
    end
    return allSaveData
end
function ____exports.saveToDisk(self, mod, saveDataMap, saveDataConditionalFuncMap)
    local allSaveData = getAllSaveDataToWriteToDisk(nil, saveDataMap, saveDataConditionalFuncMap)
    local jsonString = jsonEncode(nil, allSaveData)
    mod:SaveData(jsonString)
    log(nil, "The save data manager wrote data to the \"save#.dat\" file.")
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.features.forgottenSwitch"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____errors = require("lua_modules.isaacscript-common.dist.errors")
local getUpgradeErrorMsg = ____errors.getUpgradeErrorMsg
local ____main = require("lua_modules.isaacscript-common.dist.features.saveDataManager.main")
local saveDataManager = ____main.saveDataManager
local v, isActionTriggered
function isActionTriggered(self, _entity, _inputHook, buttonAction)
    if (buttonAction == ButtonAction.ACTION_DROP) and v.run.shouldSwitch then
        v.run.shouldSwitch = false
        return true
    end
    return nil
end
local FEATURE_NAME = "Forgotten switcher"
local initialized = false
v = {run = {shouldSwitch = false}}
function ____exports.init(self, mod)
    initialized = true
    saveDataManager(nil, "forgottenSwitch", v)
    mod:AddCallback(ModCallbacks.MC_INPUT_ACTION, isActionTriggered, InputHook.IS_ACTION_TRIGGERED)
end
function ____exports.forgottenSwitch(self)
    if not initialized then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    v.run.shouldSwitch = true
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.features.runInNFrames"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____errors = require("lua_modules.isaacscript-common.dist.errors")
local getUpgradeErrorMsg = ____errors.getUpgradeErrorMsg
local ____main = require("lua_modules.isaacscript-common.dist.features.saveDataManager.main")
local saveDataManager = ____main.saveDataManager
local FEATURE_NAME, initialized, v, postUpdate
function postUpdate(self)
    local game = Game()
    local gameFrameCount = game:GetFrameCount()
    local functionsToFire = {}
    local indexesToRemove = {}
    do
        local i = 0
        while i < #v.run.queuedFunctionTuples do
            local functionTuple = v.run.queuedFunctionTuples[i + 1]
            local frame, func = table.unpack(functionTuple)
            if gameFrameCount >= frame then
                __TS__ArrayPush(functionsToFire, func)
                __TS__ArrayPush(indexesToRemove, i)
            end
            i = i + 1
        end
    end
    for ____, indexToRemove in ipairs(indexesToRemove) do
        __TS__ArraySplice(v.run.queuedFunctionTuples, indexToRemove, 1)
    end
    for ____, func in ipairs(functionsToFire) do
        func(nil)
    end
end
function ____exports.runInNFrames(self, frames, func)
    if not initialized then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    local game = Game()
    local gameFrameCount = game:GetFrameCount()
    local functionFireFrame = gameFrameCount + frames
    local tuple = {functionFireFrame, func}
    __TS__ArrayPush(v.run.queuedFunctionTuples, tuple)
end
FEATURE_NAME = "run in N frames"
initialized = false
v = {dontSave = true, run = {queuedFunctionTuples = {}}}
function ____exports.init(self, mod)
    initialized = true
    saveDataManager(nil, "runInNFrames", v)
    mod:AddCallback(ModCallbacks.MC_POST_UPDATE, postUpdate)
end
function ____exports.runNextFrame(self, func)
    if not initialized then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    ____exports.runInNFrames(nil, 1, func)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.deepCopyTests"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____array = require("lua_modules.isaacscript-common.dist.functions.array")
local arrayEquals = ____array.arrayEquals
local ____deepCopy = require("lua_modules.isaacscript-common.dist.functions.deepCopy")
local deepCopy = ____deepCopy.deepCopy
local ____log = require("lua_modules.isaacscript-common.dist.functions.log")
local log = ____log.log
local copiedObjectIsTable, copiedObjectHasKeyAndValueString, copiedTableHasKeyAndValueNumber, copiedTableDoesNotCoerceTypes, copiedObjectHasNoReferencesForPrimitivesForward, copiedObjectHasNoReferencesForPrimitivesBackward, copiedObjectHasNoReferencesForArray, copiedObjectHasChildObject, copiedMapIsMap, copiedMapHasValue, copiedSetIsSet, copiedSetHasValue, copiedMapHasChildMap
function copiedObjectIsTable(self)
    local oldObject = {abc = "def"}
    local newObject = deepCopy(nil, oldObject)
    local newObjectType = type(newObject)
    if newObjectType ~= "table" then
        error("The copied object is not a table.")
    end
end
function copiedObjectHasKeyAndValueString(self)
    local keyToLookFor = "abc"
    local valueToLookFor = "def"
    local oldObject = {abc = valueToLookFor}
    local newTable = deepCopy(nil, oldObject)
    local newObject = newTable
    local value = newObject[keyToLookFor]
    if value == nil then
        error("The copied object did not have a key of: " .. keyToLookFor)
    end
    local valueType = type(value)
    if valueType ~= "string" then
        error("The copied object had a value type of: " .. valueType)
    end
    if value ~= valueToLookFor then
        error("The copied object had a value of: " .. value)
    end
end
function copiedTableHasKeyAndValueNumber(self)
    local keyToLookFor = 123
    local valueToLookFor = 456
    local oldTable = {}
    oldTable[keyToLookFor] = valueToLookFor
    local newObject = deepCopy(nil, oldTable)
    local newTable = newObject
    local value = newTable[keyToLookFor]
    if value == nil then
        error(
            "The copied object did not have a key of: " .. tostring(keyToLookFor)
        )
    end
    local valueType = type(value)
    if valueType ~= "number" then
        error("The copied object had a value type of: " .. valueType)
    end
    if value ~= valueToLookFor then
        error(
            "The copied object had a value of: " .. tostring(value)
        )
    end
end
function copiedTableDoesNotCoerceTypes(self)
    local keyToLookFor = 123
    local valueToLookFor = 456
    local oldTable = {}
    oldTable[keyToLookFor] = valueToLookFor
    local newObject = deepCopy(nil, oldTable)
    local newTable = newObject
    local keyString = tostring(keyToLookFor)
    local valueString = tostring(valueToLookFor)
    local valueFromString = newTable[keyString]
    if valueFromString ~= nil then
        error("The copied object had a string key of: " .. keyString)
    end
    local value = newTable[keyToLookFor]
    if value == valueString then
        error("The copied object had a value that incorrectly matched the string of: " .. valueString)
    end
end
function copiedObjectHasNoReferencesForPrimitivesForward(self)
    local originalStringValue = "abcdef"
    local originalNumberValue = 123
    local oldObject = {abc = originalStringValue, def = originalNumberValue}
    local newTable = deepCopy(nil, oldObject)
    local newObject = newTable
    oldObject.abc = "newValue"
    if oldObject.abc == newObject.abc then
        error("The copied object has a string reference going forward.")
    end
    oldObject.def = 456
    if oldObject.def == newObject.def then
        error("The copied object has a number reference going forward.")
    end
end
function copiedObjectHasNoReferencesForPrimitivesBackward(self)
    local originalStringValue = "abcdef"
    local originalNumberValue = 123
    local oldObject = {abc = originalStringValue, def = originalNumberValue}
    local newTable = deepCopy(nil, oldObject)
    local newObject = newTable
    newObject.abc = "newValue"
    if newObject.abc == oldObject.abc then
        error("The copied object has a string reference going backward.")
    end
    newObject.def = 456
    if newObject.def == oldObject.def then
        error("The copied object has a number reference going backward.")
    end
end
function copiedObjectHasNoReferencesForArray(self)
    local oldObject = {abc = {1, 2, 3}}
    local newTable = deepCopy(nil, oldObject)
    local newObject = newTable
    if oldObject.abc == newObject.abc then
        error("The copied object has the same point to the child array.")
    end
    if not arrayEquals(nil, oldObject.abc, newObject.abc) then
        error("The copied object does not have an equal array.")
    end
    local ____obj, ____index = oldObject.abc, 0 + 1
    ____obj[____index] = ____obj[____index] + 1
    if arrayEquals(nil, oldObject.abc, newObject.abc) then
        error("The copied object has an equal array after a modification to the old array.")
    end
    local ____obj, ____index = oldObject.abc, 0 + 1
    ____obj[____index] = ____obj[____index] - 1
    local ____obj, ____index = newObject.abc, 0 + 1
    ____obj[____index] = ____obj[____index] + 1
    if arrayEquals(nil, oldObject.abc, newObject.abc) then
        error("The copied object has an equal array after a modification to the new array.")
    end
    local ____obj, ____index = newObject.abc, 0 + 1
    ____obj[____index] = ____obj[____index] - 1
end
function copiedObjectHasChildObject(self)
    local childObjectIndex = "abc"
    local keyToLookFor = "def"
    local valueToLookFor = "ghi"
    local oldObject = {abc = {def = valueToLookFor}}
    local newTable = deepCopy(nil, oldObject)
    local newObject = newTable
    local childObject = newObject[childObjectIndex]
    if childObject == nil then
        error("Failed to find the child object at index: " .. childObjectIndex)
    end
    local childObjectType = type(childObject)
    if childObjectType ~= "table" then
        error("The copied child object was not a table.")
    end
    local value = childObject[keyToLookFor]
    if value == nil then
        error("The child object did not have a key of: " .. keyToLookFor)
    end
    local valueType = type(value)
    if valueType ~= "string" then
        error("The child object value had a type of: " .. valueType)
    end
    if value ~= valueToLookFor then
        error("The child object value was: " .. valueToLookFor)
    end
end
function copiedMapIsMap(self)
    local keyToLookFor = "abc"
    local valueToLookFor = "def"
    local oldMap = __TS__New(Map)
    oldMap:set(keyToLookFor, valueToLookFor)
    local newObject = deepCopy(nil, oldMap)
    local newMap = newObject
    local newMapType = type(newMap)
    if newMapType ~= "table" then
        error("The copied Map was not a table.")
    end
    if not __TS__InstanceOf(newMap, Map) then
        error("The copied Map was not a Map.")
    end
end
function copiedMapHasValue(self)
    local keyToLookFor = "abc"
    local valueToLookFor = "def"
    local oldMap = __TS__New(Map)
    oldMap:set(keyToLookFor, valueToLookFor)
    local newTable = deepCopy(nil, oldMap)
    local newMap = newTable
    local value = newMap:get(keyToLookFor)
    if value == nil then
        error("The copied Map did not have a key of: " .. keyToLookFor)
    end
    if value ~= valueToLookFor then
        error("The copied Map did not have a value of: " .. valueToLookFor)
    end
end
function copiedSetIsSet(self)
    local valueToLookFor = "abc"
    local oldSet = __TS__New(Set)
    oldSet:add(valueToLookFor)
    local newTable = deepCopy(nil, oldSet)
    local newSet = newTable
    local newSetType = type(newSet)
    if newSetType ~= "table" then
        error("The copied Set was not a table.")
    end
    if not __TS__InstanceOf(newSet, Set) then
        error("The copied Set was not a Map.")
    end
end
function copiedSetHasValue(self)
    local valueToLookFor = "abc"
    local oldSet = __TS__New(Set)
    oldSet:add(valueToLookFor)
    local newTable = deepCopy(nil, oldSet)
    local newSet = newTable
    local hasValue = newSet:has(valueToLookFor)
    if not hasValue then
        error("The copied Set did not have a value of: " .. valueToLookFor)
    end
end
function copiedMapHasChildMap(self)
    local childMapKey = 123
    local childMapValue = 456
    local oldChildMap = __TS__New(Map)
    oldChildMap:set(childMapKey, childMapValue)
    local keyToLookFor = "abc"
    local oldMap = __TS__New(Map)
    oldMap:set(keyToLookFor, oldChildMap)
    local newTable = deepCopy(nil, oldMap)
    local newMap = newTable
    local newChildMap = newMap:get(keyToLookFor)
    if newChildMap == nil then
        error("The copied Map did not have a child map at key: " .. keyToLookFor)
    end
    local newChildMapType = type(newChildMap)
    if newChildMapType ~= "table" then
        error("The copied child Map had a type of: " .. newChildMapType)
    end
    if not __TS__InstanceOf(newChildMap, Map) then
        error("The copied child Map was not a Map.")
    end
    local value = newChildMap:get(childMapKey)
    if value == nil then
        error(
            "The copied child Map did not have a key of: " .. tostring(childMapKey)
        )
    end
    if value ~= childMapValue then
        error(
            "The copied child Map did not have a value of: " .. tostring(childMapValue)
        )
    end
end
function ____exports.deepCopyTests(self)
    copiedObjectIsTable(nil)
    copiedObjectHasKeyAndValueString(nil)
    copiedTableHasKeyAndValueNumber(nil)
    copiedTableDoesNotCoerceTypes(nil)
    copiedObjectHasNoReferencesForPrimitivesForward(nil)
    copiedObjectHasNoReferencesForPrimitivesBackward(nil)
    copiedObjectHasNoReferencesForArray(nil)
    copiedObjectHasChildObject(nil)
    copiedMapIsMap(nil)
    copiedMapHasValue(nil)
    copiedSetIsSet(nil)
    copiedSetHasValue(nil)
    copiedMapHasChildMap(nil)
    log(nil, "All tests passed!")
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.doors"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____constants = require("lua_modules.isaacscript-common.dist.constants")
local MAX_NUM_DOORS = ____constants.MAX_NUM_DOORS
function ____exports.isAngelRoomDoor(self, door)
    return door.TargetRoomType == RoomType.ROOM_ANGEL
end
function ____exports.isDevilRoomDoor(self, door)
    return door.TargetRoomType == RoomType.ROOM_DEVIL
end
function ____exports.isRepentanceDoor(self, door)
    return door.TargetRoomIndex == GridRooms.ROOM_SECRET_EXIT_IDX
end
function ____exports.isSecretRoomDoor(self, door)
    local sprite = door:GetSprite()
    local filename = sprite:GetFilename()
    return filename == "gfx/grid/Door_08_HoleInWall.anm2"
end
function ____exports.getDoors(self, roomType)
    local game = Game()
    local room = game:GetRoom()
    local doors = {}
    do
        local i = 0
        while i < MAX_NUM_DOORS do
            do
                local door = room:GetDoor(i)
                if door == nil then
                    goto __continue3
                end
                if roomType == nil then
                    __TS__ArrayPush(doors, door)
                elseif door:IsRoomType(roomType) then
                    __TS__ArrayPush(doors, door)
                end
            end
            ::__continue3::
            i = i + 1
        end
    end
    return doors
end
function ____exports.getAngelRoomDoor(self)
    for ____, door in ipairs(
        ____exports.getDoors(nil)
    ) do
        if ____exports.isAngelRoomDoor(nil, door) then
            return door
        end
    end
    return nil
end
function ____exports.getDevilRoomDoor(self)
    for ____, door in ipairs(
        ____exports.getDoors(nil)
    ) do
        if ____exports.isDevilRoomDoor(nil, door) then
            return door
        end
    end
    return nil
end
function ____exports.getDevilRoomOrAngelRoomDoor(self)
    for ____, door in ipairs(
        ____exports.getDoors(nil)
    ) do
        if ____exports.isDevilRoomDoor(nil, door) or ____exports.isAngelRoomDoor(nil, door) then
            return door
        end
    end
    return nil
end
function ____exports.getRepentanceDoor(self)
    for ____, door in ipairs(
        ____exports.getDoors(nil)
    ) do
        if ____exports.isRepentanceDoor(nil, door) then
            return door
        end
    end
    return nil
end
function ____exports.isHiddenSecretRoomDoor(self, door)
    local sprite = door:GetSprite()
    local animation = sprite:GetAnimation()
    return ____exports.isSecretRoomDoor(nil, door) and (animation == "Hidden")
end
function ____exports.isDoorToDownpour(self, door)
    if not ____exports.isRepentanceDoor(nil, door) then
        return false
    end
    local sprite = door:GetSprite()
    local filename = sprite:GetFilename()
    return filename == "gfx/grid/Door_Downpour.anm2"
end
function ____exports.isDoorToMausoleum(self, door)
    if not ____exports.isRepentanceDoor(nil, door) then
        return false
    end
    local sprite = door:GetSprite()
    local filename = sprite:GetFilename()
    return filename == "gfx/grid/Door_Mausoleum.anm2"
end
function ____exports.isDoorToMausoleumAscent(self, door)
    if not ____exports.isRepentanceDoor(nil, door) then
        return false
    end
    local sprite = door:GetSprite()
    local filename = sprite:GetFilename()
    return filename == "gfx/grid/Door_Mausoleum_Alt.anm2"
end
function ____exports.isDoorToMines(self, door)
    if not ____exports.isRepentanceDoor(nil, door) then
        return false
    end
    local sprite = door:GetSprite()
    local filename = sprite:GetFilename()
    return filename == "gfx/grid/Door_Mines.anm2"
end
function ____exports.isDoorToMomsHeart(self, door)
    if not ____exports.isRepentanceDoor(nil, door) then
        return false
    end
    local sprite = door:GetSprite()
    local filename = sprite:GetFilename()
    return filename == "gfx/grid/Door_MomsHeart.anm2"
end
function ____exports.openAllDoors(self)
    for ____, door in ipairs(
        ____exports.getDoors(nil)
    ) do
        door:Open()
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.entity"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
function ____exports.getBosses(self)
    local bosses = {}
    for ____, npc in ipairs(
        ____exports.getNPCs(nil)
    ) do
        if npc:IsBoss() then
            __TS__ArrayPush(bosses, npc)
        end
    end
    return bosses
end
function ____exports.getNPCs(self)
    local npcs = {}
    for ____, entity in ipairs(
        Isaac.GetRoomEntities()
    ) do
        local npc = entity:ToNPC()
        if npc ~= nil then
            __TS__ArrayPush(npcs, npc)
        end
    end
    return npcs
end
local GLITCHED_ITEM_THRESHOLD = 4000000000
function ____exports.anyEntityCloserThan(self, entities, position, distance)
    for ____, entity in ipairs(entities) do
        if position:Distance(entity.Position) <= distance then
            return true
        end
    end
    return false
end
function ____exports.getAliveBosses(self)
    local aliveBosses = {}
    for ____, boss in ipairs(
        ____exports.getBosses(nil)
    ) do
        if not boss:IsDead() then
            __TS__ArrayPush(aliveBosses, boss)
        end
    end
    return aliveBosses
end
function ____exports.isGlitchedCollectible(self, entity)
    return ((entity.Type == EntityType.ENTITY_PICKUP) and (entity.Variant == PickupVariant.PICKUP_COLLECTIBLE)) and (entity.SubType > GLITCHED_ITEM_THRESHOLD)
end
function ____exports.removeAllEntities(self, entities)
    for ____, entity in ipairs(entities) do
        entity:Remove()
    end
end
function ____exports.removeAllMatchingEntities(self, entityType, entityVariant, entitySubType)
    if entityVariant == nil then
        entityVariant = -1
    end
    if entitySubType == nil then
        entitySubType = -1
    end
    local entities = Isaac.FindByType(entityType, entityVariant, entitySubType)
    ____exports.removeAllEntities(nil, entities)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.gridEntity"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
function ____exports.getGridEntities(self, gridEntityType)
    local game = Game()
    local room = game:GetRoom()
    local gridSize = room:GetGridSize()
    local gridEntities = {}
    do
        local gridIndex = 0
        while gridIndex < gridSize do
            do
                local gridEntity = room:GetGridEntity(gridIndex)
                if gridEntity == nil then
                    goto __continue3
                end
                if gridEntityType == nil then
                    __TS__ArrayPush(gridEntities, gridEntity)
                else
                    local thisGridEntityType = gridEntity:GetType()
                    if thisGridEntityType == gridEntityType then
                        __TS__ArrayPush(gridEntities, gridEntity)
                    end
                end
            end
            ::__continue3::
            gridIndex = gridIndex + 1
        end
    end
    return gridEntities
end
function ____exports.getSurroundingGridEntities(self, gridEntity)
    local game = Game()
    local room = game:GetRoom()
    local gridWidth = room:GetGridWidth()
    local gridIndex = gridEntity:GetGridIndex()
    local surroundingGridIndexes = {gridIndex - 1, gridIndex + 1, (gridIndex - gridWidth) - 1, gridIndex - gridWidth, (gridIndex - gridWidth) + 1, (gridIndex + gridWidth) - 1, gridIndex + gridWidth, (gridIndex + gridWidth) + 1}
    local surroundingGridEntities = {}
    for ____, surroundingGridIndex in ipairs(surroundingGridIndexes) do
        local surroundingGridEntity = room:GetGridEntity(surroundingGridIndex)
        if surroundingGridEntity ~= nil then
            __TS__ArrayPush(surroundingGridEntities, surroundingGridEntity)
        end
    end
    return surroundingGridEntities
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.input"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____constants = require("lua_modules.isaacscript-common.dist.constants")
local MAX_NUM_INPUTS = ____constants.MAX_NUM_INPUTS
local ControllerLiteral = ControllerLiteral or ({})
ControllerLiteral.DPAD_LEFT = 0
ControllerLiteral[ControllerLiteral.DPAD_LEFT] = "DPAD_LEFT"
ControllerLiteral.DPAD_RIGHT = 1
ControllerLiteral[ControllerLiteral.DPAD_RIGHT] = "DPAD_RIGHT"
ControllerLiteral.DPAD_UP = 2
ControllerLiteral[ControllerLiteral.DPAD_UP] = "DPAD_UP"
ControllerLiteral.DPAD_DOWN = 3
ControllerLiteral[ControllerLiteral.DPAD_DOWN] = "DPAD_DOWN"
ControllerLiteral.BUTTON_A = 4
ControllerLiteral[ControllerLiteral.BUTTON_A] = "BUTTON_A"
ControllerLiteral.BUTTON_B = 5
ControllerLiteral[ControllerLiteral.BUTTON_B] = "BUTTON_B"
ControllerLiteral.BUTTON_X = 6
ControllerLiteral[ControllerLiteral.BUTTON_X] = "BUTTON_X"
ControllerLiteral.BUTTON_Y = 7
ControllerLiteral[ControllerLiteral.BUTTON_Y] = "BUTTON_Y"
ControllerLiteral.BUMPER_LEFT = 8
ControllerLiteral[ControllerLiteral.BUMPER_LEFT] = "BUMPER_LEFT"
ControllerLiteral.TRIGGER_LEFT = 9
ControllerLiteral[ControllerLiteral.TRIGGER_LEFT] = "TRIGGER_LEFT"
ControllerLiteral.STICK_LEFT = 10
ControllerLiteral[ControllerLiteral.STICK_LEFT] = "STICK_LEFT"
ControllerLiteral.BUMPER_RIGHT = 11
ControllerLiteral[ControllerLiteral.BUMPER_RIGHT] = "BUMPER_RIGHT"
ControllerLiteral.TRIGGER_RIGHT = 12
ControllerLiteral[ControllerLiteral.TRIGGER_RIGHT] = "TRIGGER_RIGHT"
ControllerLiteral.STICK_RIGHT = 13
ControllerLiteral[ControllerLiteral.STICK_RIGHT] = "STICK_RIGHT"
ControllerLiteral.BUTTON_BACK = 14
ControllerLiteral[ControllerLiteral.BUTTON_BACK] = "BUTTON_BACK"
ControllerLiteral.BUTTON_START = 15
ControllerLiteral[ControllerLiteral.BUTTON_START] = "BUTTON_START"
function ____exports.controllerToString(self, controller)
    for ____, ____value in ipairs(
        __TS__ObjectEntries(ControllerLiteral)
    ) do
        local key
        key = ____value[1]
        local controllerLiteralCode
        controllerLiteralCode = ____value[2]
        do
            if type(key) ~= "string" then
                goto __continue3
            end
            local controllerCode = controllerLiteralCode
            if controllerCode ~= controller then
                goto __continue3
            end
            local controllerName = key
            for ____, prefix in ipairs({"DPAD_", "BUTTON_", "BUMPER_", "TRIGGER_", "STICK_"}) do
                controllerName = __TS__StringReplace(controllerName, prefix, "")
            end
            return controllerName
        end
        ::__continue3::
    end
    return "unknown"
end
function ____exports.isActionPressedOnAnyInput(self, buttonAction)
    do
        local i = 0
        while i < MAX_NUM_INPUTS do
            if Input.IsActionPressed(buttonAction, i) then
                return true
            end
            i = i + 1
        end
    end
    return false
end
function ____exports.isActionTriggeredOnAnyInput(self, buttonAction)
    do
        local i = 0
        while i < MAX_NUM_INPUTS do
            if Input.IsActionTriggered(buttonAction, i) then
                return true
            end
            i = i + 1
        end
    end
    return false
end
function ____exports.isKeyboardPressed(self, key)
    return Input.IsButtonPressed(key, 0)
end
function ____exports.keyboardToString(self, keyboard)
    for keyName, keyCode in pairs(Keyboard) do
        if keyCode == keyboard then
            local withoutPrefix = __TS__StringSlice(keyName, #"KEY_")
            local withoutUnderscores = string.gsub(withoutPrefix, "_", " ")
            return withoutUnderscores
        end
    end
    return "unknown"
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.items"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
function ____exports.getItemName(self, collectibleOrTrinketType, trinket)
    if trinket == nil then
        trinket = false
    end
    local itemConfig = Isaac.GetItemConfig()
    local defaultName = "Unknown"
    if type(collectibleOrTrinketType) ~= "number" then
        return defaultName
    end
    local itemConfigItem = ((trinket and (function() return itemConfig:GetTrinket(collectibleOrTrinketType) end)) or (function() return itemConfig:GetCollectible(collectibleOrTrinketType) end))()
    if itemConfigItem == nil then
        return defaultName
    end
    return itemConfigItem.Name
end
function ____exports.removeItemFromItemTracker(self, collectibleType)
    local itemName = ____exports.getItemName(nil, collectibleType)
    Isaac.DebugString(
        ((("Removing voided collectible " .. tostring(collectibleType)) .. " (") .. itemName) .. ") from player 0 (Player)"
    )
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.pickups"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local CHEST_PICKUP_VARIANTS = __TS__New(Set, {PickupVariant.PICKUP_CHEST, PickupVariant.PICKUP_BOMBCHEST, PickupVariant.PICKUP_SPIKEDCHEST, PickupVariant.PICKUP_ETERNALCHEST, PickupVariant.PICKUP_MIMICCHEST, PickupVariant.PICKUP_OLDCHEST, PickupVariant.PICKUP_WOODENCHEST, PickupVariant.PICKUP_MEGACHEST, PickupVariant.PICKUP_HAUNTEDCHEST, PickupVariant.PICKUP_LOCKEDCHEST, PickupVariant.PICKUP_REDCHEST, PickupVariant.PICKUP_MOMSCHEST})
function ____exports.isChest(self, pickup)
    return CHEST_PICKUP_VARIANTS:has(pickup.Variant)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.player"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____PocketItemType = require("lua_modules.isaacscript-common.dist.types.PocketItemType")
local PocketItemType = ____PocketItemType.default
local ____util = require("lua_modules.isaacscript-common.dist.functions.util")
local getCollectibleSet = ____util.getCollectibleSet
local EXCLUDED_CHARACTERS
function ____exports.getPlayers(self, performExclusions)
    if performExclusions == nil then
        performExclusions = false
    end
    local game = Game()
    local players = {}
    do
        local i = 0
        while i < game:GetNumPlayers() do
            do
                local player = Isaac.GetPlayer(i)
                if player == nil then
                    goto __continue38
                end
                if ____exports.isChildPlayer(nil, player) then
                    goto __continue38
                end
                local character = player:GetPlayerType()
                if performExclusions and EXCLUDED_CHARACTERS:has(character) then
                    goto __continue38
                end
                __TS__ArrayPush(players, player)
            end
            ::__continue38::
            i = i + 1
        end
    end
    return players
end
function ____exports.getPlayerIndex(self, player)
    local character = player:GetPlayerType()
    local collectibleToUse = ((character == PlayerType.PLAYER_LAZARUS2_B) and CollectibleType.COLLECTIBLE_INNER_EYE) or CollectibleType.COLLECTIBLE_SAD_ONION
    local collectibleRNG = player:GetCollectibleRNG(collectibleToUse)
    local seed = collectibleRNG:GetSeed()
    local seedString = tostring(seed)
    return seedString
end
function ____exports.isChildPlayer(self, player)
    return player.Parent ~= nil
end
EXCLUDED_CHARACTERS = __TS__New(Set, {PlayerType.PLAYER_ESAU, PlayerType.PLAYER_THESOUL_B})
function ____exports.anyPlayerCloserThan(self, position, distance)
    for ____, player in ipairs(
        ____exports.getPlayers(nil)
    ) do
        if player.Position:Distance(position) <= distance then
            return true
        end
    end
    return false
end
function ____exports.anyPlayerHasCollectible(self, collectibleType)
    for ____, player in ipairs(
        ____exports.getPlayers(nil)
    ) do
        if player:HasCollectible(collectibleType) then
            return true
        end
    end
    return false
end
function ____exports.anyPlayerHasTrinket(self, trinketType)
    for ____, player in ipairs(
        ____exports.getPlayers(nil)
    ) do
        if player:HasTrinket(trinketType) then
            return true
        end
    end
    return false
end
function ____exports.anyPlayerIs(self, matchingCharacter)
    for ____, player in ipairs(
        ____exports.getPlayers(nil)
    ) do
        local character = player:GetPlayerType()
        if character == matchingCharacter then
            return true
        end
    end
    return false
end
function ____exports.getClosestPlayer(self, position)
    local closestPlayer = nil
    local closestDistance = math.huge
    for ____, player in ipairs(
        ____exports.getPlayers(nil)
    ) do
        local distance = position:Distance(player.Position)
        if distance < closestDistance then
            closestPlayer = player
            closestDistance = distance
        end
    end
    if closestPlayer == nil then
        error("Failed to find any players.")
    end
    return closestPlayer
end
function ____exports.getDeathAnimationName(self, player)
    local character = player:GetPlayerType()
    local isLostTypeCharacter = (((character == PlayerType.PLAYER_THELOST) or (character == PlayerType.PLAYER_THELOST_B)) or (character == PlayerType.PLAYER_THESOUL)) or (character == PlayerType.PLAYER_THESOUL_B)
    return (isLostTypeCharacter and "LostDeath") or "Death"
end
function ____exports.getNewestPlayer(self)
    local newestPlayer = nil
    local lowestFrame = math.huge
    for ____, player in ipairs(
        ____exports.getPlayers(nil)
    ) do
        if player.FrameCount < lowestFrame then
            newestPlayer = player
            lowestFrame = player.FrameCount
        end
    end
    if newestPlayer == nil then
        error("Failed to find any players.")
    end
    return newestPlayer
end
function ____exports.getOpenTrinketSlot(self, player)
    local maxTrinkets = player:GetMaxTrinkets()
    local trinket0 = player:GetTrinket(0)
    local trinket1 = player:GetTrinket(1)
    if maxTrinkets == 1 then
        return ((trinket0 == TrinketType.TRINKET_NULL) and 0) or nil
    end
    if maxTrinkets == 2 then
        if trinket0 == TrinketType.TRINKET_NULL then
            return 0
        end
        return ((trinket1 == TrinketType.TRINKET_NULL) and 1) or nil
    end
    error(
        "The player has an unknown number of trinket slots: " .. tostring(maxTrinkets)
    )
    return nil
end
function ____exports.getPlayerCloserThan(self, position, distance)
    for ____, player in ipairs(
        ____exports.getPlayers(nil)
    ) do
        if player.Position:Distance(position) <= distance then
            return player
        end
    end
    return nil
end
function ____exports.getPlayerCollectibleMap(self, player)
    local collectibleMap = __TS__New(Map)
    local collectibleSet = getCollectibleSet(nil)
    for ____, collectibleType in __TS__Iterator(
        collectibleSet:values()
    ) do
        do
            if not player:HasCollectible(collectibleType) then
                goto __continue31
            end
            local collectibleNum = player:GetCollectibleNum(collectibleType)
            if collectibleNum > 0 then
                collectibleMap:set(collectibleType, collectibleNum)
            end
        end
        ::__continue31::
    end
    return collectibleMap
end
function ____exports.getPlayerFromIndex(self, playerIndex)
    for ____, player in ipairs(
        ____exports.getPlayers(nil)
    ) do
        local existingPlayerIndex = ____exports.getPlayerIndex(nil, player)
        if existingPlayerIndex == playerIndex then
            return player
        end
    end
    return nil
end
function ____exports.getPlayersOfType(self, playerType)
    local players = {}
    for ____, player in ipairs(
        ____exports.getPlayers(nil)
    ) do
        local character = player:GetPlayerType()
        if character == playerType then
            __TS__ArrayPush(players, player)
        end
    end
    return players
end
function ____exports.getPlayerIndexVanilla(self, playerToFind)
    local game = Game()
    local playerToFindHash = GetPtrHash(playerToFind)
    do
        local i = 0
        while i < game:GetNumPlayers() do
            do
                local player = Isaac.GetPlayer(i)
                if player == nil then
                    goto __continue47
                end
                local playerHash = GetPtrHash(player)
                if playerHash == playerToFindHash then
                    return i
                end
            end
            ::__continue47::
            i = i + 1
        end
    end
    return nil
end
function ____exports.getPlayerNumAllHearts(self, player)
    local hearts = player:GetHearts()
    local soulHearts = player:GetSoulHearts()
    local boneHearts = player:GetBoneHearts()
    local eternalHearts = player:GetEternalHearts()
    return ((hearts + soulHearts) + boneHearts) + eternalHearts
end
function ____exports.getPocketItems(self, player)
    local pocketItem = player:GetActiveItem(ActiveSlot.SLOT_POCKET)
    local hasPocketItem = pocketItem ~= CollectibleType.COLLECTIBLE_NULL
    local pocketItem2 = player:GetActiveItem(ActiveSlot.SLOT_POCKET2)
    local hasPocketItem2 = pocketItem2 ~= CollectibleType.COLLECTIBLE_NULL
    local maxPocketItems = player:GetMaxPocketItems()
    local pocketItems = {}
    local pocketItemIdentified = false
    local pocketItem2Identified = false
    do
        local slot = 0
        while slot < 4 do
            local card = player:GetCard(slot)
            local pill = player:GetPill(slot)
            if card ~= Card.CARD_NULL then
                __TS__ArrayPush(pocketItems, {type = PocketItemType.CARD, id = card})
            elseif pill ~= PillColor.PILL_NULL then
                __TS__ArrayPush(pocketItems, {type = PocketItemType.PILL, id = pill})
            elseif (hasPocketItem and (not hasPocketItem2)) and (not pocketItemIdentified) then
                pocketItemIdentified = true
                __TS__ArrayPush(pocketItems, {type = PocketItemType.ACTIVE_ITEM, id = pocketItem})
            elseif ((not hasPocketItem) and hasPocketItem2) and (not pocketItem2Identified) then
                pocketItem2Identified = true
                __TS__ArrayPush(pocketItems, {type = PocketItemType.DICE_BAG_DICE, id = pocketItem2})
            elseif hasPocketItem and hasPocketItem2 then
                __TS__ArrayPush(pocketItems, {type = PocketItemType.UNDETERMINABLE, id = 0})
            else
                __TS__ArrayPush(pocketItems, {type = PocketItemType.EMPTY, id = 0})
            end
            if (slot + 1) == maxPocketItems then
                break
            end
            slot = slot + 1
        end
    end
    return pocketItems
end
function ____exports.getTotalCharge(self, player, activeSlot)
    local activeCharge = player:GetActiveCharge(activeSlot)
    local batteryCharge = player:GetBatteryCharge(activeSlot)
    return activeCharge + batteryCharge
end
function ____exports.getTotalPlayerCollectibles(self, collectibleType)
    local numCollectibles = 0
    for ____, player in ipairs(
        ____exports.getPlayers(nil)
    ) do
        numCollectibles = numCollectibles + player:GetCollectibleNum(collectibleType)
    end
    return numCollectibles
end
function ____exports.hasLostCurse(self, player)
    local effects = player:GetEffects()
    return effects:HasNullEffect(NullItemID.ID_LOST_CURSE)
end
function ____exports.hasOpenActiveItemSlot(self, player)
    local character = player:GetPlayerType()
    if character == PlayerType.PLAYER_THESOUL_B then
        return false
    end
    local activeItemPrimary = player:GetActiveItem(ActiveSlot.SLOT_PRIMARY)
    local activeItemSecondary = player:GetActiveItem(ActiveSlot.SLOT_SECONDARY)
    local hasSchoolbag = player:HasCollectible(CollectibleType.COLLECTIBLE_SCHOOLBAG)
    if hasSchoolbag then
        return (activeItemPrimary == CollectibleType.COLLECTIBLE_NULL) or (activeItemSecondary == CollectibleType.COLLECTIBLE_NULL)
    end
    return activeItemPrimary == CollectibleType.COLLECTIBLE_NULL
end
function ____exports.hasOpenPocketItemSlot(self, player)
    local character = player:GetPlayerType()
    if character == PlayerType.PLAYER_THESOUL_B then
        return false
    end
    local pocketItems = ____exports.getPocketItems(nil, player)
    for ____, pocketItem in ipairs(pocketItems) do
        if pocketItem.type == PocketItemType.EMPTY then
            return true
        end
    end
    return false
end
function ____exports.hasOpenTrinketSlot(self, player)
    local character = player:GetPlayerType()
    if character == PlayerType.PLAYER_THESOUL_B then
        return false
    end
    local openTrinketSlot = ____exports.getOpenTrinketSlot(nil, player)
    return openTrinketSlot ~= nil
end
function ____exports.isFirstPlayer(self, player)
    return ____exports.getPlayerIndexVanilla(nil, player) == 0
end
function ____exports.isJacobOrEsau(self, player)
    local character = player:GetPlayerType()
    return (character == PlayerType.PLAYER_JACOB) or (character == PlayerType.PLAYER_ESAU)
end
function ____exports.isKeeper(self, player)
    local character = player:GetPlayerType()
    return (character == PlayerType.PLAYER_KEEPER) or (character == PlayerType.PLAYER_KEEPER_B)
end
function ____exports.isLost(self, player)
    local character = player:GetPlayerType()
    return (character == PlayerType.PLAYER_THELOST) or (character == PlayerType.PLAYER_THELOST_B)
end
function ____exports.removeDeadEyeMultiplier(self, player)
    do
        local i = 0
        while i < 100 do
            player:ClearDeadEyeCharge()
            i = i + 1
        end
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.types.PocketItemType"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local PocketItemType = PocketItemType or ({})
PocketItemType.EMPTY = 0
PocketItemType[PocketItemType.EMPTY] = "EMPTY"
PocketItemType.CARD = 1
PocketItemType[PocketItemType.CARD] = "CARD"
PocketItemType.PILL = 2
PocketItemType[PocketItemType.PILL] = "PILL"
PocketItemType.ACTIVE_ITEM = 3
PocketItemType[PocketItemType.ACTIVE_ITEM] = "ACTIVE_ITEM"
PocketItemType.DICE_BAG_DICE = 4
PocketItemType[PocketItemType.DICE_BAG_DICE] = "DICE_BAG_DICE"
PocketItemType.UNDETERMINABLE = 5
PocketItemType[PocketItemType.UNDETERMINABLE] = "UNDETERMINABLE"
____exports.default = PocketItemType
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.revive"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getDeathAnimationName = ____player.getDeathAnimationName
local ____sprite = require("lua_modules.isaacscript-common.dist.functions.sprite")
local getFinalFrameOfAnimation = ____sprite.getFinalFrameOfAnimation
local ____trinkets = require("lua_modules.isaacscript-common.dist.functions.trinkets")
local giveTrinketsBack = ____trinkets.giveTrinketsBack
local temporarilyRemoveTrinkets = ____trinkets.temporarilyRemoveTrinkets
function ____exports.willMysteriousPaperRevive(self, player)
    local game = Game()
    local gameFrameCount = game:GetFrameCount()
    local sprite = player:GetSprite()
    local animation = getDeathAnimationName(nil, player)
    local deathAnimationFrames = getFinalFrameOfAnimation(nil, sprite, animation)
    local frameOfDeath = (gameFrameCount + deathAnimationFrames) + 1
    return (frameOfDeath % 4) == 3
end
function ____exports.willPlayerRevive(self, player)
    local trinketSituation = temporarilyRemoveTrinkets(nil, player, TrinketType.TRINKET_MYSTERIOUS_PAPER)
    local willRevive = player:WillPlayerRevive() or ((trinketSituation ~= nil) and ____exports.willMysteriousPaperRevive(nil, player))
    giveTrinketsBack(nil, player, trinketSituation)
    return willRevive
end
function ____exports.willReviveFromSpiritShackles(self, player)
    if not player:HasCollectible(CollectibleType.COLLECTIBLE_SPIRIT_SHACKLES) then
        return false
    end
    local effects = player:GetEffects()
    local spiritShacklesEnabled = not effects:HasNullEffect(NullItemID.ID_SPIRIT_SHACKLES_DISABLED)
    local playerInSoulForm = effects:HasNullEffect(NullItemID.ID_SPIRIT_SHACKLES_SOUL)
    return spiritShacklesEnabled and (not playerInSoulForm)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.sprite"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
function ____exports.getFinalFrameOfAnimation(self, sprite, animation)
    local currentAnimation = sprite:GetAnimation()
    local currentFrame = sprite:GetFrame()
    if (animation ~= nil) and (animation ~= currentAnimation) then
        sprite:SetAnimation(animation)
    end
    sprite:SetLastFrame()
    local finalFrame = sprite:GetFrame()
    if (animation ~= nil) and (animation ~= currentAnimation) then
        sprite:Play(currentAnimation, true)
    end
    sprite:SetFrame(currentFrame)
    return finalFrame
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.trinkets"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____constants = require("lua_modules.isaacscript-common.dist.constants")
local GOLDEN_TRINKET_SHIFT = ____constants.GOLDEN_TRINKET_SHIFT
function ____exports.temporarilyRemoveTrinkets(self, player, trinketType)
    if not player:HasTrinket(trinketType) then
        return nil
    end
    local trinket1 = player:GetTrinket(0)
    local trinket2 = player:GetTrinket(1)
    local numTrinkets = 0
    while player:HasTrinket(trinketType) do
        player:TryRemoveTrinket(trinketType)
        numTrinkets = numTrinkets + 1
    end
    local numSmeltedTrinkets = numTrinkets
    local trinketWasInSlot1 = (trinket1 == trinketType) or ((trinket1 + GOLDEN_TRINKET_SHIFT) == trinketType)
    if trinketWasInSlot1 then
        numSmeltedTrinkets = numSmeltedTrinkets - 1
    end
    local trinketWasInSlot2 = (trinket2 == trinketType) or ((trinket2 + GOLDEN_TRINKET_SHIFT) == trinketType)
    if trinketWasInSlot2 then
        numSmeltedTrinkets = numSmeltedTrinkets - 1
    end
    return {trinketTypeRemoved = trinketType, trinket1 = trinket1, trinket2 = trinket2, numSmeltedTrinkets = numSmeltedTrinkets}
end
function ____exports.giveTrinketsBack(self, player, trinketSituation)
    if trinketSituation == nil then
        return
    end
    local trinket1 = player:GetTrinket(0)
    local trinket2 = player:GetTrinket(1)
    if trinket1 ~= TrinketType.TRINKET_NULL then
        player:TryRemoveTrinket(trinket1)
    end
    if trinket2 ~= TrinketType.TRINKET_NULL then
        player:TryRemoveTrinket(trinket2)
    end
    do
        local i = 0
        while i < trinketSituation.numSmeltedTrinkets do
            player:AddTrinket(trinketSituation.trinketTypeRemoved, false)
            player:UseActiveItem(CollectibleType.COLLECTIBLE_SMELTER, UseFlag.USE_NOANIM)
            i = i + 1
        end
    end
    if trinketSituation.trinket1 ~= TrinketType.TRINKET_NULL then
        player:AddTrinket(trinketSituation.trinket1, false)
    end
    if trinketSituation.trinket2 ~= TrinketType.TRINKET_NULL then
        player:AddTrinket(trinketSituation.trinket2, false)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.rooms"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____constants = require("lua_modules.isaacscript-common.dist.constants")
local GENESIS_ROOM_VARIANT = ____constants.GENESIS_ROOM_VARIANT
local MAX_ROOM_INDEX = ____constants.MAX_ROOM_INDEX
function ____exports.getRoomIndex(self)
    local game = Game()
    local level = game:GetLevel()
    local roomIndex = level:GetCurrentRoomIndex()
    if roomIndex < 0 then
        return roomIndex
    end
    local roomDesc = level:GetCurrentRoomDesc()
    return roomDesc.SafeGridIndex
end
local IT_LIVES_ROOM_VARIANTS = {1090, 1091, 1092, 1093, 1094}
local BLUE_BABY_ROOM_VARIANTS = {3390, 3391, 3392, 3393}
local LAMB_ROOM_VARIANTS = {5130}
function ____exports.changeRoom(self, roomIndex)
    local game = Game()
    local level = game:GetLevel()
    level.LeaveDoor = -1
    game:ChangeRoom(roomIndex)
end
function ____exports.getCurrentDimension(self)
    local game = Game()
    local level = game:GetLevel()
    local startingRoomIndex = level:GetStartingRoomIndex()
    local startingRoomDesc = level:GetRoomByIdx(startingRoomIndex, -1)
    local startingRoomHash = GetPtrHash(startingRoomDesc)
    do
        local dimension = 0
        while dimension <= 2 do
            local dimensionRoomDesc = level:GetRoomByIdx(startingRoomIndex, dimension)
            local dimensionRoomHash = GetPtrHash(dimensionRoomDesc)
            if dimensionRoomHash == startingRoomHash then
                return dimension
            end
            dimension = dimension + 1
        end
    end
    error(
        "Failed to get the current dimension using the starting room index of: " .. tostring(startingRoomIndex)
    )
    return 0
end
function ____exports.getRoomData(self)
    local game = Game()
    local level = game:GetLevel()
    local roomIndex = ____exports.getRoomIndex(nil)
    local roomDesc = level:GetRoomByIdx(roomIndex)
    return roomDesc.Data
end
function ____exports.getRoomDataType(self)
    local roomData = ____exports.getRoomData(nil)
    if roomData == nil then
        return -1
    end
    return roomData.Type
end
function ____exports.getRoomIndexesForType(self, roomType)
    local game = Game()
    local level = game:GetLevel()
    local roomIndexes = __TS__New(Set)
    do
        local i = 0
        while i <= MAX_ROOM_INDEX do
            local room = level:GetRoomByIdx(i)
            if ((room ~= nil) and (room.Data ~= nil)) and (room.Data.Type == roomType) then
                roomIndexes:add(room.SafeGridIndex)
            end
            i = i + 1
        end
    end
    return roomIndexes
end
function ____exports.getRoomStageID(self)
    local roomData = ____exports.getRoomData(nil)
    if roomData == nil then
        return -1
    end
    return roomData.StageID
end
function ____exports.getRoomSubType(self)
    local roomData = ____exports.getRoomData(nil)
    if roomData == nil then
        return -1
    end
    return roomData.Subtype
end
function ____exports.getRoomVariant(self)
    local roomData = ____exports.getRoomData(nil)
    if roomData == nil then
        return -1
    end
    return roomData.Variant
end
function ____exports.gridToPos(self, x, y)
    local game = Game()
    local room = game:GetRoom()
    x = x + 1
    y = y + 1
    local gridIndex = (y * room:GetGridWidth()) + x
    return room:GetGridPosition(gridIndex)
end
function ____exports.in2x1Room(self)
    local game = Game()
    local room = game:GetRoom()
    local roomShape = room:GetRoomShape()
    return (roomShape == RoomShape.ROOMSHAPE_1x2) or (roomShape == RoomShape.ROOMSHAPE_2x1)
end
function ____exports.inAngelShop(self)
    local game = Game()
    local room = game:GetRoom()
    local roomType = room:GetType()
    local roomSubType = ____exports.getRoomSubType(nil)
    return (roomType == RoomType.ROOM_ANGEL) and (roomSubType == 1)
end
function ____exports.inBeastRoom(self)
    local roomIndex = ____exports.getRoomIndex(nil)
    local roomSubType = ____exports.getRoomSubType(nil)
    return (roomIndex == GridRooms.ROOM_DUNGEON_IDX) and (roomSubType == 4)
end
function ____exports.inBlueBabyRoom(self)
    local roomStageID = ____exports.getRoomStageID(nil)
    local roomVariant = ____exports.getRoomVariant(nil)
    return (roomStageID == 0) and __TS__ArrayIncludes(BLUE_BABY_ROOM_VARIANTS, roomVariant)
end
function ____exports.inCrawlspace(self)
    local roomIndex = ____exports.getRoomIndex(nil)
    local roomSubType = ____exports.getRoomSubType(nil)
    return (roomIndex == GridRooms.ROOM_DUNGEON_IDX) and (roomSubType ~= 4)
end
function ____exports.inDeathCertificateArea(self)
    local roomStageID = ____exports.getRoomStageID(nil)
    local roomSubType = ____exports.getRoomSubType(nil)
    return (roomStageID == 35) and ((roomSubType == 33) or (roomSubType == 33))
end
function ____exports.inDimension(self, dimension)
    return dimension == ____exports.getCurrentDimension(nil)
end
function ____exports.inLRoom(self)
    local game = Game()
    local room = game:GetRoom()
    local roomShape = room:GetRoomShape()
    return (((roomShape == RoomShape.ROOMSHAPE_LTL) or (roomShape == RoomShape.ROOMSHAPE_LTR)) or (roomShape == RoomShape.ROOMSHAPE_LBL)) or (roomShape == RoomShape.ROOMSHAPE_LBR)
end
function ____exports.inLambRoom(self)
    local roomStageID = ____exports.getRoomStageID(nil)
    local roomVariant = ____exports.getRoomVariant(nil)
    return (roomStageID == 0) and __TS__ArrayIncludes(LAMB_ROOM_VARIANTS, roomVariant)
end
function ____exports.inGenesisRoom(self)
    local game = Game()
    local room = game:GetRoom()
    local roomType = room:GetType()
    local roomVariant = ____exports.getRoomVariant(nil)
    return (roomType == RoomType.ROOM_ISAACS) or (roomVariant == GENESIS_ROOM_VARIANT)
end
function ____exports.inItLivesRoom(self)
    local roomStageID = ____exports.getRoomStageID(nil)
    local roomVariant = ____exports.getRoomVariant(nil)
    return (roomStageID == 0) and __TS__ArrayIncludes(IT_LIVES_ROOM_VARIANTS, roomVariant)
end
function ____exports.inStartingRoom(self)
    local game = Game()
    local level = game:GetLevel()
    local startingRoomIndex = level:GetStartingRoomIndex()
    local roomIndex = ____exports.getRoomIndex(nil)
    return roomIndex == startingRoomIndex
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.stage"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
function ____exports.onRepentanceStage(self)
    local game = Game()
    local level = game:GetLevel()
    local stageType = level:GetStageType()
    return (stageType == StageType.STAGETYPE_REPENTANCE) or (stageType == StageType.STAGETYPE_REPENTANCE_B)
end
function ____exports.getEffectiveStage(self)
    local game = Game()
    local level = game:GetLevel()
    local stage = level:GetStage()
    if ____exports.onRepentanceStage(nil) then
        return stage + 1
    end
    return stage
end
function ____exports.onCathedral(self)
    local game = Game()
    local level = game:GetLevel()
    local stage = level:GetStage()
    local stageType = level:GetStageType()
    return (stage == 10) and (stageType == 1)
end
function ____exports.onChest(self)
    local game = Game()
    local level = game:GetLevel()
    local stage = level:GetStage()
    local stageType = level:GetStageType()
    return (stage == 11) and (stageType == 1)
end
function ____exports.onDarkRoom(self)
    local game = Game()
    local level = game:GetLevel()
    local stage = level:GetStage()
    local stageType = level:GetStageType()
    return (stage == 11) and (stageType == 0)
end
function ____exports.onFinalFloor(self)
    local game = Game()
    local level = game:GetLevel()
    local stage = level:GetStage()
    return (((stage == 11) or (stage == 12)) or (stage == 13)) or ((stage == 8) and ____exports.onRepentanceStage(nil))
end
function ____exports.onSheol(self)
    local game = Game()
    local level = game:GetLevel()
    local stage = level:GetStage()
    local stageType = level:GetStageType()
    return (stage == 10) and (stageType == 0)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.tears"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
function ____exports.getFireDelay(self, tearsStat)
    return math.max((30 / tearsStat) - 1, -0.9999)
end
function ____exports.getTearsStat(self, fireDelay)
    return 30 / (fireDelay + 1)
end
function ____exports.addTearsStat(self, player, tearsStat)
    local existingTearsStat = ____exports.getTearsStat(nil, player.MaxFireDelay)
    local newTearsStat = existingTearsStat + tearsStat
    local newMaxFireDelay = ____exports.getFireDelay(nil, newTearsStat)
    player.MaxFireDelay = newMaxFireDelay
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.transformations"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____transformationMap = require("lua_modules.isaacscript-common.dist.transformationMap")
local ITEM_TO_TRANSFORMATION_MAP = ____transformationMap.ITEM_TO_TRANSFORMATION_MAP
local TRANSFORMATIONS_NOT_TRACKED = ____transformationMap.TRANSFORMATIONS_NOT_TRACKED
local TRANSFORMATION_TO_ITEMS_MAP = ____transformationMap.TRANSFORMATION_TO_ITEMS_MAP
function ____exports.getPlayerNumTransformationCollectibles(self, player, playerForm)
    if TRANSFORMATIONS_NOT_TRACKED:has(playerForm) then
        error(
            ("The transformation of " .. tostring(playerForm)) .. " cannot be tracked by this function."
        )
    end
    local itemsForTransformation = TRANSFORMATION_TO_ITEMS_MAP:get(playerForm)
    if itemsForTransformation == nil then
        error(
            ("The transformation of " .. tostring(playerForm)) .. " is not a valid value of the PlayerForm enum."
        )
    end
    local numCollectibles = 0
    for ____, collectibleType in __TS__Iterator(
        itemsForTransformation:values()
    ) do
        numCollectibles = numCollectibles + player:GetCollectibleNum(collectibleType)
    end
    return numCollectibles
end
function ____exports.getTransformationsForItem(self, collectibleType)
    local transformations = ITEM_TO_TRANSFORMATION_MAP:get(collectibleType)
    return ((transformations == nil) and __TS__New(Set)) or transformations
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.transformationMap"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____collectibles = require("lua_modules.isaacscript-common.dist.functions.collectibles")
local collectibleHasTag = ____collectibles.collectibleHasTag
local getMaxCollectibleID = ____collectibles.getMaxCollectibleID
local initMaps
function initMaps(self)
    for ____, playerForm in __TS__Iterator(
        ____exports.TRANSFORMATION_TO_TAG_MAP:keys()
    ) do
        ____exports.TRANSFORMATION_TO_ITEMS_MAP:set(
            playerForm,
            __TS__New(Set)
        )
    end
    do
        local collectibleType = 1
        while collectibleType <= getMaxCollectibleID(nil) do
            for ____, ____value in __TS__Iterator(
                ____exports.TRANSFORMATION_TO_TAG_MAP:entries()
            ) do
                local playerForm
                playerForm = ____value[1]
                local tag
                tag = ____value[2]
                do
                    if not collectibleHasTag(nil, collectibleType, tag) then
                        goto __continue5
                    end
                    local items = ____exports.TRANSFORMATION_TO_ITEMS_MAP:get(playerForm)
                    if items == nil then
                        error(
                            "Failed to get the items for transformation: " .. tostring(playerForm)
                        )
                    end
                    items:add(collectibleType)
                    local transformations = ____exports.ITEM_TO_TRANSFORMATION_MAP:get(collectibleType)
                    if transformations == nil then
                        transformations = __TS__New(Set)
                        ____exports.ITEM_TO_TRANSFORMATION_MAP:set(collectibleType, transformations)
                    end
                    transformations:add(playerForm)
                end
                ::__continue5::
            end
            collectibleType = collectibleType + 1
        end
    end
end
____exports.TRANSFORMATION_TO_TAG_MAP = __TS__New(Map, {{PlayerForm.PLAYERFORM_GUPPY, 32}, {PlayerForm.PLAYERFORM_LORD_OF_THE_FLIES, 64}, {PlayerForm.PLAYERFORM_MUSHROOM, 256}, {PlayerForm.PLAYERFORM_ANGEL, 1024}, {PlayerForm.PLAYERFORM_BOB, 128}, {PlayerForm.PLAYERFORM_DRUGS, 2}, {PlayerForm.PLAYERFORM_MOM, 4}, {PlayerForm.PLAYERFORM_BABY, 512}, {PlayerForm.PLAYERFORM_EVIL_ANGEL, 2048}, {PlayerForm.PLAYERFORM_POOP, 4096}, {PlayerForm.PLAYERFORM_BOOK_WORM, 8192}, {PlayerForm.PLAYERFORM_SPIDERBABY, 16384}})
____exports.TRANSFORMATIONS_NOT_TRACKED = __TS__New(Set, {PlayerForm.PLAYERFORM_ADULTHOOD, PlayerForm.PLAYERFORM_STOMPY, PlayerForm.PLAYERFORM_FLIGHT})
____exports.TRANSFORMATION_TO_ITEMS_MAP = __TS__New(Map)
____exports.ITEM_TO_TRANSFORMATION_MAP = __TS__New(Map)
initMaps(nil)
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.ui"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local SCREEN_SIZE_BETWEEN_RENDER_SURFACES
function ____exports.getScreenBottomRight(self)
    local game = Game()
    local room = game:GetRoom()
    local renderSurfaceTopLeft = room:GetRenderSurfaceTopLeft()
    local doubleRenderSurfaceTopLeft = renderSurfaceTopLeft * 2
    return doubleRenderSurfaceTopLeft + SCREEN_SIZE_BETWEEN_RENDER_SURFACES
end
local GRID_ENTITIES_BETWEEN_RENDER_SURFACES = Vector(17, 11)
local GRID_ENTITY_RENDER_SIZE = Vector(26, 26)
SCREEN_SIZE_BETWEEN_RENDER_SURFACES = GRID_ENTITY_RENDER_SIZE * GRID_ENTITIES_BETWEEN_RENDER_SURFACES
function ____exports.getHUDOffsetVector(self)
    local defaultVector = Vector.Zero
    if ((ModConfigMenu == nil) or (ModConfigMenu.Config == nil)) or (ModConfigMenu.Config.General == nil) then
        return defaultVector
    end
    local hudOffset = ModConfigMenu.Config.General.HudOffset
    if hudOffset == nil then
        return defaultVector
    end
    if ((type(hudOffset) ~= "number") or (hudOffset < 1)) or (hudOffset > 10) then
        return defaultVector
    end
    local x = hudOffset * 2
    local y = hudOffset
    if y >= 4 then
        y = y + 1
    end
    if y >= 9 then
        y = y + 1
    end
    return Vector(x, y)
end
function ____exports.getScreenTopLeft(self)
    return Vector.Zero
end
function ____exports.getScreenTopRight(self)
    local bottomRight = ____exports.getScreenBottomRight(nil)
    return Vector(bottomRight.X, 0)
end
function ____exports.getScreenBottomLeft(self)
    local bottomRight = ____exports.getScreenBottomRight(nil)
    return Vector(0, bottomRight.Y)
end
function ____exports.getScreenCenter(self)
    local bottomRight = ____exports.getScreenBottomRight(nil)
    return bottomRight / 2
end
function ____exports.getVisibleHearts(self, player)
    local maxHearts = math.max(
        player:GetEffectiveMaxHearts(),
        player:GetBoneHearts() * 2
    )
    local visibleHearts = math.ceil(
        (maxHearts + player:GetSoulHearts()) / 2
    )
    if visibleHearts < 1 then
        visibleHearts = 1
    end
    return visibleHearts
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.types.HealthType"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local HealthType = HealthType or ({})
HealthType.RED = 0
HealthType[HealthType.RED] = "RED"
HealthType.SOUL = 1
HealthType[HealthType.SOUL] = "SOUL"
HealthType.BLACK = 2
HealthType[HealthType.BLACK] = "BLACK"
HealthType.BONE = 3
HealthType[HealthType.BONE] = "BONE"
HealthType.GOLDEN = 4
HealthType[HealthType.GOLDEN] = "GOLDEN"
HealthType.ETERNAL = 5
HealthType[HealthType.ETERNAL] = "ETERNAL"
HealthType.MAX_HEARTS = 6
HealthType[HealthType.MAX_HEARTS] = "MAX_HEARTS"
____exports.default = HealthType
return ____exports
 end,
["lua_modules.isaacscript-common.dist.types.ModCallbacksCustom"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ModCallbacksCustom = ModCallbacksCustom or ({})
ModCallbacksCustom.MC_POST_GAME_STARTED_REORDERED = 0
ModCallbacksCustom[ModCallbacksCustom.MC_POST_GAME_STARTED_REORDERED] = "MC_POST_GAME_STARTED_REORDERED"
ModCallbacksCustom.MC_POST_NEW_LEVEL_REORDERED = 1
ModCallbacksCustom[ModCallbacksCustom.MC_POST_NEW_LEVEL_REORDERED] = "MC_POST_NEW_LEVEL_REORDERED"
ModCallbacksCustom.MC_POST_NEW_ROOM_REORDERED = 2
ModCallbacksCustom[ModCallbacksCustom.MC_POST_NEW_ROOM_REORDERED] = "MC_POST_NEW_ROOM_REORDERED"
ModCallbacksCustom.MC_POST_PLAYER_INIT_REORDERED = 3
ModCallbacksCustom[ModCallbacksCustom.MC_POST_PLAYER_INIT_REORDERED] = "MC_POST_PLAYER_INIT_REORDERED"
ModCallbacksCustom.MC_POST_PLAYER_UPDATE_REORDERED = 4
ModCallbacksCustom[ModCallbacksCustom.MC_POST_PLAYER_UPDATE_REORDERED] = "MC_POST_PLAYER_UPDATE_REORDERED"
ModCallbacksCustom.MC_POST_PLAYER_RENDER_REORDERED = 5
ModCallbacksCustom[ModCallbacksCustom.MC_POST_PLAYER_RENDER_REORDERED] = "MC_POST_PLAYER_RENDER_REORDERED"
ModCallbacksCustom.MC_POST_PLAYER_INIT_LATE = 6
ModCallbacksCustom[ModCallbacksCustom.MC_POST_PLAYER_INIT_LATE] = "MC_POST_PLAYER_INIT_LATE"
ModCallbacksCustom.MC_POST_PICKUP_INIT_LATE = 7
ModCallbacksCustom[ModCallbacksCustom.MC_POST_PICKUP_INIT_LATE] = "MC_POST_PICKUP_INIT_LATE"
ModCallbacksCustom.MC_POST_LASER_INIT_LATE = 8
ModCallbacksCustom[ModCallbacksCustom.MC_POST_LASER_INIT_LATE] = "MC_POST_LASER_INIT_LATE"
ModCallbacksCustom.MC_POST_PICKUP_COLLECT = 9
ModCallbacksCustom[ModCallbacksCustom.MC_POST_PICKUP_COLLECT] = "MC_POST_PICKUP_COLLECT"
ModCallbacksCustom.MC_PRE_ITEM_PICKUP = 10
ModCallbacksCustom[ModCallbacksCustom.MC_PRE_ITEM_PICKUP] = "MC_PRE_ITEM_PICKUP"
ModCallbacksCustom.MC_POST_ITEM_PICKUP = 11
ModCallbacksCustom[ModCallbacksCustom.MC_POST_ITEM_PICKUP] = "MC_POST_ITEM_PICKUP"
ModCallbacksCustom.MC_POST_PLAYER_CHANGE_TYPE = 12
ModCallbacksCustom[ModCallbacksCustom.MC_POST_PLAYER_CHANGE_TYPE] = "MC_POST_PLAYER_CHANGE_TYPE"
ModCallbacksCustom.MC_POST_PLAYER_CHANGE_HEALTH = 13
ModCallbacksCustom[ModCallbacksCustom.MC_POST_PLAYER_CHANGE_HEALTH] = "MC_POST_PLAYER_CHANGE_HEALTH"
ModCallbacksCustom.MC_POST_PLAYER_FATAL_DAMAGE = 14
ModCallbacksCustom[ModCallbacksCustom.MC_POST_PLAYER_FATAL_DAMAGE] = "MC_POST_PLAYER_FATAL_DAMAGE"
ModCallbacksCustom.MC_PRE_CUSTOM_REVIVE = 15
ModCallbacksCustom[ModCallbacksCustom.MC_PRE_CUSTOM_REVIVE] = "MC_PRE_CUSTOM_REVIVE"
ModCallbacksCustom.MC_POST_CUSTOM_REVIVE = 16
ModCallbacksCustom[ModCallbacksCustom.MC_POST_CUSTOM_REVIVE] = "MC_POST_CUSTOM_REVIVE"
ModCallbacksCustom.MC_POST_FLIP = 17
ModCallbacksCustom[ModCallbacksCustom.MC_POST_FLIP] = "MC_POST_FLIP"
ModCallbacksCustom.MC_POST_FIRST_FLIP = 18
ModCallbacksCustom[ModCallbacksCustom.MC_POST_FIRST_FLIP] = "MC_POST_FIRST_FLIP"
ModCallbacksCustom.MC_POST_ESAU_JR = 19
ModCallbacksCustom[ModCallbacksCustom.MC_POST_ESAU_JR] = "MC_POST_ESAU_JR"
ModCallbacksCustom.MC_POST_FIRST_ESAU_JR = 20
ModCallbacksCustom[ModCallbacksCustom.MC_POST_FIRST_ESAU_JR] = "MC_POST_FIRST_ESAU_JR"
ModCallbacksCustom.MC_POST_TRANSFORMATION = 21
ModCallbacksCustom[ModCallbacksCustom.MC_POST_TRANSFORMATION] = "MC_POST_TRANSFORMATION"
ModCallbacksCustom.MC_POST_PURCHASE = 22
ModCallbacksCustom[ModCallbacksCustom.MC_POST_PURCHASE] = "MC_POST_PURCHASE"
ModCallbacksCustom.MC_POST_SACRIFICE = 23
ModCallbacksCustom[ModCallbacksCustom.MC_POST_SACRIFICE] = "MC_POST_SACRIFICE"
ModCallbacksCustom.MC_POST_CURSED_TELEPORT = 24
ModCallbacksCustom[ModCallbacksCustom.MC_POST_CURSED_TELEPORT] = "MC_POST_CURSED_TELEPORT"
ModCallbacksCustom.MC_POST_SLOT_INIT = 25
ModCallbacksCustom[ModCallbacksCustom.MC_POST_SLOT_INIT] = "MC_POST_SLOT_INIT"
ModCallbacksCustom.MC_POST_SLOT_UPDATE = 26
ModCallbacksCustom[ModCallbacksCustom.MC_POST_SLOT_UPDATE] = "MC_POST_SLOT_UPDATE"
ModCallbacksCustom.MC_POST_SLOT_RENDER = 27
ModCallbacksCustom[ModCallbacksCustom.MC_POST_SLOT_RENDER] = "MC_POST_SLOT_RENDER"
ModCallbacksCustom.MC_POST_GRID_ENTITY_INIT = 28
ModCallbacksCustom[ModCallbacksCustom.MC_POST_GRID_ENTITY_INIT] = "MC_POST_GRID_ENTITY_INIT"
ModCallbacksCustom.MC_POST_GRID_ENTITY_UPDATE = 29
ModCallbacksCustom[ModCallbacksCustom.MC_POST_GRID_ENTITY_UPDATE] = "MC_POST_GRID_ENTITY_UPDATE"
ModCallbacksCustom.MC_POST_GRID_ENTITY_REMOVE = 30
ModCallbacksCustom[ModCallbacksCustom.MC_POST_GRID_ENTITY_REMOVE] = "MC_POST_GRID_ENTITY_REMOVE"
____exports.default = ModCallbacksCustom
return ____exports
 end,
["lua_modules.isaacscript-common.dist.types.ModUpgraded"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local postCursedTeleport = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postCursedTeleport")
local postCustomRevive = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postCustomRevive")
local postEsauJr = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postEsauJr")
local postFirstEsauJr = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postFirstEsauJr")
local postFirstFlip = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postFirstFlip")
local postFlip = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postFlip")
local postGameStartedReordered = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postGameStartedReordered")
local postGridEntityInit = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postGridEntityInit")
local postGridEntityRemove = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postGridEntityRemove")
local postGridEntityUpdate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postGridEntityUpdate")
local postItemPickup = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postItemPickup")
local postLaserInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postLaserInitLate")
local postNewLevelReordered = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postNewLevelReordered")
local postNewRoomReordered = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postNewRoomReordered")
local postPickupCollect = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPickupCollect")
local postPickupInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPickupInitLate")
local postPlayerChangeHealth = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerChangeHealth")
local postPlayerChangeType = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerChangeType")
local postPlayerFatalDamage = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerFatalDamage")
local postPlayerInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerInitLate")
local postPlayerInitReordered = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerInitReordered")
local postPlayerRenderReordered = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerRenderReordered")
local postPlayerUpdateReordered = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerUpdateReordered")
local postPurchase = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPurchase")
local postSacrifice = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSacrifice")
local postSlotInit = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSlotInit")
local postSlotRender = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSlotRender")
local postSlotUpdate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSlotUpdate")
local postTransformation = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postTransformation")
local preCustomRevive = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.preCustomRevive")
local preItemPickup = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.preItemPickup")
local ____log = require("lua_modules.isaacscript-common.dist.functions.log")
local getDebugPrependString = ____log.getDebugPrependString
local ____util = require("lua_modules.isaacscript-common.dist.functions.util")
local ensureAllCases = ____util.ensureAllCases
local ____ModCallbacksCustom = require("lua_modules.isaacscript-common.dist.types.ModCallbacksCustom")
local ModCallbacksCustom = ____ModCallbacksCustom.default
local getCallbackName
function getCallbackName(self, callbackID)
    for ____, ____value in ipairs(
        __TS__ObjectEntries(ModCallbacks)
    ) do
        local key
        key = ____value[1]
        local value
        value = ____value[2]
        if value == callbackID then
            return key
        end
    end
    return "MC_UNKNOWN"
end
____exports.default = (function()
    ____exports.default = __TS__Class()
    local ModUpgraded = ____exports.default
    ModUpgraded.name = "ModUpgraded"
    function ModUpgraded.prototype.____constructor(self, mod, verbose)
        self.Mod = mod
        self.Verbose = verbose
        self.Name = mod.Name
    end
    function ModUpgraded.prototype.AddCallback(self, callbackID, ...)
        local args = {...}
        if self.Verbose then
            local callback = args[1]
            local optionalArg = args[2]
            local callbackName = getCallbackName(nil, callbackID)
            local debugMsg = getDebugPrependString(nil, callbackName)
            local function callbackWithLogger(____, ...)
                Isaac.DebugString(debugMsg .. " - START")
                callback(nil, ...)
                Isaac.DebugString(debugMsg .. " - END")
            end
            self.Mod:AddCallback(callbackID, callbackWithLogger, optionalArg)
        else
            self.Mod:AddCallback(
                callbackID,
                __TS__Spread(args)
            )
        end
    end
    function ModUpgraded.prototype.HasData(self)
        return self.Mod:HasData()
    end
    function ModUpgraded.prototype.LoadData(self)
        return self.Mod:LoadData()
    end
    function ModUpgraded.prototype.RemoveCallback(self, callbackID, callback)
        self.Mod:RemoveCallback(callbackID, callback)
    end
    function ModUpgraded.prototype.RemoveData(self)
        self.Mod:RemoveData()
    end
    function ModUpgraded.prototype.SaveData(self, data)
        self.Mod:SaveData(data)
    end
    function ModUpgraded.prototype.AddCallbackCustom(self, callbackID, ...)
        local args = {...}
        repeat
            local ____switch14 = callbackID
            local ____cond14 = ____switch14 == ModCallbacksCustom.MC_POST_GAME_STARTED_REORDERED
            if ____cond14 then
                do
                    postGameStartedReordered:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_NEW_LEVEL_REORDERED)
            if ____cond14 then
                do
                    postNewLevelReordered:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_NEW_ROOM_REORDERED)
            if ____cond14 then
                do
                    postNewRoomReordered:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_PLAYER_INIT_REORDERED)
            if ____cond14 then
                do
                    postPlayerInitReordered:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_PLAYER_UPDATE_REORDERED)
            if ____cond14 then
                do
                    postPlayerUpdateReordered:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_PLAYER_RENDER_REORDERED)
            if ____cond14 then
                do
                    postPlayerRenderReordered:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_PLAYER_INIT_LATE)
            if ____cond14 then
                do
                    postPlayerInitLate:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_PICKUP_INIT_LATE)
            if ____cond14 then
                do
                    postPickupInitLate:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_LASER_INIT_LATE)
            if ____cond14 then
                do
                    postLaserInitLate:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_PICKUP_COLLECT)
            if ____cond14 then
                do
                    postPickupCollect:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_PRE_ITEM_PICKUP)
            if ____cond14 then
                do
                    preItemPickup:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_ITEM_PICKUP)
            if ____cond14 then
                do
                    postItemPickup:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_PLAYER_CHANGE_TYPE)
            if ____cond14 then
                do
                    postPlayerChangeType:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_PLAYER_CHANGE_HEALTH)
            if ____cond14 then
                do
                    postPlayerChangeHealth:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_PLAYER_FATAL_DAMAGE)
            if ____cond14 then
                do
                    postPlayerFatalDamage:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_PRE_CUSTOM_REVIVE)
            if ____cond14 then
                do
                    preCustomRevive:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_CUSTOM_REVIVE)
            if ____cond14 then
                do
                    postCustomRevive:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_FLIP)
            if ____cond14 then
                do
                    postFlip:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_FIRST_FLIP)
            if ____cond14 then
                do
                    postFirstFlip:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_ESAU_JR)
            if ____cond14 then
                do
                    postEsauJr:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_FIRST_ESAU_JR)
            if ____cond14 then
                do
                    postFirstEsauJr:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_TRANSFORMATION)
            if ____cond14 then
                do
                    postTransformation:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_PURCHASE)
            if ____cond14 then
                do
                    postPurchase:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_SACRIFICE)
            if ____cond14 then
                do
                    postSacrifice:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_CURSED_TELEPORT)
            if ____cond14 then
                do
                    postCursedTeleport:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_SLOT_INIT)
            if ____cond14 then
                do
                    postSlotInit:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_SLOT_UPDATE)
            if ____cond14 then
                do
                    postSlotUpdate:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_SLOT_RENDER)
            if ____cond14 then
                do
                    postSlotRender:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_GRID_ENTITY_INIT)
            if ____cond14 then
                do
                    postGridEntityInit:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_GRID_ENTITY_UPDATE)
            if ____cond14 then
                do
                    postGridEntityUpdate:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            ____cond14 = ____cond14 or (____switch14 == ModCallbacksCustom.MC_POST_GRID_ENTITY_REMOVE)
            if ____cond14 then
                do
                    postGridEntityRemove:register(
                        table.unpack(args)
                    )
                    break
                end
            end
            do
                do
                    ensureAllCases(nil, callbackID)
                    error(
                        ("The custom callback ID of \"" .. tostring(callbackID)) .. "\" is not valid."
                    )
                end
            end
        until true
    end
    return ModUpgraded
end)()
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postCursedTeleport"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback)
    __TS__ArrayPush(subscriptions, {callback})
end
function ____exports.fire(self, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        callback(nil, player)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postCustomRevive"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, revivalType)
    __TS__ArrayPush(subscriptions, {callback, revivalType})
end
function ____exports.fire(self, player, revivalType)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local callbackRevivalType
        callbackRevivalType = ____value[2]
        do
            if (callbackRevivalType ~= nil) and (callbackRevivalType ~= revivalType) then
                goto __continue5
            end
            callback(nil, player, revivalType)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postEsauJr"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback)
    __TS__ArrayPush(subscriptions, {callback})
end
function ____exports.fire(self, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        callback(nil, player)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postFirstEsauJr"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback)
    __TS__ArrayPush(subscriptions, {callback})
end
function ____exports.fire(self, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        callback(nil, player)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postFirstFlip"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback)
    __TS__ArrayPush(subscriptions, {callback})
end
function ____exports.fire(self, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        callback(nil, player)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postFlip"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback)
    __TS__ArrayPush(subscriptions, {callback})
end
function ____exports.fire(self, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        callback(nil, player)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postGridEntityInit"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, gridEntityType)
    __TS__ArrayPush(subscriptions, {callback, gridEntityType})
end
function ____exports.fire(self, gridEntity)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local gridEntityType
        gridEntityType = ____value[2]
        do
            if (gridEntityType ~= nil) and (gridEntityType ~= gridEntity:GetType()) then
                goto __continue5
            end
            callback(nil, gridEntity)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postGridEntityRemove"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, gridEntityType)
    __TS__ArrayPush(subscriptions, {callback, gridEntityType})
end
function ____exports.fire(self, gridIndex, gridEntityType)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local callbackGridEntityType
        callbackGridEntityType = ____value[2]
        do
            if (callbackGridEntityType ~= nil) and (callbackGridEntityType ~= gridEntityType) then
                goto __continue5
            end
            callback(nil, gridIndex, gridEntityType)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postGridEntityUpdate"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, gridEntityType)
    __TS__ArrayPush(subscriptions, {callback, gridEntityType})
end
function ____exports.fire(self, gridEntity)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local gridEntityType
        gridEntityType = ____value[2]
        do
            if (gridEntityType ~= nil) and (gridEntityType ~= gridEntity:GetType()) then
                goto __continue5
            end
            callback(nil, gridEntity)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postItemPickup"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, itemType, itemID)
    __TS__ArrayPush(subscriptions, {callback, itemType, itemID})
end
function ____exports.fire(self, player, pickingUpItem)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local itemType
        itemType = ____value[2]
        local itemID
        itemID = ____value[3]
        do
            if (itemType ~= nil) and (itemType ~= pickingUpItem.type) then
                goto __continue5
            end
            if (itemID ~= nil) and (itemID ~= pickingUpItem.id) then
                goto __continue5
            end
            callback(nil, player, pickingUpItem)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postLaserInitLate"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, laserVariant)
    __TS__ArrayPush(subscriptions, {callback, laserVariant})
end
function ____exports.fire(self, laser)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local laserVariant
        laserVariant = ____value[2]
        do
            if (laserVariant ~= nil) and (laserVariant ~= laser.Variant) then
                goto __continue5
            end
            callback(nil, laser)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPickupCollect"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, pickupVariant)
    __TS__ArrayPush(subscriptions, {callback, pickupVariant})
end
function ____exports.fire(self, pickup, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local pickupVariant
        pickupVariant = ____value[2]
        do
            if (pickupVariant ~= nil) and (pickupVariant ~= pickup.Variant) then
                goto __continue5
            end
            callback(nil, pickup, player)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPickupInitLate"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, pickupVariant)
    __TS__ArrayPush(subscriptions, {callback, pickupVariant})
end
function ____exports.fire(self, pickup)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local pickupVariant
        pickupVariant = ____value[2]
        do
            if (pickupVariant ~= nil) and (pickupVariant ~= pickup.Variant) then
                goto __continue5
            end
            callback(nil, pickup)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerChangeHealth"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, playerVariant)
    __TS__ArrayPush(subscriptions, {callback, playerVariant})
end
function ____exports.fire(self, player, healthType, amount)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local playerVariant
        playerVariant = ____value[2]
        do
            if (playerVariant ~= nil) and (playerVariant ~= player.Variant) then
                goto __continue5
            end
            callback(nil, player, healthType, amount)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerChangeType"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback)
    __TS__ArrayPush(subscriptions, {callback})
end
function ____exports.fire(self, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        callback(nil, player)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerFatalDamage"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, playerVariant)
    __TS__ArrayPush(subscriptions, {callback, playerVariant})
end
function ____exports.fire(self, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local playerVariant
        playerVariant = ____value[2]
        do
            if (playerVariant ~= nil) and (playerVariant ~= player.Variant) then
                goto __continue5
            end
            local shouldSustainDeath = callback(nil, player)
            if shouldSustainDeath ~= nil then
                return shouldSustainDeath
            end
        end
        ::__continue5::
    end
    return nil
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerInitLate"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, playerVariant)
    __TS__ArrayPush(subscriptions, {callback, playerVariant})
end
function ____exports.fire(self, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local playerVariant
        playerVariant = ____value[2]
        do
            if (playerVariant ~= nil) and (playerVariant ~= player.Variant) then
                goto __continue5
            end
            callback(nil, player)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerInitReordered"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, playerVariant)
    __TS__ArrayPush(subscriptions, {callback, playerVariant})
end
function ____exports.fire(self, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local playerVariant
        playerVariant = ____value[2]
        do
            if (playerVariant ~= nil) and (playerVariant ~= player.Variant) then
                goto __continue5
            end
            callback(nil, player)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerRenderReordered"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, playerVariant)
    __TS__ArrayPush(subscriptions, {callback, playerVariant})
end
function ____exports.fire(self, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local playerVariant
        playerVariant = ____value[2]
        do
            if (playerVariant ~= nil) and (playerVariant ~= player.Variant) then
                goto __continue5
            end
            callback(nil, player)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerUpdateReordered"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, playerVariant)
    __TS__ArrayPush(subscriptions, {callback, playerVariant})
end
function ____exports.fire(self, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local playerVariant
        playerVariant = ____value[2]
        do
            if (playerVariant ~= nil) and (playerVariant ~= player.Variant) then
                goto __continue5
            end
            callback(nil, player)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPurchase"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, pickupVariant, pickupSubType)
    __TS__ArrayPush(subscriptions, {callback, pickupVariant, pickupSubType})
end
function ____exports.fire(self, player, pickupVariant, pickupSubType, pickupPrice)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        callback(nil, player, pickupVariant, pickupSubType, pickupPrice)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSacrifice"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback)
    __TS__ArrayPush(subscriptions, {callback})
end
function ____exports.fire(self, player, numSacrifices)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        callback(nil, player, numSacrifices)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSlotInit"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, slotVariant)
    __TS__ArrayPush(subscriptions, {callback, slotVariant})
end
function ____exports.fire(self, slot)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local slotVariant
        slotVariant = ____value[2]
        do
            if (slotVariant ~= nil) and (slotVariant ~= slot.Variant) then
                goto __continue5
            end
            callback(nil, slot)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSlotRender"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, slotVariant)
    __TS__ArrayPush(subscriptions, {callback, slotVariant})
end
function ____exports.fire(self, slot)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local slotVariant
        slotVariant = ____value[2]
        do
            if (slotVariant ~= nil) and (slotVariant ~= slot.Variant) then
                goto __continue5
            end
            callback(nil, slot)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSlotUpdate"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, slotVariant)
    __TS__ArrayPush(subscriptions, {callback, slotVariant})
end
function ____exports.fire(self, slot)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local slotVariant
        slotVariant = ____value[2]
        do
            if (slotVariant ~= nil) and (slotVariant ~= slot.Variant) then
                goto __continue5
            end
            callback(nil, slot)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postTransformation"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, playerForm)
    __TS__ArrayPush(subscriptions, {callback, playerForm})
end
function ____exports.fire(self, player, playerForm, hasForm)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local callbackPlayerForm
        callbackPlayerForm = ____value[2]
        do
            if (callbackPlayerForm ~= nil) and (callbackPlayerForm ~= playerForm) then
                goto __continue5
            end
            callback(nil, player, playerForm, hasForm)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.preCustomRevive"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback)
    __TS__ArrayPush(subscriptions, {callback})
end
function ____exports.fire(self, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local revivalType = callback(nil, player)
        if revivalType ~= nil then
            return revivalType
        end
    end
    return nil
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.preItemPickup"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, itemType, itemID)
    __TS__ArrayPush(subscriptions, {callback, itemType, itemID})
end
function ____exports.fire(self, player, pickingUpItem)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local itemType
        itemType = ____value[2]
        local itemID
        itemID = ____value[3]
        do
            if (itemType ~= nil) and (itemType ~= pickingUpItem.type) then
                goto __continue5
            end
            if (itemID ~= nil) and (itemID ~= pickingUpItem.id) then
                goto __continue5
            end
            callback(nil, player, pickingUpItem)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.upgradeMod"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local customRevive = require("lua_modules.isaacscript-common.dist.callbacks.customRevive")
local itemPickup = require("lua_modules.isaacscript-common.dist.callbacks.itemPickup")
local postCursedTeleport = require("lua_modules.isaacscript-common.dist.callbacks.postCursedTeleport")
local postEsauJr = require("lua_modules.isaacscript-common.dist.callbacks.postEsauJr")
local postFlip = require("lua_modules.isaacscript-common.dist.callbacks.postFlip")
local postGridEntity = require("lua_modules.isaacscript-common.dist.callbacks.postGridEntity")
local postLaserInitLate = require("lua_modules.isaacscript-common.dist.callbacks.postLaserInitLate")
local postPickupCollect = require("lua_modules.isaacscript-common.dist.callbacks.postPickupCollect")
local postPickupInitLate = require("lua_modules.isaacscript-common.dist.callbacks.postPickupInitLate")
local postPlayerChangeHealth = require("lua_modules.isaacscript-common.dist.callbacks.postPlayerChangeHealth")
local postPlayerChangeType = require("lua_modules.isaacscript-common.dist.callbacks.postPlayerChangeType")
local postPlayerFatalDamage = require("lua_modules.isaacscript-common.dist.callbacks.postPlayerFatalDamage")
local postPlayerInitLate = require("lua_modules.isaacscript-common.dist.callbacks.postPlayerInitLate")
local postPlayerReordered = require("lua_modules.isaacscript-common.dist.callbacks.postPlayerReordered")
local postPurchase = require("lua_modules.isaacscript-common.dist.callbacks.postPurchase")
local postSacrifice = require("lua_modules.isaacscript-common.dist.callbacks.postSacrifice")
local postSlot = require("lua_modules.isaacscript-common.dist.callbacks.postSlot")
local postSlotRender = require("lua_modules.isaacscript-common.dist.callbacks.postSlotRender")
local postTransformation = require("lua_modules.isaacscript-common.dist.callbacks.postTransformation")
local reorderedCallbacks = require("lua_modules.isaacscript-common.dist.callbacks.reorderedCallbacks")
local disableInputs = require("lua_modules.isaacscript-common.dist.features.disableInputs")
local forgottenSwitch = require("lua_modules.isaacscript-common.dist.features.forgottenSwitch")
local runInNFrames = require("lua_modules.isaacscript-common.dist.features.runInNFrames")
local saveDataManager = require("lua_modules.isaacscript-common.dist.features.saveDataManager.main")
local ____ModUpgraded = require("lua_modules.isaacscript-common.dist.types.ModUpgraded")
local ModUpgraded = ____ModUpgraded.default
local initCustomCallbacks, initFeatures
function initCustomCallbacks(self, mod)
    reorderedCallbacks:init(mod)
    postPlayerReordered:init(mod)
    postPlayerInitLate:init(mod)
    postPickupInitLate:init(mod)
    postLaserInitLate:init(mod)
    postPickupCollect:init(mod)
    itemPickup:init(mod)
    postPlayerChangeType:init(mod)
    postPlayerChangeHealth:init(mod)
    postPlayerFatalDamage:init(mod)
    customRevive:init(mod)
    postFlip:init(mod)
    postEsauJr:init(mod)
    postTransformation:init(mod)
    postPurchase:init(mod)
    postSacrifice:init(mod)
    postCursedTeleport:init(mod)
    postSlot:init(mod)
    postSlotRender:init(mod)
    postGridEntity:init(mod)
end
function initFeatures(self, mod)
    disableInputs:init(mod)
    forgottenSwitch:init(mod)
    runInNFrames:init(mod)
end
local initialized = false
function ____exports.upgradeMod(self, mod, verbose)
    if verbose == nil then
        verbose = false
    end
    local modUpgraded = __TS__New(ModUpgraded, mod, verbose)
    if not initialized then
        initialized = true
        saveDataManager:init(modUpgraded)
        initCustomCallbacks(nil, modUpgraded)
        initFeatures(nil, modUpgraded)
    end
    return modUpgraded
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.customRevive"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____entity = require("lua_modules.isaacscript-common.dist.functions.entity")
local removeAllMatchingEntities = ____entity.removeAllMatchingEntities
local ____items = require("lua_modules.isaacscript-common.dist.functions.items")
local removeItemFromItemTracker = ____items.removeItemFromItemTracker
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayerIndex = ____player.getPlayerIndex
local ____ModCallbacksCustom = require("lua_modules.isaacscript-common.dist.types.ModCallbacksCustom")
local ModCallbacksCustom = ____ModCallbacksCustom.default
local postCustomRevive = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postCustomRevive")
local preCustomRevive = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.preCustomRevive")
local CustomReviveState, v, hasSubscriptions, postRender, postNewRoom, postPlayerUpdateReordered, postPlayerFatalDamage
function hasSubscriptions(self)
    return preCustomRevive:hasSubscriptions() or postCustomRevive:hasSubscriptions()
end
function postRender(self)
    if v.run.state ~= CustomReviveState.WAITING_FOR_ITEM_ANIMATION then
        return
    end
    local sfx = SFXManager()
    sfx:Stop(SoundEffect.SOUND_1UP)
end
function postNewRoom(self)
    if v.run.state == CustomReviveState.CHANGING_ROOMS then
        v.run.state = CustomReviveState.WAITING_FOR_ITEM_ANIMATION
    elseif v.run.state == CustomReviveState.WAITING_FOR_ITEM_ANIMATION then
        v.run.state = CustomReviveState.DISABLED
        v.run.revivalType = nil
        v.run.dyingPlayerIndex = nil
    end
end
function postPlayerUpdateReordered(self, player)
    if v.run.state ~= CustomReviveState.WAITING_FOR_ITEM_ANIMATION then
        return
    end
    if v.run.dyingPlayerIndex == nil then
        return
    end
    local playerIndex = getPlayerIndex(nil, player)
    if playerIndex ~= v.run.dyingPlayerIndex then
        return
    end
    if not player:IsHoldingItem() then
        return
    end
    if v.run.revivalType ~= nil then
        postCustomRevive:fire(player, v.run.revivalType)
    end
    v.run.state = CustomReviveState.DISABLED
    v.run.revivalType = nil
    v.run.dyingPlayerIndex = nil
end
function postPlayerFatalDamage(self, player)
    if not hasSubscriptions(nil) then
        return
    end
    local revivalType = preCustomRevive:fire(player)
    if revivalType == nil then
        return
    end
    v.run.state = CustomReviveState.CHANGING_ROOMS
    v.run.revivalType = revivalType
    v.run.dyingPlayerIndex = getPlayerIndex(nil, player)
    player:AddCollectible(CollectibleType.COLLECTIBLE_1UP, 0, false)
    removeAllMatchingEntities(nil, EntityType.ENTITY_FAMILIAR, FamiliarVariant.ONE_UP)
    removeItemFromItemTracker(nil, CollectibleType.COLLECTIBLE_1UP)
end
CustomReviveState = CustomReviveState or ({})
CustomReviveState.DISABLED = 0
CustomReviveState[CustomReviveState.DISABLED] = "DISABLED"
CustomReviveState.CHANGING_ROOMS = 1
CustomReviveState[CustomReviveState.CHANGING_ROOMS] = "CHANGING_ROOMS"
CustomReviveState.WAITING_FOR_ITEM_ANIMATION = 2
CustomReviveState[CustomReviveState.WAITING_FOR_ITEM_ANIMATION] = "WAITING_FOR_ITEM_ANIMATION"
v = {run = {state = CustomReviveState.DISABLED, revivalType = nil, dyingPlayerIndex = nil}}
function ____exports.init(self, mod)
    mod:AddCallback(ModCallbacks.MC_POST_RENDER, postRender)
    mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, postNewRoom)
    mod:AddCallbackCustom(ModCallbacksCustom.MC_POST_PLAYER_UPDATE_REORDERED, postPlayerUpdateReordered)
    mod:AddCallbackCustom(ModCallbacksCustom.MC_POST_PLAYER_FATAL_DAMAGE, postPlayerFatalDamage)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.itemPickup"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____main = require("lua_modules.isaacscript-common.dist.features.saveDataManager.main")
local saveDataManager = ____main.saveDataManager
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayerIndex = ____player.getPlayerIndex
local ____ModCallbacksCustom = require("lua_modules.isaacscript-common.dist.types.ModCallbacksCustom")
local ModCallbacksCustom = ____ModCallbacksCustom.default
local postItemPickup = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postItemPickup")
local preItemPickup = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.preItemPickup")
local v, hasSubscriptions, postPlayerUpdateReorderedPlayer, queueEmpty, queueNotEmpty, getPickingUpItemForPlayer
function hasSubscriptions(self)
    return preItemPickup:hasSubscriptions() or postItemPickup:hasSubscriptions()
end
function postPlayerUpdateReorderedPlayer(self, player)
    if not hasSubscriptions(nil) then
        return
    end
    local pickingUpItem = getPickingUpItemForPlayer(nil, player)
    if player:IsItemQueueEmpty() then
        queueEmpty(nil, player, pickingUpItem)
    else
        queueNotEmpty(nil, player, pickingUpItem)
    end
end
function queueEmpty(self, player, pickingUpItem)
    if pickingUpItem.id ~= CollectibleType.COLLECTIBLE_NULL then
        postItemPickup:fire(player, pickingUpItem)
        pickingUpItem.id = CollectibleType.COLLECTIBLE_NULL
        pickingUpItem.type = ItemType.ITEM_NULL
    end
end
function queueNotEmpty(self, player, pickingUpItem)
    local queuedItem = player.QueuedItem.Item
    if (queuedItem ~= nil) and (queuedItem.ID ~= pickingUpItem.id) then
        pickingUpItem.id = queuedItem.ID
        pickingUpItem.type = queuedItem.Type
        preItemPickup:fire(player, pickingUpItem)
    end
end
function getPickingUpItemForPlayer(self, player)
    local index = getPlayerIndex(nil, player)
    local pickingUpItem = v.run.pickingUpItem:get(index)
    if pickingUpItem == nil then
        pickingUpItem = {id = CollectibleType.COLLECTIBLE_NULL, type = ItemType.ITEM_NULL}
        v.run.pickingUpItem:set(index, pickingUpItem)
    end
    return pickingUpItem
end
v = {
    run = {
        pickingUpItem = __TS__New(Map)
    }
}
function ____exports.init(self, mod)
    saveDataManager(nil, "itemPickupCallback", v, hasSubscriptions)
    mod:AddCallbackCustom(ModCallbacksCustom.MC_POST_PLAYER_UPDATE_REORDERED, postPlayerUpdateReorderedPlayer, 0)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postCursedTeleport"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____main = require("lua_modules.isaacscript-common.dist.features.saveDataManager.main")
local saveDataManager = ____main.saveDataManager
local ____flag = require("lua_modules.isaacscript-common.dist.functions.flag")
local hasFlag = ____flag.hasFlag
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayerIndex = ____player.getPlayerIndex
local getPlayerNumAllHearts = ____player.getPlayerNumAllHearts
local postCursedTeleport = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postCursedTeleport")
local v, hasSubscriptions, entityTakeDmgPlayer, setDamageFrame, isPotentialNaturalTeleportFromSacrificeRoom, incrementNumSacrifices, postPlayerRenderPlayer, playerIsTeleportingFromCursedTeleport
function hasSubscriptions(self)
    return postCursedTeleport:hasSubscriptions()
end
function entityTakeDmgPlayer(self, tookDamage, _damageAmount, damageFlags, _damageSource, _damageCountdownFrames)
    if not hasSubscriptions(nil) then
        return
    end
    incrementNumSacrifices(nil, damageFlags)
    setDamageFrame(nil, tookDamage, damageFlags)
end
function setDamageFrame(self, tookDamage, damageFlags)
    local game = Game()
    local gameFrameCount = game:GetFrameCount()
    local player = tookDamage:ToPlayer()
    if player == nil then
        return
    end
    local playerIndex = getPlayerIndex(nil, player)
    local trackingArray = v.run.damageFrameMap:get(playerIndex)
    if trackingArray ~= nil then
        local lastDamageFrame, callbackActivatedOnThisFrame = table.unpack(trackingArray)
        if (lastDamageFrame == gameFrameCount) and callbackActivatedOnThisFrame then
            return
        end
    end
    if isPotentialNaturalTeleportFromSacrificeRoom(nil, damageFlags) then
        return
    end
    v.run.damageFrameMap:set(playerIndex, {gameFrameCount, false})
end
function isPotentialNaturalTeleportFromSacrificeRoom(self, damageFlags)
    local game = Game()
    local room = game:GetRoom()
    local roomType = room:GetType()
    local isSpikeDamage = hasFlag(nil, damageFlags, DamageFlag.DAMAGE_SPIKES)
    return ((roomType == RoomType.ROOM_SACRIFICE) and isSpikeDamage) and ((v.level.numSacrifices == 6) or (v.level.numSacrifices >= 12))
end
function incrementNumSacrifices(self, damageFlags)
    local game = Game()
    local room = game:GetRoom()
    local roomType = room:GetType()
    local isSpikeDamage = hasFlag(nil, damageFlags, DamageFlag.DAMAGE_SPIKES)
    if (roomType == RoomType.ROOM_SACRIFICE) and isSpikeDamage then
        local ____obj, ____index = v.level, "numSacrifices"
        ____obj[____index] = ____obj[____index] + 1
    end
end
function postPlayerRenderPlayer(self, player)
    if not hasSubscriptions(nil) then
        return
    end
    local game = Game()
    local gameFrameCount = game:GetFrameCount()
    local playerIndex = getPlayerIndex(nil, player)
    local trackingArray = v.run.damageFrameMap:get(playerIndex)
    if trackingArray == nil then
        return
    end
    local lastDamageFrame, callbackActivatedOnThisFrame = table.unpack(trackingArray)
    if not playerIsTeleportingFromCursedTeleport(nil, player, lastDamageFrame) then
        return
    end
    if callbackActivatedOnThisFrame then
        return
    end
    v.run.damageFrameMap:set(playerIndex, {gameFrameCount, true})
    postCursedTeleport:fire(player)
end
function playerIsTeleportingFromCursedTeleport(self, player, lastDamageFrame)
    local game = Game()
    local gameFrameCount = game:GetFrameCount()
    if gameFrameCount ~= lastDamageFrame then
        return false
    end
    local sprite = player:GetSprite()
    if (not sprite:IsPlaying("TeleportUp")) or (sprite:GetFrame() ~= 1) then
        return false
    end
    if player:HasCollectible(CollectibleType.COLLECTIBLE_CURSED_EYE) then
        return true
    end
    local numHitsLeft = getPlayerNumAllHearts(nil, player)
    if player:HasTrinket(TrinketType.TRINKET_CURSED_SKULL) and (numHitsLeft == 1) then
        return true
    end
    return false
end
v = {
    run = {
        damageFrameMap = __TS__New(Map)
    },
    level = {numSacrifices = 0}
}
function ____exports.init(self, mod)
    saveDataManager(nil, "postCursedEyeActivationCallback", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, entityTakeDmgPlayer, EntityType.ENTITY_PLAYER)
    mod:AddCallback(ModCallbacks.MC_POST_PLAYER_RENDER, postPlayerRenderPlayer, 0)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postEsauJr"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____main = require("lua_modules.isaacscript-common.dist.features.saveDataManager.main")
local saveDataManager = ____main.saveDataManager
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayers = ____player.getPlayers
local postEsauJr = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postEsauJr")
local postFirstEsauJr = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postFirstEsauJr")
local v, hasSubscriptions, postUpdate, getPlayerWithControllerIndex, useItemEsauJr
function hasSubscriptions(self)
    return postEsauJr:hasSubscriptions() or postFirstEsauJr:hasSubscriptions()
end
function postUpdate(self)
    if not hasSubscriptions(nil) then
        return
    end
    local game = Game()
    local gameFrameCount = game:GetFrameCount()
    if (v.run.usedEsauJrFrame == nil) or (gameFrameCount < (v.run.usedEsauJrFrame + 1)) then
        return
    end
    v.run.usedEsauJrFrame = nil
    if v.run.usedEsauJrControllerIndex == nil then
        return
    end
    local player = getPlayerWithControllerIndex(nil, v.run.usedEsauJrControllerIndex)
    v.run.usedEsauJrControllerIndex = nil
    if player == nil then
        return
    end
    if not v.run.usedEsauJrAtLeastOnce then
        v.run.usedEsauJrAtLeastOnce = true
        postFirstEsauJr:fire(player)
    end
    postEsauJr:fire(player)
end
function getPlayerWithControllerIndex(self, controllerIndex)
    for ____, player in ipairs(
        getPlayers(nil)
    ) do
        if player.ControllerIndex == controllerIndex then
            return player
        end
    end
    return nil
end
function useItemEsauJr(self, _collectibleType, _rng, player, _useFlags, _activeSlot, _customVarData)
    if not hasSubscriptions(nil) then
        return
    end
    local game = Game()
    local gameFrameCount = game:GetFrameCount()
    v.run.usedEsauJrFrame = gameFrameCount + 1
    v.run.usedEsauJrControllerIndex = player.ControllerIndex
end
v = {run = {usedEsauJrFrame = nil, usedEsauJrControllerIndex = nil, usedEsauJrAtLeastOnce = false}}
function ____exports.init(self, mod)
    saveDataManager(nil, "postEsauJrCallback", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_UPDATE, postUpdate)
    mod:AddCallback(ModCallbacks.MC_USE_ITEM, useItemEsauJr, CollectibleType.COLLECTIBLE_ESAU_JR)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postFlip"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____main = require("lua_modules.isaacscript-common.dist.features.saveDataManager.main")
local saveDataManager = ____main.saveDataManager
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayers = ____player.getPlayers
local postFirstFlip = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postFirstFlip")
local postFlip = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postFlip")
local v, hasSubscriptions, useItemFlip, getNewLazarus
function hasSubscriptions(self)
    return postFlip:hasSubscriptions() or postFirstFlip:hasSubscriptions()
end
function useItemFlip(self, _collectibleType, _rng, player, _useFlags, _activeSlot, _customVarData)
    if not hasSubscriptions(nil) then
        return
    end
    local newLazarus = getNewLazarus(nil, player)
    if not v.run.usedFlipAtLeastOnce then
        v.run.usedFlipAtLeastOnce = true
        postFirstFlip:fire(newLazarus)
    end
    postFlip:fire(newLazarus)
end
function getNewLazarus(self, oldLazarus)
    local oldCharacter = oldLazarus:GetPlayerType()
    local newCharacter
    if oldCharacter == PlayerType.PLAYER_LAZARUS_B then
        newCharacter = PlayerType.PLAYER_LAZARUS2_B
    elseif oldCharacter == PlayerType.PLAYER_LAZARUS2_B then
        newCharacter = PlayerType.PLAYER_LAZARUS_B
    else
        error("Failed to determine the character in the postFlip callback.")
    end
    for ____, player in ipairs(
        getPlayers(nil)
    ) do
        local character = player:GetPlayerType()
        if (character == newCharacter) and (player.FrameCount == oldLazarus.FrameCount) then
            return player
        end
    end
    error("Failed to find the player entity for the new Lazarus.")
    return oldLazarus
end
v = {run = {usedFlipAtLeastOnce = false}}
function ____exports.init(self, mod)
    saveDataManager(nil, "postFlipCallback", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_USE_ITEM, useItemFlip, CollectibleType.COLLECTIBLE_FLIP)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postGridEntity"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____main = require("lua_modules.isaacscript-common.dist.features.saveDataManager.main")
local saveDataManager = ____main.saveDataManager
local ____gridEntity = require("lua_modules.isaacscript-common.dist.functions.gridEntity")
local getGridEntities = ____gridEntity.getGridEntities
local postGridEntityInit = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postGridEntityInit")
local postGridEntityRemove = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postGridEntityRemove")
local postGridEntityUpdate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postGridEntityUpdate")
local v, hasSubscriptions, postUpdate, postNewRoom, checkNewGridEntity
function hasSubscriptions(self)
    return (postGridEntityInit:hasSubscriptions() or postGridEntityUpdate:hasSubscriptions()) or postGridEntityRemove:hasSubscriptions()
end
function postUpdate(self)
    if not hasSubscriptions(nil) then
        return
    end
    local game = Game()
    local room = game:GetRoom()
    for ____, gridEntity in ipairs(
        getGridEntities(nil)
    ) do
        checkNewGridEntity(nil, gridEntity)
        postGridEntityUpdate:fire(gridEntity)
    end
    for ____, ____value in __TS__Iterator(
        v.room.initializedGridEntities:entries()
    ) do
        local gridIndex
        gridIndex = ____value[1]
        local gridEntityType
        gridEntityType = ____value[2]
        local gridEntity = room:GetGridEntity(gridIndex)
        if (gridEntity == nil) or (gridEntity:GetType() ~= gridEntityType) then
            v.room.initializedGridEntities:delete(gridIndex)
            postGridEntityRemove:fire(gridIndex, gridEntityType)
        end
    end
end
function postNewRoom(self)
    if not hasSubscriptions(nil) then
        return
    end
    for ____, gridEntity in ipairs(
        getGridEntities(nil)
    ) do
        checkNewGridEntity(nil, gridEntity)
    end
end
function checkNewGridEntity(self, gridEntity)
    local gridIndex = gridEntity:GetGridIndex()
    local gridEntityType = gridEntity:GetType()
    local storedGridEntityType = v.room.initializedGridEntities:get(gridIndex)
    if storedGridEntityType ~= gridEntityType then
        v.room.initializedGridEntities:set(gridIndex, gridEntityType)
        postGridEntityInit:fire(gridEntity)
    end
end
v = {
    room = {
        initializedGridEntities = __TS__New(Map)
    }
}
function ____exports.init(self, mod)
    saveDataManager(nil, "postGridEntityCallback", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_UPDATE, postUpdate)
    mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, postNewRoom)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postLaserInitLate"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____main = require("lua_modules.isaacscript-common.dist.features.saveDataManager.main")
local saveDataManager = ____main.saveDataManager
local postLaserInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postLaserInitLate")
local v, hasSubscriptions, postLaserUpdate
function hasSubscriptions(self)
    return postLaserInitLate:hasSubscriptions()
end
function postLaserUpdate(self, laser)
    if not hasSubscriptions(nil) then
        return
    end
    local index = GetPtrHash(laser)
    if not v.room.firedSet:has(index) then
        v.room.firedSet:add(index)
        postLaserInitLate:fire(laser)
    end
end
v = {
    room = {
        firedSet = __TS__New(Set)
    }
}
function ____exports.init(self, mod)
    saveDataManager(nil, "postLaserInitLate", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_LASER_UPDATE, postLaserUpdate)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postPickupCollect"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____main = require("lua_modules.isaacscript-common.dist.features.saveDataManager.main")
local saveDataManager = ____main.saveDataManager
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getClosestPlayer = ____player.getClosestPlayer
local postPickupCollect = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPickupCollect")
local v, hasSubscriptions, postPickupRender
function hasSubscriptions(self)
    return postPickupCollect:hasSubscriptions()
end
function postPickupRender(self, pickup)
    if not hasSubscriptions(nil) then
        return
    end
    local sprite = pickup:GetSprite()
    local animation = sprite:GetAnimation()
    if animation ~= "Collect" then
        return
    end
    local index = GetPtrHash(pickup)
    if not v.room.firedSet:has(index) then
        v.room.firedSet:add(index)
        local player = getClosestPlayer(nil, pickup.Position)
        postPickupCollect:fire(pickup, player)
    end
end
v = {
    room = {
        firedSet = __TS__New(Set)
    }
}
function ____exports.init(self, mod)
    saveDataManager(nil, "postPickupCollect", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_PICKUP_RENDER, postPickupRender)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postPickupInitLate"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____main = require("lua_modules.isaacscript-common.dist.features.saveDataManager.main")
local saveDataManager = ____main.saveDataManager
local postPickupInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPickupInitLate")
local v, hasSubscriptions, postPickupUpdate
function hasSubscriptions(self)
    return postPickupInitLate:hasSubscriptions()
end
function postPickupUpdate(self, pickup)
    if not hasSubscriptions(nil) then
        return
    end
    local index = GetPtrHash(pickup)
    if not v.room.firedSet:has(index) then
        v.room.firedSet:add(index)
        postPickupInitLate:fire(pickup)
    end
end
v = {
    room = {
        firedSet = __TS__New(Set)
    }
}
function ____exports.init(self, mod)
    saveDataManager(nil, "postPickupInitLate", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_PICKUP_UPDATE, postPickupUpdate)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postPlayerChangeHealth"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____main = require("lua_modules.isaacscript-common.dist.features.saveDataManager.main")
local saveDataManager = ____main.saveDataManager
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayerIndex = ____player.getPlayerIndex
local ____util = require("lua_modules.isaacscript-common.dist.functions.util")
local ensureAllCases = ____util.ensureAllCases
local getEnumValues = ____util.getEnumValues
local ____HealthType = require("lua_modules.isaacscript-common.dist.types.HealthType")
local HealthType = ____HealthType.default
local ____ModCallbacksCustom = require("lua_modules.isaacscript-common.dist.types.ModCallbacksCustom")
local ModCallbacksCustom = ____ModCallbacksCustom.default
local postPlayerChangeHealth = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerChangeHealth")
local v, hasSubscriptions, postPlayerUpdateReordered, getCurrentHealthValue
function hasSubscriptions(self)
    return postPlayerChangeHealth:hasSubscriptions()
end
function postPlayerUpdateReordered(self, player)
    if not hasSubscriptions(nil) then
        return
    end
    local playerIndex = getPlayerIndex(nil, player)
    local storedHealth = v.run.healthMap:get(playerIndex)
    if storedHealth == nil then
        storedHealth = __TS__New(Map)
    end
    local healthTypes = getEnumValues(nil, HealthType)
    for ____, healthType in ipairs(healthTypes) do
        local storedHealthValue = storedHealth:get(healthType)
        local currentHealthValue = getCurrentHealthValue(nil, player, healthType)
        if (storedHealthValue ~= nil) and (storedHealthValue ~= currentHealthValue) then
            local amount = currentHealthValue - storedHealthValue
            postPlayerChangeHealth:fire(player, healthType, amount)
        end
    end
end
function getCurrentHealthValue(self, player, healthType)
    repeat
        local ____switch10 = healthType
        local ____cond10 = ____switch10 == HealthType.RED
        if ____cond10 then
            do
                return player:GetHearts()
            end
        end
        ____cond10 = ____cond10 or (____switch10 == HealthType.SOUL)
        if ____cond10 then
            do
                return player:GetSoulHearts()
            end
        end
        ____cond10 = ____cond10 or (____switch10 == HealthType.BLACK)
        if ____cond10 then
            do
                return player:GetBlackHearts()
            end
        end
        ____cond10 = ____cond10 or (____switch10 == HealthType.BONE)
        if ____cond10 then
            do
                return player:GetBoneHearts()
            end
        end
        ____cond10 = ____cond10 or (____switch10 == HealthType.GOLDEN)
        if ____cond10 then
            do
                return player:GetGoldenHearts()
            end
        end
        ____cond10 = ____cond10 or (____switch10 == HealthType.ETERNAL)
        if ____cond10 then
            do
                return player:GetEternalHearts()
            end
        end
        ____cond10 = ____cond10 or (____switch10 == HealthType.MAX_HEARTS)
        if ____cond10 then
            do
                return player:GetMaxHearts()
            end
        end
        do
            do
                ensureAllCases(nil, healthType)
                return 0
            end
        end
    until true
end
v = {
    run = {
        healthMap = __TS__New(Map)
    }
}
function ____exports.init(self, mod)
    saveDataManager(nil, "postPlayerChangeHealthCallback", v, hasSubscriptions)
    mod:AddCallbackCustom(ModCallbacksCustom.MC_POST_PLAYER_UPDATE_REORDERED, postPlayerUpdateReordered)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postPlayerChangeType"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____main = require("lua_modules.isaacscript-common.dist.features.saveDataManager.main")
local saveDataManager = ____main.saveDataManager
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayerIndex = ____player.getPlayerIndex
local ____ModCallbacksCustom = require("lua_modules.isaacscript-common.dist.types.ModCallbacksCustom")
local ModCallbacksCustom = ____ModCallbacksCustom.default
local postPlayerChangeType = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerChangeType")
local v, hasSubscriptions, postPlayerUpdateReorderedPlayer
function hasSubscriptions(self)
    return postPlayerChangeType:hasSubscriptions()
end
function postPlayerUpdateReorderedPlayer(self, player)
    if not hasSubscriptions(nil) then
        return
    end
    local character = player:GetPlayerType()
    local playerIndex = getPlayerIndex(nil, player)
    local storedCharacter = v.run.characterMap:get(playerIndex)
    if storedCharacter == nil then
        v.run.characterMap:set(playerIndex, character)
        return
    end
    if character ~= storedCharacter then
        v.run.characterMap:set(playerIndex, character)
        postPlayerChangeType:fire(player)
    end
end
v = {
    run = {
        characterMap = __TS__New(Map)
    }
}
function ____exports.init(self, mod)
    saveDataManager(nil, "postPlayerChangeTypeCallback", v, hasSubscriptions)
    mod:AddCallbackCustom(ModCallbacksCustom.MC_POST_PLAYER_UPDATE_REORDERED, postPlayerUpdateReorderedPlayer, 0)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postPlayerFatalDamage"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayerNumAllHearts = ____player.getPlayerNumAllHearts
local hasLostCurse = ____player.hasLostCurse
local ____revive = require("lua_modules.isaacscript-common.dist.functions.revive")
local willPlayerRevive = ____revive.willPlayerRevive
local postPlayerFatalDamage = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerFatalDamage")
local hasSubscriptions, entityTakeDmgPlayer, damageIsFatal
function hasSubscriptions(self)
    return postPlayerFatalDamage:hasSubscriptions()
end
function entityTakeDmgPlayer(self, tookDamage, damageAmount, _damageFlags, _damageSource, _damageCountdownFrames)
    if not hasSubscriptions(nil) then
        return nil
    end
    local player = tookDamage:ToPlayer()
    if player == nil then
        return nil
    end
    if willPlayerRevive(nil, player) then
        return nil
    end
    if (not hasLostCurse(nil, player)) and (not damageIsFatal(nil, player, damageAmount)) then
        return nil
    end
    local shouldSustainDeath = postPlayerFatalDamage:fire(player)
    if shouldSustainDeath ~= nil then
        return shouldSustainDeath
    end
    return nil
end
function damageIsFatal(self, player, damageAmount)
    local playerNumAllHearts = getPlayerNumAllHearts(nil, player)
    if damageAmount < playerNumAllHearts then
        return false
    end
    local hearts = player:GetHearts()
    local eternalHearts = player:GetEternalHearts()
    local soulHearts = player:GetSoulHearts()
    local boneHearts = player:GetBoneHearts()
    if (((((hearts > 0) and (soulHearts > 0)) or ((hearts > 0) and (boneHearts > 0))) or ((soulHearts > 0) and (boneHearts > 0))) or ((soulHearts > 0) and (eternalHearts > 0))) or (boneHearts >= 2) then
        return false
    end
    return true
end
function ____exports.init(self, mod)
    mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, entityTakeDmgPlayer, EntityType.ENTITY_PLAYER)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postPlayerInitLate"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____main = require("lua_modules.isaacscript-common.dist.features.saveDataManager.main")
local saveDataManager = ____main.saveDataManager
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayerIndex = ____player.getPlayerIndex
local postPlayerInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerInitLate")
local v, hasSubscriptions, postPlayerUpdate
function hasSubscriptions(self)
    return postPlayerInitLate:hasSubscriptions()
end
function postPlayerUpdate(self, player)
    if not hasSubscriptions(nil) then
        return
    end
    local playerIndex = getPlayerIndex(nil, player)
    if not v.run.firedSet:has(playerIndex) then
        v.run.firedSet:add(playerIndex)
        postPlayerInitLate:fire(player)
    end
end
v = {
    run = {
        firedSet = __TS__New(Set)
    }
}
function ____exports.init(self, mod)
    saveDataManager(nil, "postPlayerInitLate", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, postPlayerUpdate)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postPlayerReordered"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____main = require("lua_modules.isaacscript-common.dist.features.saveDataManager.main")
local saveDataManager = ____main.saveDataManager
local ____array = require("lua_modules.isaacscript-common.dist.functions.array")
local arrayEmpty = ____array.arrayEmpty
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayerFromIndex = ____player.getPlayerFromIndex
local getPlayerIndex = ____player.getPlayerIndex
local postPlayerInitReordered = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerInitReordered")
local postPlayerRenderReordered = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerRenderReordered")
local postPlayerUpdateReordered = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerUpdateReordered")
local v, hasSubscriptions, postPlayerInit, postPlayerUpdate, postPlayerRender, postGameStarted, dequeue
function hasSubscriptions(self)
    return (postPlayerInitReordered:hasSubscriptions() or postPlayerUpdateReordered:hasSubscriptions()) or postPlayerRenderReordered:hasSubscriptions()
end
function postPlayerInit(self, player)
    if not hasSubscriptions(nil) then
        return
    end
    if v.run.postGameStartedFiredOnThisRun then
        postPlayerInitReordered:fire(player)
    else
        local playerIndex = getPlayerIndex(nil, player)
        __TS__ArrayPush(v.run.postPlayerInitQueue, playerIndex)
    end
end
function postPlayerUpdate(self, player)
    if not hasSubscriptions(nil) then
        return
    end
    if v.run.postGameStartedFiredOnThisRun then
        postPlayerUpdateReordered:fire(player)
    else
        local playerIndex = getPlayerIndex(nil, player)
        __TS__ArrayPush(v.run.postPlayerUpdateQueue, playerIndex)
    end
end
function postPlayerRender(self, player)
    if not hasSubscriptions(nil) then
        return
    end
    if v.run.postGameStartedFiredOnThisRun then
        postPlayerRenderReordered:fire(player)
    else
        local playerIndex = getPlayerIndex(nil, player)
        __TS__ArrayPush(v.run.postPlayerRenderQueue, playerIndex)
    end
end
function postGameStarted(self)
    if not hasSubscriptions(nil) then
        return
    end
    v.run.postGameStartedFiredOnThisRun = true
    dequeue(nil, v.run.postPlayerInitQueue, postPlayerInitReordered.fire)
    dequeue(nil, v.run.postPlayerUpdateQueue, postPlayerUpdateReordered.fire)
    dequeue(nil, v.run.postPlayerRenderQueue, postPlayerRenderReordered.fire)
end
function dequeue(self, playerIndexes, fireFunction)
    for ____, playerIndex in ipairs(playerIndexes) do
        do
            local player = getPlayerFromIndex(nil, playerIndex)
            if player == nil then
                goto __continue19
            end
            fireFunction(nil, player)
        end
        ::__continue19::
    end
    arrayEmpty(nil, playerIndexes)
end
v = {run = {postGameStartedFiredOnThisRun = false, postPlayerInitQueue = {}, postPlayerUpdateQueue = {}, postPlayerRenderQueue = {}}}
function ____exports.init(self, mod)
    saveDataManager(nil, "postPlayerReordered", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, postPlayerInit)
    mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, postPlayerUpdate)
    mod:AddCallback(ModCallbacks.MC_POST_PLAYER_RENDER, postPlayerRender)
    mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, postGameStarted)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postPurchase"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____main = require("lua_modules.isaacscript-common.dist.features.saveDataManager.main")
local saveDataManager = ____main.saveDataManager
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayerIndex = ____player.getPlayerIndex
local getPlayers = ____player.getPlayers
local postPurchase = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPurchase")
local v, hasSubscriptions, postUpdate, checkPickupsPurchased, storePickupsInMap, storePlayersInMap, pickupIndexExists
function hasSubscriptions(self)
    return postPurchase:hasSubscriptions()
end
function postUpdate(self)
    if not hasSubscriptions(nil) then
        return
    end
    local pickups = Isaac.FindByType(EntityType.ENTITY_PICKUP)
    local players = getPlayers(nil)
    checkPickupsPurchased(nil, pickups, players)
    storePickupsInMap(nil, pickups)
    storePlayersInMap(nil, players)
end
function checkPickupsPurchased(self, pickups, players)
    for ____, ____value in __TS__Iterator(
        v.room.pickupMap:entries()
    ) do
        local index
        index = ____value[1]
        local pickupDescription
        pickupDescription = ____value[2]
        do
            if pickupIndexExists(nil, index, pickups) then
                goto __continue7
            end
            v.room.pickupMap:delete(index)
            for ____, player in ipairs(players) do
                do
                    local playerHoldingItem = player:IsHoldingItem()
                    local playerIndex = getPlayerIndex(nil, player)
                    local playerHoldingItemLastFrame = v.room.playerHoldingItemLastFrameMap:get(playerIndex)
                    if playerHoldingItemLastFrame == nil then
                        goto __continue9
                    end
                    if (not playerHoldingItemLastFrame) and playerHoldingItem then
                        postPurchase:fire(player, pickupDescription.variant, pickupDescription.subtype, pickupDescription.price)
                        break
                    end
                end
                ::__continue9::
            end
        end
        ::__continue7::
    end
end
function storePickupsInMap(self, pickups)
    for ____, entity in ipairs(pickups) do
        do
            local pickup = entity:ToPickup()
            if (pickup == nil) or (pickup.Price == 0) then
                goto __continue13
            end
            v.room.pickupMap:set(pickup.Index, {variant = pickup.Variant, subtype = pickup.SubType, price = pickup.Price})
        end
        ::__continue13::
    end
end
function storePlayersInMap(self, players)
    for ____, player in ipairs(players) do
        local playerIndex = getPlayerIndex(nil, player)
        local holdingItem = player:IsHoldingItem()
        v.room.playerHoldingItemLastFrameMap:set(playerIndex, holdingItem)
    end
end
function pickupIndexExists(self, index, pickups)
    for ____, entity in ipairs(pickups) do
        if (entity.Index == index) and entity:Exists() then
            return true
        end
    end
    return false
end
v = {
    room = {
        pickupMap = __TS__New(Map),
        playerHoldingItemLastFrameMap = __TS__New(Map)
    }
}
function ____exports.init(self, mod)
    saveDataManager(nil, "postPurchaseCallback", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_UPDATE, postUpdate)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postSacrifice"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____main = require("lua_modules.isaacscript-common.dist.features.saveDataManager.main")
local saveDataManager = ____main.saveDataManager
local ____flag = require("lua_modules.isaacscript-common.dist.functions.flag")
local hasFlag = ____flag.hasFlag
local postSacrifice = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSacrifice")
local v, hasSubscriptions, entityTakeDmgPlayer
function hasSubscriptions(self)
    return postSacrifice:hasSubscriptions()
end
function entityTakeDmgPlayer(self, tookDamage, _damageAmount, damageFlags, _damageSource, _damageCountdownFrames)
    if not hasSubscriptions(nil) then
        return
    end
    local player = tookDamage:ToPlayer()
    if player == nil then
        return
    end
    local game = Game()
    local room = game:GetRoom()
    local roomType = room:GetType()
    local isSpikeDamage = hasFlag(nil, damageFlags, DamageFlag.DAMAGE_SPIKES)
    if (roomType == RoomType.ROOM_SACRIFICE) and isSpikeDamage then
        local ____obj, ____index = v.level, "numSacrifices"
        ____obj[____index] = ____obj[____index] + 1
        postSacrifice:fire(player, v.level.numSacrifices)
    end
end
v = {level = {numSacrifices = 0}}
function ____exports.init(self, mod)
    saveDataManager(nil, "postSacrificeCallback", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, entityTakeDmgPlayer, EntityType.ENTITY_PLAYER)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postSlot"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____main = require("lua_modules.isaacscript-common.dist.features.saveDataManager.main")
local saveDataManager = ____main.saveDataManager
local postSlotInit = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSlotInit")
local postSlotUpdate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSlotUpdate")
local v, hasSubscriptions, postUpdate, postNewRoom, checkNewEntity
function hasSubscriptions(self)
    return postSlotInit:hasSubscriptions() or postSlotUpdate:hasSubscriptions()
end
function postUpdate(self)
    if not hasSubscriptions(nil) then
        return
    end
    local slots = Isaac.FindByType(EntityType.ENTITY_SLOT)
    for ____, slot in ipairs(slots) do
        checkNewEntity(nil, slot)
        postSlotUpdate:fire(slot)
    end
end
function postNewRoom(self)
    if not hasSubscriptions(nil) then
        return
    end
    local slots = Isaac.FindByType(EntityType.ENTITY_SLOT)
    for ____, slot in ipairs(slots) do
        checkNewEntity(nil, slot)
    end
end
function checkNewEntity(self, slot)
    local ptrHash = GetPtrHash(slot)
    if not v.room.initializedSlots:has(ptrHash) then
        v.room.initializedSlots:add(ptrHash)
        postSlotInit:fire(slot)
    end
end
v = {
    room = {
        initializedSlots = __TS__New(Set)
    }
}
function ____exports.init(self, mod)
    saveDataManager(nil, "postSlotCallback", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_UPDATE, postUpdate)
    mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, postNewRoom)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postSlotRender"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local postSlotRender = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSlotRender")
local hasSubscriptions, postRender
function hasSubscriptions(self)
    return postSlotRender:hasSubscriptions()
end
function postRender(self)
    if not hasSubscriptions(nil) then
        return
    end
    local slots = Isaac.FindByType(EntityType.ENTITY_SLOT)
    for ____, slot in ipairs(slots) do
        postSlotRender:fire(slot)
    end
end
function ____exports.init(self, mod)
    mod:AddCallback(ModCallbacks.MC_POST_RENDER, postRender)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postTransformation"] = function(...) --[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____main = require("lua_modules.isaacscript-common.dist.features.saveDataManager.main")
local saveDataManager = ____main.saveDataManager
local ____array = require("lua_modules.isaacscript-common.dist.functions.array")
local initArray = ____array.initArray
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayerIndex = ____player.getPlayerIndex
local ____ModCallbacksCustom = require("lua_modules.isaacscript-common.dist.types.ModCallbacksCustom")
local ModCallbacksCustom = ____ModCallbacksCustom.default
local postTransformation = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postTransformation")
local v, hasSubscriptions, postPlayerUpdateReorderedPlayer
function hasSubscriptions(self)
    return postTransformation:hasSubscriptions()
end
function postPlayerUpdateReorderedPlayer(self, player)
    if not hasSubscriptions(nil) then
        return
    end
    local index = getPlayerIndex(nil, player)
    local transformations = v.run.transformations:get(index)
    if transformations == nil then
        transformations = initArray(nil, false, PlayerForm.NUM_PLAYER_FORMS - 1)
        v.run.transformations:set(index, transformations)
    end
    do
        local playerForm = 0
        while playerForm < PlayerForm.NUM_PLAYER_FORMS do
            local hasForm = player:HasPlayerForm(playerForm)
            local storedForm = transformations[playerForm + 1]
            if hasForm ~= storedForm then
                transformations[playerForm + 1] = hasForm
                postTransformation:fire(player, playerForm, hasForm)
            end
            playerForm = playerForm + 1
        end
    end
end
v = {
    run = {
        transformations = __TS__New(Map)
    }
}
function ____exports.init(self, mod)
    saveDataManager(nil, "postTransformationCallback", v, hasSubscriptions)
    mod:AddCallbackCustom(ModCallbacksCustom.MC_POST_PLAYER_UPDATE_REORDERED, postPlayerUpdateReorderedPlayer, 0)
end
return ____exports
 end,
}
return require("bundleEntry", ...)

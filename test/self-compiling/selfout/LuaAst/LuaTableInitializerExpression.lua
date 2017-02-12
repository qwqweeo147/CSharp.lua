-- Generated by CSharp.lua Compiler 1.0.0.0
local System = System
local CSharpLuaLuaAst
System.usingDeclare(function (global) 
    CSharpLuaLuaAst = CSharpLua.LuaAst
end)
System.namespace("CSharpLua.LuaAst", function (namespace) 
    namespace.class("LuaTableInitializerExpression", function (namespace) 
        local getOpenBraceToken, getCloseBraceToken, Render, Empty, __staticCtor__, __ctor__
        getOpenBraceToken = function (this) 
            return "{" --[[Tokens.OpenBrace]]
        end
        getCloseBraceToken = function (this) 
            return "}" --[[Tokens.CloseBrace]]
        end
        Render = function (this, renderer) 
            renderer:Render27(this)
        end
        __staticCtor__ = function (this) 
            Empty = CSharpLuaLuaAst.LuaTableInitializerExpression()
            this.Empty = Empty
        end
        __ctor__ = function (this) 
            this.Items = CSharpLuaLuaAst.LuaSyntaxList_1(CSharpLuaLuaAst.LuaTableItemSyntax)()
        end
        return {
            __inherits__ = function () 
                return {
                    CSharpLuaLuaAst.LuaExpressionSyntax
                }
            end, 
            getOpenBraceToken = getOpenBraceToken, 
            getCloseBraceToken = getCloseBraceToken, 
            Render = Render, 
            __staticCtor__ = __staticCtor__, 
            __ctor__ = __ctor__
        }
    end)
    namespace.class("LuaTableItemSyntax", function (namespace) 
        return {
            __inherits__ = function () 
                return {
                    CSharpLuaLuaAst.LuaSyntaxNode
                }
            end
        }
    end)
    namespace.class("LuaSingleTableItemSyntax", function (namespace) 
        local Render, __ctor__
        Render = function (this, renderer) 
            renderer:Render28(this)
        end
        __ctor__ = function (this, expression) 
            CSharpLuaLuaAst.LuaTableItemSyntax.__ctor__(this)
            if expression == nil then
                System.throw(System.ArgumentNullException("expression"))
            end
            this.Expression = expression
        end
        return {
            __inherits__ = function () 
                return {
                    CSharpLuaLuaAst.LuaTableItemSyntax
                }
            end, 
            Render = Render, 
            __ctor__ = __ctor__
        }
    end)
    namespace.class("LuaTableKeySyntax", function (namespace) 
        return {
            __inherits__ = function () 
                return {
                    CSharpLuaLuaAst.LuaSyntaxNode
                }
            end
        }
    end)
    namespace.class("LuaTableExpressionKeySyntax", function (namespace) 
        local getOpenBracketToken, getCloseBracketToken, Render, __ctor__
        getOpenBracketToken = function (this) 
            return "[" --[[Tokens.OpenBracket]]
        end
        getCloseBracketToken = function (this) 
            return "]" --[[Tokens.CloseBracket]]
        end
        Render = function (this, renderer) 
            renderer:Render30(this)
        end
        __ctor__ = function (this, expression) 
            CSharpLuaLuaAst.LuaTableKeySyntax.__ctor__(this)
            this.Expression = expression
        end
        return {
            __inherits__ = function () 
                return {
                    CSharpLuaLuaAst.LuaTableKeySyntax
                }
            end, 
            getOpenBracketToken = getOpenBracketToken, 
            getCloseBracketToken = getCloseBracketToken, 
            Render = Render, 
            __ctor__ = __ctor__
        }
    end)
    namespace.class("LuaTableLiteralKeySyntax", function (namespace) 
        local Render, __ctor__
        Render = function (this, renderer) 
            renderer:Render31(this)
        end
        __ctor__ = function (this, identifier) 
            CSharpLuaLuaAst.LuaTableKeySyntax.__ctor__(this)
            this.Identifier = identifier
        end
        return {
            __inherits__ = function () 
                return {
                    CSharpLuaLuaAst.LuaTableKeySyntax
                }
            end, 
            Render = Render, 
            __ctor__ = __ctor__
        }
    end)
    namespace.class("LuaKeyValueTableItemSyntax", function (namespace) 
        local getOperatorToken, Render, __ctor__
        getOperatorToken = function (this) 
            return "=" --[[Tokens.Equals]]
        end
        Render = function (this, renderer) 
            renderer:Render29(this)
        end
        __ctor__ = function (this, key, value) 
            CSharpLuaLuaAst.LuaTableItemSyntax.__ctor__(this)
            this.Key = key
            this.Value = value
        end
        return {
            __inherits__ = function () 
                return {
                    CSharpLuaLuaAst.LuaTableItemSyntax
                }
            end, 
            getOperatorToken = getOperatorToken, 
            Render = Render, 
            __ctor__ = __ctor__
        }
    end)
    namespace.class("LuaTableIndexAccessExpressionSyntax", function (namespace) 
        local getOpenBracketToken, getCloseBracketToken, Render, __ctor__
        getOpenBracketToken = function (this) 
            return "[" --[[Tokens.OpenBracket]]
        end
        getCloseBracketToken = function (this) 
            return "]" --[[Tokens.CloseBracket]]
        end
        Render = function (this, renderer) 
            renderer:Render32(this)
        end
        __ctor__ = function (this, expression, index) 
            CSharpLuaLuaAst.LuaExpressionSyntax.__ctor__[1](this)
            if expression == nil then
                System.throw(System.ArgumentNullException("expression"))
            end
            if index == nil then
                System.throw(System.ArgumentNullException("index"))
            end
            this.Expression = expression
            this.Index = index
        end
        return {
            __inherits__ = function () 
                return {
                    CSharpLuaLuaAst.LuaExpressionSyntax
                }
            end, 
            getOpenBracketToken = getOpenBracketToken, 
            getCloseBracketToken = getCloseBracketToken, 
            Render = Render, 
            __ctor__ = __ctor__
        }
    end)
end)

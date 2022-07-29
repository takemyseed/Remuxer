// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.
// See the LICENSE file in the project root for more information.

using System;

namespace System.Runtime.InteropServices
{
    /// <summary>
    /// Kind of accessor that the method represents. Must be kept in sync with il2il\src\Microsoft.Build.ILTasks\McgAccessorTransform.cs and
    /// name expectations in MCG
    /// </summary>
    public enum McgAccessorKind
    {
        PropertyGet,
        PropertySet,
        EventAdd,
        EventRemove,
    }

    /// <summary>
    ///     The McgAccessorAttribute is generated by MCG to indicate that a particular
    ///     property's setter shouldn't be named set_Foo, but put_Foo instead. Some .winmd
    ///     properties have setters named set_Foo, while others are named put_Foo, so we need
    ///     this attribute to mark the putters in MCG and rename them in a subsequent transform
    /// </summary>
    [AttributeUsage(AttributeTargets.Method, AllowMultiple = false, Inherited = false)]
    public sealed class McgAccessorAttribute : Attribute
    {
        public McgAccessorAttribute(McgAccessorKind accessorKind, string name)
        {
        }
    }
}
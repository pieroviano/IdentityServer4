﻿using System.Text.Json;

namespace IdentityServer.IntegrationTests.Extensions;

public static partial class JsonExtensions
{
    public static T ToObject<T>(this JsonElement element)
    {
        var json = element.GetRawText();
        return JsonSerializer.Deserialize<T>(json);
    }
    public static T ToObject<T>(this JsonDocument document)
    {
        var json = document.RootElement.GetRawText();
        return JsonSerializer.Deserialize<T>(json);
    }
}
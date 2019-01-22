<#include "security.ftl">
<#import "login.ftl" as l>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/"><img src="https://img.bevedo.ru/etc/media/266x266/product/1/015/1/01107365/1.jpg" width="60" height="60"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">

            <li class="nav-item">
                <a class="nav-link" href="/main">Recipes</a>
            </li>
            <#if user??>
                <li class="nav-item">
                    <a class="nav-link" href="/user-messages/${currentUserId}">My recipes</a>
                </li>
            </#if>
            <#if isAdmin>
                <li class="nav-item">
                    <a class="nav-link" href="/user">User list</a>
                </li>
            </#if>
            <#if user??>
                <li class="nav-item">
                    <a class="nav-link" href="/user/profile">Profile</a>
                </li>
            </#if>
        </ul>

        <div class="form-row mr-5">
            <div class="form-group col-md-10" >
                <form method="get" action="/main">
                    <div style="display: inline-flex">
                        <input type="text" name="filter" class="form-control" value="${filter?ifExists}" placeholder="Search by tag">
                        <button type="submit" class="btn btn-primary ml-1">Search</button>
                    </div>
                </form>
            </div>
        </div>

        <div class="navbar-text mr-3"><#if user??>${name}<#else>Please login</#if></div>
        <@l.logout />
    </div>
</nav>
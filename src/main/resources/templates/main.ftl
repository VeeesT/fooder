<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">

<@c.page>

    <#if user??>
        <a class="btn btn-primary" style="width: 100%;" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
            Add new recipe
        </a>
    </#if>
    <#include "parts/messageEdit.ftl" />

    <#include "parts/messageList.ftl" />
</@c.page>
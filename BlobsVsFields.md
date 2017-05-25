


> Written with [StackEdit](https://stackedit.io/).

# expeDITA content renditions and delivery

## Source Types
The web is a collection of resources. All interactions on the web involve queries, either for a collection (as in a list of search hits) or a uniquely named resource (something you would bookmark to return to later). In expeDITA parlance, query data prior to being processed can be characterized:
### "asCollection"
A collection is a list of source items that match a query for subsequent refined selection by a user. Collections are usually maintained internally as simple arrays of data. But they may be externalized in a source format (as in bookmark files) or manifests for assembling into zip files or managed resources in their own right.
### "asResource"
A resource is a uniquely requested source item. In most managed content applications, what is viewed in the browser is NOT exactly what is managed as source. Models for managed source may have either a single database that hosts both content management and publishing roles (as in WordPress blogs), or one database for managed content that is published to a separate database for content delivery.

We'll separate the concerns by referring to *managed source* as "source" and to the *rendered view* as "view."

> **Don's note:** I am uncertain whether these distinctions are directly meaningful as design attributes; perhaps that discussion is just about defining the assumptions we depend on henceforth.

## Renditions and Views
Most resource and collection datasets as represented internally in a CMS are formatted in a way  that represents the structure and meaning of the subsets of the resource. This open definition includes all forms of **markup** (parts of a resource are delimited by declarative codes) or **markdown** (parts of the resource are implicitly identified by layout and other visually distinctive cues, like typewriter formatting conventions). Upon request, these formats are *rendered* into a more suitable format for the requesting application, be it a browser or an app.

In some cases, a resource's stored format is the same as the published format--most commonly HTML. But resources stored in either markup or markdown formats usually need to be *rendered* into the published format or into a format that is accessible by remote rendering applications (such as apps or *headless* content publishing systems).

Common storage formats include XML, JSON, HTML, Markdown, and even richtext word processor formats. For interactions via a browser, the returned rendition is nearly always an HTML view, but another common case is XML or JSON delivered to the browser where JavaScript processing performs an in-browser rendition into a view.

For simply content requests, the rendition is the view. That is, a browser's resource request results in receiving a ready to view HTML document. More sophisticated publishing applications like blogs generate most of the structure of the view in which the rendition of the request is embedded in part of that view (with other dynamic content allocated to the footer or sidebar).

The expeDITA publishing pipeline is designed to support any interpretation of this controller specification: 

> 1. A **query** results in **data**, whether for a requested resource or a collection of links to resources (standard REST architecture).
> 
> 1. That **data** is then formatted (or rendered) into a **delivery rendition** for transmitting to the requester based on some logic that determines the **view**:
>
>	* In simple cases (like fully created web pages), the data *is* the delivery rendition (and therefore already represents the **pre-rendered view**), and is returned directly to the browser.
>
>	* If the request is via a browser, the delivery rendition step may include **dynamic personalization** (such as content selection/filtering, or keyword highlighting) before it is then instanced in a **theme-specific view**. This composite/branded view is then sent to the browser.
> 
>	* If the request is via API, the requesting application applies its own **app-specific view** to the delivered rendition (which in this case is often a data-oriented format like JSON).

A controller queries the data, creates the desired rendition, and (in the case of content for a browser) sets up the layout for the particular view.

The rendering step has two options:

"asBlob"
:	For data-paging or data-delivering applications, the rendered format directly represents the source format. For example, an editor view nearly always acts on the literal source. For API use, portions of the rendered format (such as JSON substructures) may be further selected on.

"asFields"
:	For publishing applications, the HTML-based title, description, and body (along with internal publishing metadata) are separately available for insertion into an inner template (such as for a blog or article layout). This mode resembles a typical database query in a blogging platform.

Most data

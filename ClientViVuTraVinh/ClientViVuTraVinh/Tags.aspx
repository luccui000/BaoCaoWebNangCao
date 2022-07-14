<%@ Page Title="" Language="C#" MasterPageFile="~/App.Master" AutoEventWireup="true" CodeBehind="Tags.aspx.cs" Inherits="ClientViVuTraVinh.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <section class="breadcrumb-outer text-center bg-orange">
        <div class="container">
            <div class="breadcrumb-content">
                <h2>Tag Lists</h2>
                <nav aria-label="breadcrumb">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Page</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Tag Lists</li>
                    </ul>
                </nav>
            </div>
        </div>
    </section>
    <section id="mt_blog" class="nomargin">
        <div class="container">
            <div class="blog_post_sec blog_post_inner">
                <div class="row">

                    <div class="col-md-4 col-sm-12 mar-bottom-30">                            
                        <div class="blog-post_wrapper front-wrapper bg-gray">
                            <div class="post-content">
                                <h2 class="entry-title">
                                    <a href="tag-detail.html">Architecture</a>
                                </h2>
                                <p>Enean malesuada imperdiet orci nec euismod. Vivamus posuere sapien ac congue posuere.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-12 mar-bottom-30">
                        <div class="blog-post_wrapper image-wrapper">
                            <div class="blog-post-image">
                                <img src="/Resources/images/blog-listing/blog_10.jpg" alt="image" class="img-responsive center-block post_img">
                            </div>
                            <div class="post-content">
                                <h2 class="entry-title white">
                                    <a href="tag-detail.html" class="white">Designer</a>
                                </h2>
                                <p class="white">Enean malesuada imperdiet orci nec euismod. Vivamus posuere sapien ac congue posuere.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-12 mar-bottom-30">
                        <div class="blog-post_wrapper image-wrapper blog-wrapper-list">
                            <div class="blog-post-image">
                                <img src="/Resources/images/blog-listing/blog_101.jpg" alt="image" class="img-responsive center-block post_img">
                            </div>

                            <div class="post-content">
                                <div class="post-date">
                                    <p><a href="#">15th August 2019</a></p>
                                </div>
                                <h2 class="entry-title">
                                    <a href="blog-details.html" class="">I Thought My Glasses Made Me Unattractive</a>
                                </h2>
                                
                                <div class="item-meta">
                                    <span>by</span>
                                    <a class="author-name" href="author.html">Admin Jackson</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-12 mar-bottom-30">                            
                        <div class="blog-post_wrapper front-wrapper bg-green">
                            <div class="post-content">
                                <h2 class="entry-title">
                                    <a href="tag-detail.html" class="white">Culture</a>
                                </h2>
                                <p class="white">Enean malesuada imperdiet orci nec euismod. Vivamus posuere sapien ac congue posuere.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 col-sm-12 mar-bottom-30">
                        <div class="blog-post_wrapper image-wrapper">
                            <div class="blog-post-image">
                                <img src="/Resources/images/blog-listing/blog_05.jpg" alt="image" class="img-responsive center-block post_img">
                            </div>
                            <div class="post-content">
                                <h2 class="entry-title">
                                    <a href="tag-detail.html" class="white">I'm passionate about food, the tradition of it, cooking it, sharing it</a>
                                </h2>
                                <p class="white">Enean malesuada imperdiet orci nec euismod. Vivamus posuere sapien ac congue posuere.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-12 mar-bottom-30">
                        <div class="blog-post_wrapper image-wrapper">
                            <div class="blog-post-image">
                                <img src="/Resources/images/blog-listing/blog_13.jpg" alt="image" class="img-responsive center-block post_img">
                            </div>
                            <div class="post-content">
                                <h2 class="entry-title white">
                                    <a href="tag-detail.html" class="white">Transportation</a>
                                </h2>
                                <p class="white">Enean malesuada imperdiet orci nec euismod. Vivamus posuere sapien ac congue posuere.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-12 mar-bottom-30">
                        <div class="blog-post_wrapper image-wrapper">
                            <div class="blog-post-image">
                                <img src="/Resources/images/blog-listing/blog_15.jpg" alt="image" class="img-responsive center-block post_img">
                            </div>
                            <div class="post-content">
                                <h2 class="entry-title">
                                    <a href="tag-details.html" class="white">Public</a>
                                </h2>
                                <p class="white">Enean malesuada imperdiet orci nec euismod. Vivamus posuere sapien ac congue posuere.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-xs-12">
                        <div class="blog-button text-center">
                            <button class="btn-blog">Load More <i class="fa fa-angle-double-right"></i></button>
                        </div>    
                    </div>
                    
                </div>    
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>

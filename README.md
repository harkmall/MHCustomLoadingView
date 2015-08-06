#MHCustomLoadingView

A simple loading indicator. Give it an image and it will display it spinning over the current view.

##Usage

    [[CustomLoadingHUD sharedInstance] showInView:<view> withImage:<image> andBackgroundColor:<backgroundColor>];
That will initialize a loading view and show it on the view you pass.

To stop it animating and remove it from the view use

	[[CustomLoadingHUD sharedInstance] stopAnimating];

And if you want to start it again use

	[[CustomLoadingHUD sharedInstance] startAnimatingInView:<view>];

##License
BSD License pretty much. PLZ don't steal it and call it your own, k thx. But feel free to make changes to make it better!

##Contact
Hit me up on twitter: [@softieeng](https://twitter.com/softieeng)
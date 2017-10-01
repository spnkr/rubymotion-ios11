class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'test-project'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    image_view = UIImageView.new
    image_view.sd_setImageWithURL(NSURL.URLWithString("https://avatars0.githubusercontent.com/u/288392?v=4&s=48"), completed:Proc.new { |image, error, cache_type, imageURL|
      image_view.image = image
    })

    true
  end
end

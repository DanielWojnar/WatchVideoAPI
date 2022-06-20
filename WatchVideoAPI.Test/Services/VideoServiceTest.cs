using NUnit.Framework;
using WatchVideoAPI.Models;
using WatchVideoAPI.Services;
using WatchVideoAPI.Services.Implementations;

namespace WatchVideoAPI.Test.Services;

public class VideoServiceTest : WatchVideoContextTestBase
{
    public IVideoService _videoService;

    [SetUp]
    public void Setup()
    {
        _videoService = new VideoService(_context);
    }

    [TestCaseSource(nameof(GetVideosAsyncShouldReturnCorrectVideos_Source))]
    public async Task GetVideosAsyncShouldReturnCorrectVideos(int page, string search, List<Video> expected)
    {
        var actual = await _videoService.GetVideosAsync(page, search);

        Assert.AreEqual(expected.Count, actual.Count);
        var i = 0;
        foreach(var video in actual)
        {
            AreVideosEqual(expected[i], video);
            i++;
        }
    }

    [Test]
    public async Task GetVideoAsyncShouldReturnCorrectVideo()
    {
        var expected = MockedVideo;
        
        var actual = await _videoService.GetVideoAsync(MockedVideoId);

        AreVideosEqual(expected, actual);
    }

    [Test]
    public async Task GetVideoAsyncShouldReturnNull()
    {
        var actual = await _videoService.GetVideoAsync(MockedInvalidVideoId);

        Assert.IsNull(actual);
    }

    private void AreVideosEqual(Video expected, Video actual)
    {
        Assert.AreEqual(expected.Id, actual.Id);
        Assert.AreEqual(expected.Title, actual.Title);
        Assert.AreEqual(expected.Description, actual.Description);
        Assert.AreEqual(expected.UploadDate, actual.UploadDate);
        Assert.AreEqual(expected.VideoSrc, actual.VideoSrc);
        Assert.AreEqual(expected.VideoThumbnail, actual.VideoThumbnail);
    }

    static IEnumerable<TestCaseData> GetVideosAsyncShouldReturnCorrectVideos_Source()
    {
        yield return new TestCaseData(0, "", WatchVideoContextTestInitializer.videos.ToList().GetRange(0, Constants.Pages.perPage + 1));
        yield return new TestCaseData(1, "", WatchVideoContextTestInitializer.videos.ToList().GetRange(Constants.Pages.perPage, 3));
        yield return new TestCaseData(0, "Big Buck Bunny", new List<Video> { WatchVideoContextTestInitializer.videos[0], WatchVideoContextTestInitializer.videos[2] });
    }

    public static int MockedVideoId = 3;
    public static int MockedInvalidVideoId = -1;
    public static Video MockedVideo = WatchVideoContextTestInitializer.videos[2];
}
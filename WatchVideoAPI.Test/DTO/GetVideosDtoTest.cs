using NUnit.Framework;
using WatchVideoAPI.DTO;

namespace WatchVideoAPI.Test.DTO;

public class GetVideosDtoTest 
{
    [Test]
    public async Task GetVideosDtoShouldHaveNextPageFalse()
    {
        var actual = new GetVideosDto(MockedVideoDtoSmall);

        Assert.IsFalse(actual.nextPage);
    }

    [Test]
    public async Task GetVideosDtoShouldHaveNextPageTrue()
    {
        var actual = new GetVideosDto(MockedVideoDtoBig);

        Assert.IsTrue(actual.nextPage);
    }

    [Test]
    public async Task GetVideosDtoShouldHaveLimitedList()
    {
        var actual = new GetVideosDto(MockedVideoDtoBig);

        Assert.AreEqual(actual.videos.Count, Constants.Pages.perPage);
    }

    public List<VideoDTO> MockedVideoDtoSmall = new List<VideoDTO>
    {
        new VideoDTO(),
        new VideoDTO(),
        new VideoDTO(),
        new VideoDTO(),
        new VideoDTO(),
    };

    public List<VideoDTO> MockedVideoDtoBig = new List<VideoDTO>
    {
        new VideoDTO(),
        new VideoDTO(),
        new VideoDTO(),
        new VideoDTO(),
        new VideoDTO(),
        new VideoDTO(),
        new VideoDTO(),
        new VideoDTO(),
        new VideoDTO(),
        new VideoDTO(),
        new VideoDTO(),
        new VideoDTO(),
        new VideoDTO(),
        new VideoDTO(),
        new VideoDTO(),
        new VideoDTO(),
        new VideoDTO(),
        new VideoDTO(),
        new VideoDTO(),
        new VideoDTO(),
        new VideoDTO()
    };

}